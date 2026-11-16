"""Data set and column definitions, and the JSON files that store them."""

import dataclasses
import json
import re
from dataclasses import dataclass
from pathlib import Path


class SchemaError(ValueError):
    """The data set definitions are missing or contradict each other."""


@dataclass(frozen=True)
class Column:
    """One field of a data set, as D2L documents it."""

    name: str
    description: str
    dataType: str
    size: str
    isPrimaryKey: bool
    isForeignKey: bool
    canBeNull: bool
    versionHistory: str


@dataclass(frozen=True)
class DataSet:
    """One data set and its columns in documented order.

    kind is "BDS" for a Brightspace Data Set and "ADS" for an Advanced Data Set.
    """

    name: str
    sourceUrl: str
    columns: tuple[Column, ...]
    kind: str = "BDS"

    @property
    def qualifiedName(self) -> str:
        """Return a name that is unique across both kinds of data set.

        A few names, such as Enrollments and Withdrawals, exist as both a Brightspace
        Data Set and an Advanced Data Set. The Advanced one gets an "ADS" prefix.
        """
        return self.name if self.kind == "BDS" else f"{self.kind} {self.name}"

    def primaryKey(self) -> tuple[Column, ...]:
        """Return the key columns, or nothing when D2L documents one of them as nullable.

        No database accepts NULL in a primary key column, so a key that can be null
        cannot be declared as a primary key without rejecting rows from the extract.
        """
        keyColumns = tuple(column for column in self.columns if column.isPrimaryKey)
        if any(column.canBeNull for column in keyColumns):
            return ()
        return keyColumns


def dataSetFileName(name: str) -> str:
    """Return the JSON file name for a data set: its qualified name without spaces or punctuation."""
    return re.sub(r"[^A-Za-z0-9]", "", name) + ".json"


def saveDataSets(dataSets: list[DataSet], directory: Path) -> list[Path]:
    """Write one JSON file per data set into the directory and return the paths."""
    directory.mkdir(parents=True, exist_ok=True)
    paths = []
    for dataSet in dataSets:
        path = directory / dataSetFileName(dataSet.qualifiedName)
        path.write_text(json.dumps(dataclasses.asdict(dataSet), indent=2) + "\n", encoding="utf-8")
        paths.append(path)
    return paths


def loadDataSets(directory: Path) -> list[DataSet]:
    """Read every data set JSON file in the directory, sorted by data set name."""
    dataSets = []
    for path in directory.glob("*.json"):
        raw = json.loads(path.read_text(encoding="utf-8"))
        columns = tuple(Column(**column) for column in raw["columns"])
        dataSets.append(DataSet(name=raw["name"], sourceUrl=raw["sourceUrl"], columns=columns, kind=raw["kind"]))
    if not dataSets:
        raise SchemaError(f"No data set files found in {directory}. Run 'datahubGetSchema fetch' first.")
    return sorted(dataSets, key=lambda dataSet: dataSet.qualifiedName)


def columnStructure(dataSet: DataSet) -> list[tuple[str, str, str, bool]]:
    """Return the parts of each column that decide the table definition."""
    return [(column.name, column.dataType, column.size, column.isPrimaryKey) for column in dataSet.columns]


def mergeDataSets(dataSets: list[DataSet]) -> list[DataSet]:
    """Return the data sets sorted by name, keeping one copy of any that appear twice.

    D2L documents a few data sets on two pages. Two copies with the same columns are
    one data set. Two copies with different columns mean the documentation disagrees
    with itself, and that needs a person to look at it.
    """
    byName: dict[str, DataSet] = {}
    for dataSet in dataSets:
        known = byName.setdefault(dataSet.qualifiedName, dataSet)
        if columnStructure(known) != columnStructure(dataSet):
            raise SchemaError(
                f"Data set '{dataSet.qualifiedName}' is documented with different columns at "
                f"{known.sourceUrl} and {dataSet.sourceUrl}."
            )
    return sorted(byName.values(), key=lambda dataSet: dataSet.qualifiedName)
