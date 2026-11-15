"""Tests for choosing the table name of each data set."""

import json
from pathlib import Path

import pytest

from datahubtable.dialects import dialectNamed
from datahubtable.naming import TableNamer, loadNameMap


def writeNameMap(tmp_path: Path, content: dict[str, dict[str, str]]) -> Path:
    """Write a table name map file and return its path."""
    path = tmp_path / "tableMap.json"
    path.write_text(json.dumps(content), encoding="utf-8")
    return path


def test_namesAreDerivedWhenNothingIsMapped(gradeSchemes):
    assert TableNamer(dialectNamed("mysql")).tableName(gradeSchemes) == "GradeSchemes"
    assert TableNamer(dialectNamed("oracle"), prefix="D2L_").tableName(gradeSchemes) == "D2L_GRADE_SCHEMES"


def test_mappedNameWinsAndIsUsedExactly(gradeSchemes):
    namer = TableNamer(dialectNamed("oracle"), prefix="X_", nameMap={"Grade Schemes": "D2L_GRADE_SCHEME"})
    assert namer.tableName(gradeSchemes) == "D2L_GRADE_SCHEME"


def test_nameMapFileIsReadPerDatabase(tmp_path):
    path = writeNameMap(
        tmp_path,
        {"mysql": {"Grade Schemes": "GradeScheme"}, "oracle": {"Grade Schemes": "D2L_GRADE_SCHEME"}},
    )
    assert loadNameMap(path, "mysql") == {"Grade Schemes": "GradeScheme"}
    assert loadNameMap(path, "oracle") == {"Grade Schemes": "D2L_GRADE_SCHEME"}
    assert loadNameMap(path, "postgres") == {}


def test_nameMapWithAnUnknownDatabaseIsAnError(tmp_path):
    path = writeNameMap(tmp_path, {"mssql": {"Grade Schemes": "GradeScheme"}})
    with pytest.raises(ValueError, match="mssql.*mysql, oracle, postgres"):
        loadNameMap(path, "mysql")


def test_unusedMapEntriesAreReported(gradeSchemes):
    namer = TableNamer(dialectNamed("mysql"), nameMap={"Grade Schemes": "GradeScheme", "Grade Scheems": "Typo"})
    namer.tableName(gradeSchemes)
    assert namer.unusedMapEntries() == ["Grade Scheems"]
