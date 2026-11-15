"""Tests for the SQL each database dialect writes."""

import pytest

from datahubtable.dialects import DIALECTS, dialectNamed
from datahubtable.dialects.base import ExistingColumn, UnsupportedTypeError
from datahubtable.schema import DataSet
from datahubtable.sqlTypes import SqlType

from .conftest import makeColumn

MYSQL = dialectNamed("mysql")
POSTGRES = dialectNamed("postgres")
ORACLE = dialectNamed("oracle")

# D2L type and size, then the column type each database uses for it.
TYPE_CASES = [
    ("int", "4", "INT", "INTEGER", "NUMBER(10)"),
    ("int", "8", "BIGINT", "BIGINT", "NUMBER(19)"),
    ("bigint", "8", "BIGINT", "BIGINT", "NUMBER(19)"),
    ("smallint", "2", "SMALLINT", "SMALLINT", "NUMBER(5)"),
    ("bit", "1", "TINYINT(1)", "BOOLEAN", "NUMBER(1)"),
    ("nvarchar", "256", "VARCHAR(256)", "VARCHAR(256)", "VARCHAR2(256 CHAR)"),
    ("varchar", "1000", "VARCHAR(1000)", "VARCHAR(1000)", "VARCHAR2(1000 CHAR)"),
    ("nvarchar", "4000", "TEXT", "VARCHAR(4000)", "CLOB"),
    ("nvarchar", "20000", "LONGTEXT", "VARCHAR(20000)", "CLOB"),
    ("datetime2", "8", "DATETIME(6)", "TIMESTAMP(6)", "TIMESTAMP(7)"),
    ("uniqueidentifier", "16", "CHAR(36)", "UUID", "VARCHAR2(36 CHAR)"),
    ("uniqueidentifier", "36", "CHAR(36)", "UUID", "VARCHAR2(36 CHAR)"),
    ("decimal", "19, 9", "DECIMAL(19,9)", "NUMERIC(19,9)", "NUMBER(19,9)"),
    ("decimal", "5,2", "DECIMAL(5,2)", "NUMERIC(5,2)", "NUMBER(5,2)"),
    ("float", "24", "DOUBLE", "DOUBLE PRECISION", "BINARY_DOUBLE"),
    ("float", "53", "DOUBLE", "DOUBLE PRECISION", "BINARY_DOUBLE"),
    ("text", "", "TEXT", "TEXT", "VARCHAR2(4000 CHAR)"),
    ("integer", "4", "INT", "INTEGER", "NUMBER(10)"),
    ("datetime", "8", "DATETIME(6)", "TIMESTAMP(6)", "TIMESTAMP(7)"),
]


def test_thereIsOneDialectPerDatabase():
    assert sorted(DIALECTS) == ["mysql", "oracle", "postgres"]


def test_unknownDialectNameIsAnError():
    with pytest.raises(ValueError, match="sqlite.*mysql, oracle, postgres"):
        dialectNamed("sqlite")


@pytest.mark.parametrize(("dataType", "size", "mysql", "postgres", "oracle"), TYPE_CASES)
def test_columnTypes(dataType, size, mysql, postgres, oracle):
    column = makeColumn("Field", dataType, size)
    assert MYSQL.sqlType(column).native == mysql
    assert POSTGRES.sqlType(column).native == postgres
    assert ORACLE.sqlType(column).native == oracle


@pytest.mark.parametrize("dialect", DIALECTS.values(), ids=list(DIALECTS))
def test_undocumentedTypeIsAnError(dialect):
    with pytest.raises(UnsupportedTypeError, match="Field.*geography"):
        dialect.sqlType(makeColumn("Field", "geography", "8"))


@pytest.mark.parametrize("dialect", DIALECTS.values(), ids=list(DIALECTS))
def test_decimalWithoutPrecisionAndScaleIsAnError(dialect):
    with pytest.raises(UnsupportedTypeError, match="Field.*decimal.*19"):
        dialect.sqlType(makeColumn("Field", "decimal", "19"))


def test_derivedTableNames():
    assert MYSQL.tableName("Grade Schemes") == "GradeSchemes"
    assert POSTGRES.tableName("Grade Schemes") == "grade_schemes"
    assert ORACLE.tableName("Grade Schemes") == "GRADE_SCHEMES"


def test_derivedTableNamesDropPunctuationAndKeepAcronyms():
    assert MYSQL.tableName("Creator+ Practices Adoption") == "CreatorPracticesAdoption"
    assert MYSQL.tableName("Enrollments and Withdrawals") == "EnrollmentsAndWithdrawals"
    assert MYSQL.tableName("SCORM Visits") == "SCORMVisits"
    assert ORACLE.tableName("Creator+ Practices Adoption") == "CREATOR_PRACTICES_ADOPTION"


