"""Tests for planning changes to existing tables."""

import dataclasses

import pytest

from datahubGetSchema.dialects import DIALECTS, dialectNamed
from datahubGetSchema.dialects.base import Dialect, ExistingColumn, ExistingTable
from datahubGetSchema.naming import TableNamer
from datahubGetSchema.schema import DataSet
from datahubGetSchema.sqlTypes import SqlType
from datahubGetSchema.tables import TableSpec, buildTableSpecs, createStatements
from datahubGetSchema.upgrade import planUpgrade, renderUpgradeScript

from .conftest import makeColumn

MYSQL = dialectNamed("mysql")
ORACLE = dialectNamed("oracle")


def specsFor(dialect: Dialect, dataSet: DataSet, namer: TableNamer | None = None) -> list[TableSpec]:
    """Return the main and staging table specs for one data set."""
    return buildTableSpecs([dataSet], dialect, namer or TableNamer(dialect))


def tablesAsCreated(dialect: Dialect, specs: list[TableSpec]) -> dict[str, ExistingTable]:
    """Describe the tables a database would hold right after running the generated statements."""
    tables = {}
    for spec in specs:
        key = spec.dataSet.primaryKey()
        keyNames = {column.name for column in key}
        table = ExistingTable(name=spec.name)
        for column in spec.dataSet.columns:
            columnName = dialect.columnName(column.name)
            table.columns[columnName.lower()] = ExistingColumn(
                name=columnName, sqlType=dialect.sqlType(column), isNullable=column.name not in keyNames
            )
        table.primaryKey = {dialect.columnName(name).lower() for name in keyNames}
        table.indexedColumns = {dialect.columnName(column.name).lower() for column in (*key[:1], *spec.indexColumns)}
        tables[spec.name.lower()] = table
    return tables


def asCreated(dialect: Dialect, dataSet: DataSet) -> dict[str, ExistingTable]:
    return tablesAsCreated(dialect, specsFor(dialect, dataSet))


def plan(dialect: Dialect, dataSet: DataSet, existing: dict[str, ExistingTable]):
    return planUpgrade(specsFor(dialect, dataSet), dialect, existing)


def withSchemeName(dataSet: DataSet, size: str) -> DataSet:
    """Return the Grade Schemes data set with a different documented length for SchemeName."""
    schemeName = makeColumn("SchemeName", "nvarchar", size)
    return dataclasses.replace(dataSet, columns=dataSet.columns[:2] + (schemeName,) + dataSet.columns[3:])


@pytest.mark.parametrize("dialect", DIALECTS.values(), ids=list(DIALECTS))
def test_tablesThatMatchNeedNothing(dialect, gradeSchemes):
    upgrade = plan(dialect, gradeSchemes, asCreated(dialect, gradeSchemes))
    assert (upgrade.statements, upgrade.notes) == ([], [])


@pytest.mark.parametrize("dialect", DIALECTS.values(), ids=list(DIALECTS))
def test_missingTablesAreCreatedWithTheirIndexes(dialect, gradeSchemes):
    main, staging = specsFor(dialect, gradeSchemes)
    upgrade = plan(dialect, gradeSchemes, {})
    assert upgrade.statements == createStatements(dialect, main) + createStatements(dialect, staging)
    assert len(upgrade.statements) == 3
    assert upgrade.notes == []


def test_missingColumnIsAdded(gradeSchemes):
    existing = asCreated(MYSQL, gradeSchemes)
    del existing["gradeschemes"].columns["deleteddate"]
    upgrade = plan(MYSQL, gradeSchemes, existing)
    assert upgrade.statements == ["ALTER TABLE `GradeSchemes` ADD COLUMN `DeletedDate` DATETIME(6)"]
    assert upgrade.notes == []


def test_stagingTableIsUpgradedLikeTheMainTable(gradeSchemes):
    existing = asCreated(MYSQL, gradeSchemes)
    del existing["gradeschemes_load"].columns["deleteddate"]
    upgrade = plan(MYSQL, gradeSchemes, existing)
    assert upgrade.statements == ["ALTER TABLE `GradeSchemes_LOAD` ADD COLUMN `DeletedDate` DATETIME(6)"]


def test_missingIndexIsCreated(gradeSchemes):
    existing = asCreated(MYSQL, gradeSchemes)
    existing["gradeschemes"].indexedColumns.discard("orgunitid")
    upgrade = plan(MYSQL, gradeSchemes, existing)
    assert upgrade.statements == ["CREATE INDEX `IX_GradeSchemes_OrgUnitId` ON `GradeSchemes` (`OrgUnitId`)"]
    assert upgrade.notes == []


def test_stagingTableNeedsNoForeignKeyIndex(gradeSchemes):
    existing = asCreated(MYSQL, gradeSchemes)
    assert "orgunitid" not in existing["gradeschemes_load"].indexedColumns
    assert plan(MYSQL, gradeSchemes, existing).statements == []


def test_missingForeignKeyColumnIsAddedAndThenIndexed(gradeSchemes):
    existing = asCreated(MYSQL, gradeSchemes)
    del existing["gradeschemes"].columns["orgunitid"]
    existing["gradeschemes"].indexedColumns.discard("orgunitid")
    assert plan(MYSQL, gradeSchemes, existing).statements == [
        "ALTER TABLE `GradeSchemes` ADD COLUMN `OrgUnitId` INT",
        "CREATE INDEX `IX_GradeSchemes_OrgUnitId` ON `GradeSchemes` (`OrgUnitId`)",
    ]


