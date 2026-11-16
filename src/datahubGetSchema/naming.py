"""Chooses the table name for each data set: a name from the map file, or one derived from the D2L name."""

import json
from pathlib import Path

from datahubGetSchema.dialects import DIALECTS
from datahubGetSchema.dialects.base import Dialect
from datahubGetSchema.schema import DataSet, SchemaError


def loadNameMap(path: Path, dialectName: str) -> dict[str, str]:
    """Read the table names one database uses from a map file.

    The file is JSON with a section per database. Each section maps a D2L data
    set name to the table name to use for it:

        {"oracle": {"Grade Schemes": "D2L_GRADE_SCHEME"}}
    """
    sections = json.loads(path.read_text(encoding="utf-8"))
    unknown = sorted(set(sections) - set(DIALECTS))
    if unknown:
        raise ValueError(
            f"{path} has sections for unknown databases: {', '.join(unknown)}. "
            f"Use: {', '.join(sorted(DIALECTS))}."
        )
    return sections.get(dialectName, {})


class TableNamer:
    """Names tables for one database, preferring mapped names over derived ones."""

    def __init__(self, dialect: Dialect, prefix: str = "", nameMap: dict[str, str] | None = None) -> None:
        self.dialect = dialect
        self.prefix = prefix
        self.nameMap = nameMap or {}
        self.usedMapEntries: set[str] = set()

    def tableName(self, dataSet: DataSet) -> str:
        """Return the table name for a data set. A mapped name is used as written, without the prefix.

        Names are looked up and derived from the qualified name, so an Advanced
        Data Set is "ADS All Grades" in the map file and ADS_ALL_GRADES in Oracle.
        """
        if dataSet.qualifiedName in self.nameMap:
            self.usedMapEntries.add(dataSet.qualifiedName)
            return self.nameMap[dataSet.qualifiedName]
        return self.dialect.tableName(dataSet.qualifiedName, self.prefix)

    def nameTables(self, dataSets: list[DataSet]) -> list[tuple[str, DataSet]]:
        """Pair every data set with its table name, refusing two data sets that would share a table."""
        owners: dict[str, DataSet] = {}
        for dataSet in dataSets:
            tableName = self.tableName(dataSet)
            owner = owners.setdefault(tableName.lower(), dataSet)
            if owner is not dataSet:
                raise SchemaError(
                    f"Table name '{tableName}' would be used by two data sets: "
                    f"'{owner.qualifiedName}' and '{dataSet.qualifiedName}'. "
                    "Give one of them a different name in the table name map file."
                )
        return [(self.tableName(dataSet), dataSet) for dataSet in dataSets]

    def unusedMapEntries(self) -> list[str]:
        """Return mapped data set names that no data set has asked for, which usually means a typo."""
        return sorted(set(self.nameMap) - self.usedMapEntries)