def test_prefixFollowsTheDatabaseNamingStyle():
    assert MYSQL.tableName("Grade Schemes", "D2L_") == "D2L_GradeSchemes"
    assert POSTGRES.tableName("Grade Schemes", "D2L_") == "d2l_grade_schemes"
    assert ORACLE.tableName("Grade Schemes", "d2l_") == "D2L_GRADE_SCHEMES"


def test_columnNamesAreTheD2lFieldNamesInEachDatabasesDefaultCase():
    assert MYSQL.columnName("OrgUnitId") == "OrgUnitId"
    assert POSTGRES.columnName("OrgUnitId") == "orgunitid"
    assert ORACLE.columnName("OrgUnitId") == "ORGUNITID"


def test_identifierLongerThanTheDatabaseAllowsIsAnError():
    with pytest.raises(ValueError, match="64 characters.*mysql"):
        MYSQL.quote("A" * 65)
    assert POSTGRES.quote("a" * 63) == '"' + "a" * 63 + '"'
    with pytest.raises(ValueError, match="63 characters.*postgres"):
        POSTGRES.quote("a" * 64)


@pytest.mark.parametrize("identifier", ['Name" INT); DROP TABLE Users; --', "Org Unit", "Na`me", "", "Line\nBreak"])
@pytest.mark.parametrize("dialect", DIALECTS.values(), ids=list(DIALECTS))
def test_identifierWithCharactersThatCouldEndTheQuotingIsAnError(dialect, identifier):
    with pytest.raises(ValueError, match="letters, digits"):
        dialect.quote(identifier)


def test_identifierMayUseTheSymbolsOracleAllows():
    assert ORACLE.quote("D2L_USER$1#A") == '"D2L_USER$1#A"'


def test_mysqlCreateTable(gradeSchemes):
    assert MYSQL.createTable("GradeSchemes", gradeSchemes) == (
        "CREATE TABLE `GradeSchemes` (\n"
        "    `GradeSchemeId` BIGINT NOT NULL,\n"
        "    `OrgUnitId` INT,\n"
        "    `SchemeName` VARCHAR(128),\n"
        "    `DeletedDate` DATETIME(6),\n"
        "    PRIMARY KEY (`GradeSchemeId`)\n"
        ") ENGINE=InnoDB DEFAULT CHARSET=utf8mb4"
    )


def test_postgresCreateTable(gradeSchemes):
    assert POSTGRES.createTable("grade_schemes", gradeSchemes) == (
        'CREATE TABLE "grade_schemes" (\n'
        '    "gradeschemeid" BIGINT NOT NULL,\n'
        '    "orgunitid" INTEGER,\n'
        '    "schemename" VARCHAR(128),\n'
        '    "deleteddate" TIMESTAMP(6),\n'
        '    PRIMARY KEY ("gradeschemeid")\n'
        ")"
    )


def test_oracleCreateTable(gradeSchemes):
    assert ORACLE.createTable("GRADE_SCHEMES", gradeSchemes) == (
        'CREATE TABLE "GRADE_SCHEMES" (\n'
        '    "GRADESCHEMEID" NUMBER(19) NOT NULL,\n'
        '    "ORGUNITID" NUMBER(10),\n'
        '    "SCHEMENAME" VARCHAR2(128 CHAR),\n'
        '    "DELETEDDATE" TIMESTAMP(7),\n'
        '    PRIMARY KEY ("GRADESCHEMEID")\n'
        ")"
    )


def test_tableWithANullableKeyColumnGetsNoPrimaryKey():
    dataSet = DataSet(
        name="Survey User Answers",
        sourceUrl="https://example.test/surveys",
        columns=(
            makeColumn("AttemptId", "bigint", "8", "PK"),
            makeColumn("QuestionVersionId", "bigint", "8", "PK", canBeNull=True),
        ),
    )
    assert POSTGRES.createTable("survey_user_answers", dataSet) == (
        'CREATE TABLE "survey_user_answers" (\n'
        '    "attemptid" BIGINT,\n'
        '    "questionversionid" BIGINT\n'
        ")"
    )


def test_addColumnStatements():
    wider = SqlType(kind="string", native="X", length=10)
    assert MYSQL.addColumn("GradeSchemes", "Notes", wider) == "ALTER TABLE `GradeSchemes` ADD COLUMN `Notes` X"
    assert POSTGRES.addColumn("grade_schemes", "notes", wider) == 'ALTER TABLE "grade_schemes" ADD COLUMN "notes" X'
    assert ORACLE.addColumn("GRADE_SCHEMES", "NOTES", wider) == 'ALTER TABLE "GRADE_SCHEMES" ADD ("NOTES" X)'


def existingColumn(name: str, native: str, isNullable: bool = True, collationClause: str = "") -> ExistingColumn:
    """Build an existing string column whose exact type does not matter to the statement."""
    sqlType = SqlType(kind="string", native=native, length=128)
    return ExistingColumn(name=name, sqlType=sqlType, isNullable=isNullable, collationClause=collationClause)


