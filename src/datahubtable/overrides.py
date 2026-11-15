"""Corrections to the documented data sets, kept in files that a new fetch does not overwrite.

D2L's documentation sometimes lags the real extract, and it gives no types for most
Advanced Data Sets. An override file fixes one data set:

    {
        "dataSet": "Rubric Assessment Criteria",
        "reason": "UserId is no longer in the extract.",
        "columns": [
            {"name": "UserId", "remove": true},
            {"name": "Score", "dataType": "decimal", "size": "19, 9"},
            {"name": "LoadedBy", "dataType": "nvarchar", "size": "50"}
        ]
    }

A column entry that names an existing column changes only the settings it lists.
An entry with a new name adds a column at the end. "remove" drops a column.
"""

import dataclasses
import json
import logging
from pathlib import Path
from typing import Any

from datahubtable.schema import Column, DataSet, SchemaError

log = logging.getLogger(__name__)

OVERRIDES_DIRECTORY_NAME = "overrides"
FILE_SETTINGS = {"dataSet", "reason", "columns"}
COLUMN_SETTINGS = {field.name for field in dataclasses.fields(Column)}


def applyOverrides(dataSets: list[DataSet], directory: Path) -> list[DataSet]:
    """Return the data sets with every override file in the directory applied, in the same order."""
    byName = {dataSet.qualifiedName: dataSet for dataSet in dataSets}
    for path in sorted(directory.glob("*.json")):
        override = json.loads(path.read_text(encoding="utf-8"))
        checkSettings(path, "the file", override, FILE_SETTINGS)
        if "dataSet" not in override:
            raise SchemaError(f"{path}: an override needs a 'dataSet' setting naming the data set it corrects.")
        if override["dataSet"] not in byName:
            raise SchemaError(f"{path}: there is no data set named '{override['dataSet']}'.")
        entries = override.get("columns", [])
        byName[override["dataSet"]] = overrideDataSet(path, byName[override["dataSet"]], entries)
        log.info(
            "Applied override %s to '%s' (%d column%s)",
            path.name, override["dataSet"], len(entries), "" if len(entries) == 1 else "s",
        )
    return [byName[dataSet.qualifiedName] for dataSet in dataSets]


def checkSettings(path: Path, where: str, settings: dict[str, Any], allowed: set[str]) -> None:
    """Refuse a setting name the tool does not know, which is usually a typo."""
    for name in settings:
        if name not in allowed:
            raise SchemaError(f"{path}: {where} has the unknown setting '{name}'. Use: {', '.join(sorted(allowed))}.")


def overrideDataSet(path: Path, dataSet: DataSet, entries: list[dict[str, Any]]) -> DataSet:
    """Return the data set with the column entries of one override file applied."""
    columns = {column.name: column for column in dataSet.columns}
    for entry in entries:
        if "name" not in entry:
            raise SchemaError(f"{path}: every column entry needs a 'name'.")
        name = entry["name"]
        checkSettings(path, f"column '{name}'", entry, COLUMN_SETTINGS | {"remove"})
        settings = {setting: value for setting, value in entry.items() if setting != "remove"}
        if entry.get("remove"):
            if name not in columns:
                raise SchemaError(f"{path}: cannot remove '{name}', because '{dataSet.qualifiedName}' has no such column.")
            del columns[name]
        elif name in columns:
            columns[name] = dataclasses.replace(columns[name], **settings)
        else:
            columns[name] = newColumn(path, settings)
    return dataclasses.replace(dataSet, columns=tuple(columns.values()))


def newColumn(path: Path, settings: dict[str, Any]) -> Column:
    """Build a column the documentation lacks. Only its name and dataType are required."""
    if "dataType" not in settings:
        raise SchemaError(f"{path}: new column '{settings['name']}' needs a dataType.")
    defaults = {
        "description": "",
        "size": "",
        "isPrimaryKey": False,
        "isForeignKey": False,
        "canBeNull": True,
        "versionHistory": "Added by an override file.",
    }
    return Column(**{**defaults, **settings})