def test_columnThatIsTooShortIsWidened(gradeSchemes):
    existing = asCreated(MYSQL, gradeSchemes)
    del existing["gradeschemes_load"]
    upgrade = planUpgrade(specsFor(MYSQL, withSchemeName(gradeSchemes, "256"))[:1], MYSQL, existing)
    assert upgrade.statements == ["ALTER TABLE `GradeSchemes` MODIFY COLUMN `SchemeName` VARCHAR(256) NULL"]
    assert upgrade.notes == []


def test_columnThatIsWiderThanDocumentedIsLeftAlone(gradeSchemes):
    upgrade = plan(MYSQL, withSchemeName(gradeSchemes, "64"), asCreated(MYSQL, gradeSchemes))
    assert (upgrade.statements, upgrade.notes) == ([], [])


def test_columnOfADifferentKindIsReportedNotChanged(gradeSchemes):
    existing = asCreated(MYSQL, gradeSchemes)
    existing["gradeschemes"].columns["orgunitid"] = ExistingColumn(
        name="OrgUnitId", sqlType=SqlType(kind="string", native="varchar(20)", length=20), isNullable=True
    )
    upgrade = plan(MYSQL, gradeSchemes, existing)
    assert upgrade.statements == []
    assert upgrade.notes == [
        "GradeSchemes.OrgUnitId: the database has varchar(20) and the documentation calls for INT. "
        "Converting it could change stored values, so it was left alone."
    ]


def test_changeTheDatabaseCannotMakeInPlaceIsReported(gradeSchemes):
    existing = asCreated(ORACLE, gradeSchemes)
    del existing["grade_schemes_load"]
    upgrade = planUpgrade(specsFor(ORACLE, withSchemeName(gradeSchemes, "4000"))[:1], ORACLE, existing)
    assert upgrade.statements == []
    assert upgrade.notes == [
        "GRADE_SCHEMES.SCHEMENAME: needs CLOB, and oracle cannot change VARCHAR2(128 CHAR) to it in place."
    ]


def test_columnMissingFromTheDocumentationIsReportedAndKept(gradeSchemes):
    existing = asCreated(MYSQL, gradeSchemes)
    existing["gradeschemes"].columns["loadedat"] = ExistingColumn(
        name="LoadedAt", sqlType=SqlType(kind="timestamp", native="datetime"), isNullable=True
    )
    upgrade = plan(MYSQL, gradeSchemes, existing)
    assert upgrade.statements == []
    assert upgrade.notes == ["GradeSchemes.LoadedAt: not in the D2L documentation. It was left in place."]


def test_primaryKeyDifferenceIsReportedNotChanged(gradeSchemes):
    existing = asCreated(MYSQL, gradeSchemes)
    existing["gradeschemes"].primaryKey = set()
    upgrade = plan(MYSQL, gradeSchemes, existing)
    assert upgrade.statements == []
    assert upgrade.notes == [
        "GradeSchemes: the primary key is (none) in the database and (GradeSchemeId) in the documentation. "
        "Keys are never changed."
    ]


def test_tablesAndColumnsMatchWithoutRegardToCase(gradeSchemes):
    created = asCreated(MYSQL, gradeSchemes)
    table = dataclasses.replace(created["gradeschemes"], name="gradeschemes")
    del table.columns["deleteddate"]
    table.columns["schemename"] = dataclasses.replace(
        table.columns["schemename"], name="schemename", sqlType=SqlType(kind="string", native="varchar(50)", length=50)
    )
    table.indexedColumns.discard("orgunitid")
    table.columns["orgunitid"] = dataclasses.replace(table.columns["orgunitid"], name="orgunitid")
    upgrade = planUpgrade(specsFor(MYSQL, gradeSchemes)[:1], MYSQL, {"gradeschemes": table})
    assert upgrade.statements == [
        "ALTER TABLE `gradeschemes` MODIFY COLUMN `schemename` VARCHAR(128) NULL",
        "ALTER TABLE `gradeschemes` ADD COLUMN `DeletedDate` DATETIME(6)",
        "CREATE INDEX `IX_gradeschemes_orgunitid` ON `gradeschemes` (`orgunitid`)",
    ]


def test_mappedTableNameIsTheOneChecked(gradeSchemes):
    namer = TableNamer(ORACLE, nameMap={"Grade Schemes": "D2L_GRADE_SCHEME"})
    specs = specsFor(ORACLE, gradeSchemes, namer)
    existing = tablesAsCreated(ORACLE, specs)
    assert sorted(existing) == ["d2l_grade_scheme", "d2l_grade_scheme_load"]
    upgrade = planUpgrade(specs, ORACLE, existing)
    assert (upgrade.statements, upgrade.notes) == ([], [])


def test_scriptEndsStatementsAndListsNotesAsComments(gradeSchemes):
    existing = asCreated(MYSQL, gradeSchemes)
    del existing["gradeschemes"].columns["deleteddate"]
    existing["gradeschemes"].primaryKey = set()
    script = renderUpgradeScript(plan(MYSQL, gradeSchemes, existing), MYSQL)
    assert script == (
        "-- Upgrade script for mysql. Review it before running.\n"
        "-- It only creates tables and indexes, adds columns, and widens columns.\n"
        "\n"
        "ALTER TABLE `GradeSchemes` ADD COLUMN `DeletedDate` DATETIME(6);\n"
        "\n"
        "-- Differences left for you to handle:\n"
        "-- GradeSchemes: the primary key is (none) in the database and (GradeSchemeId) in the documentation. "
        "Keys are never changed.\n"
    )


def test_scriptForAnUpToDateDatabaseSaysSo(gradeSchemes):
    script = renderUpgradeScript(plan(MYSQL, gradeSchemes, asCreated(MYSQL, gradeSchemes)), MYSQL)
    assert script == "-- mysql tables match the D2L documentation. Nothing to do.\n"