def test_mysqlWideningKeepsTheColumnsCharacterSetAndNullability():
    expected = MYSQL.sqlType(makeColumn("SchemeName", "nvarchar", "256"))
    nullable = existingColumn("SchemeName", "varchar(128)", collationClause=" CHARACTER SET latin1 COLLATE latin1_bin")
    required = existingColumn("SchemeName", "varchar(128)", isNullable=False)
    assert MYSQL.alterColumnType("GradeSchemes", nullable, expected) == (
        "ALTER TABLE `GradeSchemes` MODIFY COLUMN `SchemeName` VARCHAR(256) CHARACTER SET latin1 COLLATE latin1_bin NULL"
    )
    assert MYSQL.alterColumnType("GradeSchemes", required, expected) == (
        "ALTER TABLE `GradeSchemes` MODIFY COLUMN `SchemeName` VARCHAR(256) NOT NULL"
    )


def test_postgresWidening():
    expected = POSTGRES.sqlType(makeColumn("SchemeName", "nvarchar", "256"))
    column = existingColumn("schemename", "character varying(128)")
    assert POSTGRES.alterColumnType("grade_schemes", column, expected) == (
        'ALTER TABLE "grade_schemes" ALTER COLUMN "schemename" TYPE VARCHAR(256)'
    )


def test_oracleWidening():
    expected = ORACLE.sqlType(makeColumn("SchemeName", "nvarchar", "256"))
    column = existingColumn("SCHEMENAME", "VARCHAR2(128 CHAR)")
    assert ORACLE.alterColumnType("GRADE_SCHEMES", column, expected) == (
        'ALTER TABLE "GRADE_SCHEMES" MODIFY ("SCHEMENAME" VARCHAR2(256 CHAR))'
    )


def test_oracleCannotChangeAColumnToClobOrFromNationalTypesInPlace():
    toClob = ORACLE.sqlType(makeColumn("Comments", "nvarchar", "4000"))
    assert ORACLE.alterColumnType("T", existingColumn("COMMENTS", "VARCHAR2(1000 CHAR)"), toClob) is None
    wider = ORACLE.sqlType(makeColumn("SchemeName", "nvarchar", "256"))
    assert ORACLE.alterColumnType("T", existingColumn("SCHEMENAME", "NVARCHAR2(128)"), wider) is None


def test_columnNamesDropTheSpacesAndPunctuationOfAdvancedDataSetFields():
    assert MYSQL.columnName("Org Defined Id") == "OrgDefinedId"
    assert POSTGRES.columnName("Final Adjusted Grade Is Released?") == "finaladjustedgradeisreleased"
    assert ORACLE.columnName("Credits (in minutes)") == "CREDITSINMINUTES"


def test_twoFieldsThatBecomeTheSameColumnNameAreAnError():
    dataSet = DataSet(
        name="Final Grades",
        sourceUrl="https://example.test/ads",
        kind="ADS",
        columns=(makeColumn("Grade %", "text", ""), makeColumn("Grade", "text", "")),
    )
    with pytest.raises(ValueError, match="ADS Final Grades.*more than one column.*Grade.*override"):
        MYSQL.createTable("ADSFinalGrades", dataSet)


def test_indexNamesCombineTableAndColumnInTheDatabaseCase():
    assert MYSQL.indexName("GradeSchemes", "OrgUnitId") == "IX_GradeSchemes_OrgUnitId"
    assert POSTGRES.indexName("grade_schemes", "orgunitid") == "ix_grade_schemes_orgunitid"
    assert ORACLE.indexName("GRADE_SCHEMES", "ORGUNITID") == "IX_GRADE_SCHEMES_ORGUNITID"


def test_indexNameTooLongForTheDatabaseIsShortenedAndStaysDistinct():
    table = "outcomes_course_specific_scale_levels_load"
    first = POSTGRES.indexName(table, "automaticallygeneratedscalelevelid")
    second = POSTGRES.indexName(table, "automaticallygeneratedscalelevelix")
    assert len(first) == 63 and len(second) == 63
    assert first != second
    assert first.startswith("ix_outcomes_course_specific_scale_levels_load_automati")
    assert first == POSTGRES.indexName(table, "automaticallygeneratedscalelevelid")
    assert ORACLE.indexName("T" * 100, "C" * 40).isupper()


def test_createIndexStatements():
    assert MYSQL.createIndex("GradeSchemes", "OrgUnitId") == (
        "CREATE INDEX `IX_GradeSchemes_OrgUnitId` ON `GradeSchemes` (`OrgUnitId`)"
    )
    assert ORACLE.createIndex("GRADE_SCHEMES", "ORGUNITID") == (
        'CREATE INDEX "IX_GRADE_SCHEMES_ORGUNITID" ON "GRADE_SCHEMES" ("ORGUNITID")'
    )
