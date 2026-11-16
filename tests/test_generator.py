"""Tests for writing the SQL scripts to disk."""

import dataclasses

import pytest

from datahubGetSchema.dialects import dialectNamed
from datahubGetSchema.dialects.base import Dialect
from datahubGetSchema.generator import writeSql
from datahubGetSchema.naming import TableNamer
from datahubGetSchema.schema import DataSet, SchemaError
from datahubGetSchema.tables import TableSpec, buildTableSpecs

from .conftest import makeColumn


def specsFor(dialect: Dialect, dataSets: list[DataSet]) -> list[TableSpec]:
    return buildTableSpecs(dataSets, dialect, TableNamer(dialect))


def test_writesAFilePerTableInADirectoryNamedForTheDatabase(tmp_path, gradeSchemes):
    dialect = dialectNamed("oracle")
    paths = writeSql(specsFor(dialect, [gradeSchemes]), dialect, tmp_path)
    assert [path.relative_to(tmp_path).as_posix() for path in paths] == [
        "oracle/GRADE_SCHEMES.sql",
        "oracle/GRADE_SCHEMES_LOAD.sql",
        "oracle/create_all.sql",
    ]


def test_tableFileHoldsTheSourceTheTableAndItsIndexes(tmp_path, gradeSchemes):
    dialect = dialectNamed("postgres")
    writeSql(specsFor(dialect, [gradeSchemes]), dialect, tmp_path)
    assert (tmp_path / "postgres" / "grade_schemes.sql").read_text(encoding="utf-8") == (
        "-- Data set: Grade Schemes\n"
        "-- Source: https://example.test/grades#grade-schemes\n"
        + dialect.createTable("grade_schemes", gradeSchemes)
        + ";\n"
        + 'CREATE INDEX "ix_grade_schemes_orgunitid" ON "grade_schemes" ("orgunitid");\n'
    )


def test_stagingFileIsLabeledAndHasNoIndexes(tmp_path, gradeSchemes):
    dialect = dialectNamed("postgres")
    writeSql(specsFor(dialect, [gradeSchemes]), dialect, tmp_path)
    assert (tmp_path / "postgres" / "grade_schemes_load.sql").read_text(encoding="utf-8") == (
        "-- Data set: Grade Schemes (staging table)\n"
        "-- Source: https://example.test/grades#grade-schemes\n"
        + dialect.createTable("grade_schemes_load", gradeSchemes)
        + ";\n"
    )


def test_createAllHoldsEveryTable(tmp_path, gradeSchemes):
    dialect = dialectNamed("mysql")
    users = DataSet(name="Users", sourceUrl="https://example.test/users", columns=(makeColumn("UserId", "int", "4", "PK"),))
    writeSql(specsFor(dialect, [gradeSchemes, users]), dialect, tmp_path)
    directory = tmp_path / "mysql"
    createAll = (directory / "create_all.sql").read_text(encoding="utf-8")
    files = ["GradeSchemes.sql", "GradeSchemes_LOAD.sql", "Users.sql", "Users_LOAD.sql"]
    assert createAll == "\n".join((directory / name).read_text(encoding="utf-8") for name in files)


def test_advancedDataSetScriptNamesItsKind(tmp_path, gradeSchemes):
    dialect = dialectNamed("mysql")
    writeSql(specsFor(dialect, [dataclasses.replace(gradeSchemes, kind="ADS")]), dialect, tmp_path)
    script = (tmp_path / "mysql" / "ADSGradeSchemes.sql").read_text(encoding="utf-8")
    assert script.startswith("-- Data set: ADS Grade Schemes\n")


def test_scriptExplainsAMissingPrimaryKey(tmp_path):
    dialect = dialectNamed("mysql")
    dataSet = DataSet(
        name="Survey User Answers",
        sourceUrl="https://example.test/surveys",
        columns=(
            makeColumn("AttemptId", "bigint", "8", "PK"),
            makeColumn("QuestionVersionId", "bigint", "8", "PK", canBeNull=True),
        ),
    )
    writeSql(specsFor(dialect, [dataSet]), dialect, tmp_path)
    script = (tmp_path / "mysql" / "SurveyUserAnswers.sql").read_text(encoding="utf-8")
    assert "-- No primary key: D2L documents key column QuestionVersionId as nullable.\n" in script
    assert "PRIMARY KEY" not in script.split("\n", 3)[3]


def test_commentsStayOnOneLineWhateverTheDocumentationHolds(tmp_path, gradeSchemes):
    dialect = dialectNamed("mysql")
    hostile = dataclasses.replace(gradeSchemes, sourceUrl="https://example.test/grades#x\nDROP TABLE Users;")
    writeSql(specsFor(dialect, [hostile]), dialect, tmp_path)
    lines = (tmp_path / "mysql" / "GradeSchemes.sql").read_text(encoding="utf-8").splitlines()
    assert lines[1] == "-- Source: https://example.test/grades#x DROP TABLE Users;"
    assert lines[2] == "CREATE TABLE `GradeSchemes` ("


def test_twoDataSetsWithTheSameTableNameAreAnError(gradeSchemes):
    dialect = dialectNamed("mysql")
    twin = dataclasses.replace(gradeSchemes, name="Grade-Schemes")
    with pytest.raises(SchemaError, match="GradeSchemes.*Grade Schemes.*Grade-Schemes"):
        specsFor(dialect, [gradeSchemes, twin])
