"""Tests for comparing the header row of an extract file with a data set's columns.

The extract files here are written by the tests from the schema. They follow the
CSV layout D2L describes, but they are not real Data Hub downloads.
"""

import dataclasses
import zipfile
from pathlib import Path

import pytest

from datahubtable.extractCheck import ExtractError, compareHeader, findDataSet, readHeader
from datahubtable.schema import DataSet

from .conftest import makeColumn


@pytest.fixture
def users() -> DataSet:
    return DataSet(name="Users", sourceUrl="https://example.test/users", columns=(makeColumn("UserId", "int", "4", "PK"),))


@pytest.fixture
def userLogins() -> DataSet:
    return DataSet(name="User Logins", sourceUrl="https://example.test/users", columns=(makeColumn("UserId", "int", "4"),))


def writeCsv(path: Path, header: str, bom: bool = False) -> Path:
    path.write_text(header + "\n1,2,3\n", encoding="utf-8-sig" if bom else "utf-8")
    return path


def test_headerIsReadFromACsvFile(tmp_path):
    assert readHeader(writeCsv(tmp_path / "Users.csv", "UserId,UserName,FirstName")) == ["UserId", "UserName", "FirstName"]


def test_byteOrderMarkAndQuotesAreNotPartOfTheNames(tmp_path):
    path = writeCsv(tmp_path / "Users.csv", '"UserId","User Name"', bom=True)
    assert readHeader(path) == ["UserId", "User Name"]


def test_headerIsReadFromTheCsvInsideAZipFile(tmp_path):
    csvPath = writeCsv(tmp_path / "Users.csv", "UserId,UserName")
    zipPath = tmp_path / "Users.zip"
    with zipfile.ZipFile(zipPath, "w") as archive:
        archive.write(csvPath, "Users.csv")
    assert readHeader(zipPath) == ["UserId", "UserName"]


def test_zipWithoutACsvIsAnError(tmp_path):
    zipPath = tmp_path / "Users.zip"
    with zipfile.ZipFile(zipPath, "w") as archive:
        archive.writestr("readme.txt", "nothing here")
    with pytest.raises(ExtractError, match="Users.zip.*no .csv file"):
        readHeader(zipPath)


def test_emptyFileIsAnError(tmp_path):
    path = tmp_path / "Users.csv"
    path.write_text("", encoding="utf-8")
    with pytest.raises(ExtractError, match="Users.csv.*empty"):
        readHeader(path)


def test_dataSetIsFoundFromTheStartOfTheFileName(users, userLogins, gradeSchemes):
    dataSets = [gradeSchemes, userLogins, users]
    assert findDataSet(Path("Users.csv"), dataSets) is users
    assert findDataSet(Path("Users_2026-11-01.zip"), dataSets) is users
    assert findDataSet(Path("UserLogins_Full.csv"), dataSets) is userLogins
    assert findDataSet(Path("grade schemes 2026.csv"), dataSets) is gradeSchemes


def test_fileNameThatMatchesNoDataSetIsAnError(users):
    with pytest.raises(ExtractError, match="export.csv.*--data-set"):
        findDataSet(Path("export.csv"), [users])


def test_fileNameThatMatchesBothKindsOfDataSetIsAnError(users):
    advanced = dataclasses.replace(users, kind="ADS")
    with pytest.raises(ExtractError, match="Users.csv.*ADS Users.*Users.*--data-set"):
        findDataSet(Path("Users.csv"), [advanced, users])


def test_dataSetCanBeNamedOutright(users, userLogins):
    advanced = dataclasses.replace(users, kind="ADS")
    dataSets = [advanced, userLogins, users]
    assert findDataSet(Path("export.csv"), dataSets, "User Logins") is userLogins
    assert findDataSet(Path("Users.csv"), dataSets, "ads users") is advanced
    with pytest.raises(ExtractError, match="No data set named 'Userz'"):
        findDataSet(Path("Users.csv"), dataSets, "Userz")


def test_matchingHeaderHasNoDifferences(gradeSchemes):
    assert compareHeader(gradeSchemes, ["GradeSchemeId", "OrgUnitId", "SchemeName", "DeletedDate"]) == []


def test_headerNamesMatchWithoutRegardToCaseSpacesOrPunctuation(gradeSchemes):
    assert compareHeader(gradeSchemes, ["gradeschemeid", "Org Unit Id", "Scheme-Name", "DELETEDDATE"]) == []


def test_missingAndExtraColumnsAreReported(gradeSchemes):
    assert compareHeader(gradeSchemes, ["GradeSchemeId", "OrgUnitId", "SchemeName", "Version"]) == [
        "DeletedDate is documented but is not in the file.",
        "Version is in the file but is not documented.",
    ]


def test_sameColumnsInADifferentOrderAreReported(gradeSchemes):
    assert compareHeader(gradeSchemes, ["OrgUnitId", "GradeSchemeId", "SchemeName", "DeletedDate"]) == [
        "The columns are in a different order. "
        "File: OrgUnitId, GradeSchemeId, SchemeName, DeletedDate. "
        "Documentation: GradeSchemeId, OrgUnitId, SchemeName, DeletedDate."
    ]
