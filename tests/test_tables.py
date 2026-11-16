"""Tests for deciding which tables and indexes a set of data sets needs."""

import dataclasses

from datahubGetSchema.dialects import dialectNamed
from datahubGetSchema.naming import TableNamer
from datahubGetSchema.schema import DataSet
from datahubGetSchema.tables import buildTableSpecs, createStatements

from .conftest import makeColumn

MYSQL = dialectNamed("mysql")
POSTGRES = dialectNamed("postgres")
ORACLE = dialectNamed("oracle")


def specs(dialect, dataSets, **options):
    return buildTableSpecs(dataSets, dialect, TableNamer(dialect), **options)


def test_eachDataSetGetsAMainTableAndAStagingTable(gradeSchemes):
    main, staging = specs(MYSQL, [gradeSchemes])
    assert (main.name, main.isStaging) == ("GradeSchemes", False)
    assert (staging.name, staging.isStaging) == ("GradeSchemes_LOAD", True)
    assert main.dataSet is gradeSchemes and staging.dataSet is gradeSchemes


def test_stagingSuffixFollowsTheDatabaseCase(gradeSchemes):
    assert specs(POSTGRES, [gradeSchemes])[1].name == "grade_schemes_load"
    assert specs(ORACLE, [gradeSchemes])[1].name == "GRADE_SCHEMES_LOAD"


def test_stagingTableOfAMappedNameKeepsThatName(gradeSchemes):
    namer = TableNamer(ORACLE, nameMap={"Grade Schemes": "D2L_GRADE_SCHEME"})
    assert [spec.name for spec in buildTableSpecs([gradeSchemes], ORACLE, namer)] == ["D2L_GRADE_SCHEME", "D2L_GRADE_SCHEME_LOAD"]


def test_foreignKeyColumnsOfTheMainTableAreIndexed(gradeSchemes):
    main, staging = specs(MYSQL, [gradeSchemes])
    assert [column.name for column in main.indexColumns] == ["OrgUnitId"]
    assert staging.indexColumns == ()


def test_stagingAndIndexesCanBeLeftOut(gradeSchemes):
    assert [spec.name for spec in specs(MYSQL, [gradeSchemes], includeStaging=False)] == ["GradeSchemes"]
    assert specs(MYSQL, [gradeSchemes], includeIndexes=False)[0].indexColumns == ()


def test_foreignKeyThatLeadsThePrimaryKeyNeedsNoIndexOfItsOwn():
    dataSet = DataSet(
        name="User Enrollments",
        sourceUrl="https://example.test/users",
        columns=(
            makeColumn("OrgUnitId", "int", "4", "PK, FK"),
            makeColumn("UserId", "int", "4", "PK, FK"),
            makeColumn("RoleId", "int", "4", "FK"),
        ),
    )
    assert [column.name for column in specs(POSTGRES, [dataSet])[0].indexColumns] == ["UserId", "RoleId"]


def test_foreignKeysTooLongForTheDatabaseToIndexAreSkipped():
    dataSet = DataSet(
        name="Outcomes Demonstrations",
        sourceUrl="https://example.test/outcomes",
        columns=(
            makeColumn("DemonstrationId", "bigint", "8", "PK"),
            makeColumn("AlignedObjectId", "nvarchar", "1000", "FK"),
            makeColumn("Notes", "nvarchar", "4000", "FK"),
        ),
    )
    assert [column.name for column in specs(MYSQL, [dataSet])[0].indexColumns] == []
    assert [column.name for column in specs(ORACLE, [dataSet])[0].indexColumns] == ["AlignedObjectId"]
    assert [column.name for column in specs(POSTGRES, [dataSet])[0].indexColumns] == ["AlignedObjectId", "Notes"]


def test_statementsCreateTheTableThenItsIndexes(gradeSchemes):
    main, staging = specs(POSTGRES, [gradeSchemes])
    assert createStatements(POSTGRES, main) == [
        POSTGRES.createTable("grade_schemes", gradeSchemes),
        'CREATE INDEX "ix_grade_schemes_orgunitid" ON "grade_schemes" ("orgunitid")',
    ]
    assert createStatements(POSTGRES, staging) == [POSTGRES.createTable("grade_schemes_load", gradeSchemes)]


def test_advancedDataSetTablesCarryThePrefix(gradeSchemes):
    advanced = dataclasses.replace(gradeSchemes, kind="ADS")
    assert [spec.name for spec in specs(MYSQL, [advanced])] == ["ADSGradeSchemes", "ADSGradeSchemes_LOAD"]
    assert [spec.name for spec in specs(ORACLE, [advanced])] == ["ADS_GRADE_SCHEMES", "ADS_GRADE_SCHEMES_LOAD"]
