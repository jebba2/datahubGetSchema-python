"""Tests for describing what changed between two fetches of the documentation."""

import dataclasses

from datahubtable.schema import DataSet
from datahubtable.schemaChanges import describeChanges

from .conftest import makeColumn


def withColumns(dataSet: DataSet, columns) -> DataSet:
    return dataclasses.replace(dataSet, columns=tuple(columns))


def test_identicalSchemasHaveNoChanges(gradeSchemes):
    assert describeChanges([gradeSchemes], [gradeSchemes]) == []


def test_newAndRemovedDataSets(gradeSchemes):
    users = DataSet(name="Users", sourceUrl="https://example.test/users", columns=(makeColumn("UserId", "int", "4", "PK"),))
    assert describeChanges([gradeSchemes], [users]) == [
        "Removed data set: Grade Schemes",
        "New data set: Users (1 column)",
    ]


def test_newAndRemovedColumns(gradeSchemes):
    newer = withColumns(gradeSchemes, [*gradeSchemes.columns[:3], makeColumn("Version", "bigint", "8")])
    assert describeChanges([gradeSchemes], [newer]) == [
        "Grade Schemes: removed column DeletedDate",
        "Grade Schemes: new column Version (bigint 8)",
    ]


def test_changedTypeSizeKeyAndNullability(gradeSchemes):
    columns = list(gradeSchemes.columns)
    columns[1] = makeColumn("OrgUnitId", "bigint", "8", "PK, FK")
    columns[2] = makeColumn("SchemeName", "nvarchar", "256", canBeNull=True)
    assert describeChanges([gradeSchemes], [withColumns(gradeSchemes, columns)]) == [
        "Grade Schemes.OrgUnitId: type changed from int 4 to bigint 8",
        "Grade Schemes.OrgUnitId: primary key changed from no to yes",
        "Grade Schemes.OrgUnitId: can be null changed from yes to no",
        "Grade Schemes.SchemeName: type changed from nvarchar 128 to nvarchar 256",
        "Grade Schemes.SchemeName: can be null changed from no to yes",
    ]


def test_descriptionAndVersionNotesAreNotChanges(gradeSchemes):
    reworded = dataclasses.replace(gradeSchemes.columns[0], description="Reworded.", versionHistory="9.9")
    assert describeChanges([gradeSchemes], [withColumns(gradeSchemes, [reworded, *gradeSchemes.columns[1:]])]) == []


def test_advancedDataSetsUseTheirQualifiedName(gradeSchemes):
    advanced = dataclasses.replace(gradeSchemes, kind="ADS")
    assert describeChanges([gradeSchemes], [gradeSchemes, advanced]) == ["New data set: ADS Grade Schemes (4 columns)"]
