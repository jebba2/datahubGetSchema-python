"""Tests for correcting documented data sets with override files."""

import dataclasses
import json
import logging
from pathlib import Path

import pytest

from datahubGetSchema.overrides import applyOverrides
from datahubGetSchema.schema import DataSet, SchemaError


def writeOverride(directory: Path, content: dict, fileName: str = "GradeSchemes.json") -> None:
    """Write one override file into the overrides directory."""
    directory.mkdir(parents=True, exist_ok=True)
    (directory / fileName).write_text(json.dumps(content), encoding="utf-8")


def columnNamed(dataSet: DataSet, name: str):
    return next(column for column in dataSet.columns if column.name == name)


def test_withoutAnOverridesDirectoryNothingChanges(tmp_path, gradeSchemes):
    assert applyOverrides([gradeSchemes], tmp_path / "overrides") == [gradeSchemes]


def test_overrideChangesOnlyTheFieldsItNames(tmp_path, gradeSchemes):
    writeOverride(tmp_path, {"dataSet": "Grade Schemes", "columns": [{"name": "GradeSchemeId", "isPrimaryKey": False}]})
    changed = applyOverrides([gradeSchemes], tmp_path)[0]
    before, after = columnNamed(gradeSchemes, "GradeSchemeId"), columnNamed(changed, "GradeSchemeId")
    assert after.isPrimaryKey is False
    assert (after.dataType, after.size, after.description) == (before.dataType, before.size, before.description)
    assert changed.columns[1:] == gradeSchemes.columns[1:]


def test_overrideCanSetTheTypeOfAColumn(tmp_path, gradeSchemes):
    writeOverride(tmp_path, {"dataSet": "Grade Schemes", "columns": [{"name": "SchemeName", "dataType": "nvarchar", "size": "500"}]})
    schemeName = columnNamed(applyOverrides([gradeSchemes], tmp_path)[0], "SchemeName")
    assert (schemeName.dataType, schemeName.size) == ("nvarchar", "500")


def test_overrideAddsAColumnTheDocumentationLacks(tmp_path, gradeSchemes):
    writeOverride(tmp_path, {"dataSet": "Grade Schemes", "columns": [{"name": "Version", "dataType": "bigint", "size": "8"}]})
    changed = applyOverrides([gradeSchemes], tmp_path)[0]
    assert [column.name for column in changed.columns] == ["GradeSchemeId", "OrgUnitId", "SchemeName", "DeletedDate", "Version"]
    version = changed.columns[-1]
    assert (version.dataType, version.size, version.isPrimaryKey, version.isForeignKey, version.canBeNull) == (
        "bigint", "8", False, False, True,
    )


def test_overrideRemovesAColumnTheExtractLacks(tmp_path, gradeSchemes):
    writeOverride(tmp_path, {"dataSet": "Grade Schemes", "columns": [{"name": "DeletedDate", "remove": True}]})
    changed = applyOverrides([gradeSchemes], tmp_path)[0]
    assert [column.name for column in changed.columns] == ["GradeSchemeId", "OrgUnitId", "SchemeName"]


def test_reasonIsAllowedAndOtherDataSetsAreUntouched(tmp_path, gradeSchemes):
    users = DataSet(name="Users", sourceUrl="https://example.test/users", columns=gradeSchemes.columns[:1])
    writeOverride(
        tmp_path,
        {"dataSet": "Grade Schemes", "reason": "The extract has no DeletedDate.", "columns": [{"name": "DeletedDate", "remove": True}]},
    )
    assert applyOverrides([gradeSchemes, users], tmp_path)[1] == users


def test_advancedDataSetIsNamedWithItsPrefix(tmp_path, gradeSchemes):
    advanced = dataclasses.replace(gradeSchemes, kind="ADS")
    writeOverride(tmp_path, {"dataSet": "ADS Grade Schemes", "columns": [{"name": "SchemeName", "dataType": "nvarchar", "size": "256"}]})
    brightspace, changed = applyOverrides([gradeSchemes, advanced], tmp_path)
    assert columnNamed(brightspace, "SchemeName").size == "128"
    assert columnNamed(changed, "SchemeName").size == "256"


@pytest.mark.parametrize(
    ("content", "message"),
    [
        ({"dataSet": "Grade Scheems", "columns": []}, "GradeSchemes.json.*no data set named 'Grade Scheems'"),
        ({"dataSet": "Grade Schemes", "columns": [{"name": "SchemeName", "type": "int"}]}, "GradeSchemes.json.*SchemeName.*unknown setting 'type'"),
        ({"dataSet": "Grade Schemes", "columns": [{"name": "Version", "size": "8"}]}, "GradeSchemes.json.*new column 'Version' needs a dataType"),
        ({"dataSet": "Grade Schemes", "columns": [{"name": "Nope", "remove": True}]}, "GradeSchemes.json.*cannot remove 'Nope'"),
        ({"dataSet": "Grade Schemes", "column": []}, "GradeSchemes.json.*unknown setting 'column'"),
        ({"columns": []}, "GradeSchemes.json.*needs a 'dataSet'"),
    ],
)
def test_mistakesInAnOverrideFileAreErrorsThatNameTheFile(tmp_path, gradeSchemes, content, message):
    writeOverride(tmp_path, content)
    with pytest.raises(SchemaError, match=message):
        applyOverrides([gradeSchemes], tmp_path)


def test_appliedOverridesAreLogged(tmp_path, gradeSchemes, caplog):
    caplog.set_level(logging.INFO, logger="datahubGetSchema")
    writeOverride(tmp_path, {"dataSet": "Grade Schemes", "columns": [{"name": "DeletedDate", "remove": True}]})
    applyOverrides([gradeSchemes], tmp_path)
    assert "Applied override GradeSchemes.json to 'Grade Schemes' (1 column)" in caplog.text
