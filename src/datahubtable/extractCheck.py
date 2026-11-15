"""Compares the header row of a Data Hub extract file with the columns of its data set.

The documentation is the only source for the schema, and it is sometimes wrong.
An extract file is the truth about which columns D2L really sends.
"""

import csv
import io
import re
import zipfile
from pathlib import Path

from datahubtable.schema import DataSet


class ExtractError(ValueError):
    """An extract file cannot be read or matched to a data set."""


def simplify(name: str) -> str:
    """Return a name in lowercase without spaces or punctuation, the form used to compare names."""
    return re.sub(r"[^a-z0-9]", "", name.lower())


def readHeader(path: Path) -> list[str]:
    """Return the column names from the first row of a CSV file, or of the first CSV inside a zip file."""
    if path.suffix.lower() == ".zip":
        with zipfile.ZipFile(path) as archive:
            csvNames = [name for name in archive.namelist() if name.lower().endswith(".csv")]
            if not csvNames:
                raise ExtractError(f"{path} has no .csv file inside it.")
            firstLine = archive.open(csvNames[0]).readline().decode("utf-8-sig")
    else:
        with path.open(encoding="utf-8-sig", newline="") as file:
            firstLine = file.readline()
    header = next(csv.reader(io.StringIO(firstLine)), [])
    if not header:
        raise ExtractError(f"{path} is empty, so it has no header row.")
    return header


def findDataSet(path: Path, dataSets: list[DataSet], dataSetName: str | None = None) -> DataSet:
    """Return the data set an extract file holds.

    When no name is given, the data set is the one whose name the file name starts
    with, ignoring case, spaces and punctuation. "UserLogins_2026-11-01.zip" holds
    User Logins. A name is required when that rule finds nothing or more than one.
    """
    if dataSetName is not None:
        named = [dataSet for dataSet in dataSets if simplify(dataSet.qualifiedName) == simplify(dataSetName)]
        if not named:
            raise ExtractError(f"No data set named '{dataSetName}'.")
        return named[0]
    fileName = simplify(path.stem)
    matches = [dataSet for dataSet in dataSets if fileName.startswith(simplify(dataSet.name))]
    longest = max((len(simplify(dataSet.name)) for dataSet in matches), default=0)
    best = [dataSet for dataSet in matches if len(simplify(dataSet.name)) == longest]
    if len(best) == 1:
        return best[0]
    if not best:
        raise ExtractError(f"Cannot tell which data set {path.name} holds. Name it with --data-set.")
    names = ", ".join(dataSet.qualifiedName for dataSet in best)
    raise ExtractError(f"{path.name} could hold any of: {names}. Name the right one with --data-set.")


def compareHeader(dataSet: DataSet, header: list[str]) -> list[str]:
    """Return one line per difference between a file's header row and the data set's columns.

    Names are compared without regard to case, spaces or punctuation. The order of
    the columns is only reported when the two sides have the same columns.
    """
    documented = {simplify(column.name): column.name for column in dataSet.columns}
    inFile = {simplify(name): name for name in header}
    differences = [f"{name} is documented but is not in the file." for key, name in documented.items() if key not in inFile]
    differences += [f"{name} is in the file but is not documented." for key, name in inFile.items() if key not in documented]
    if not differences and list(documented) != list(inFile):
        differences.append(
            "The columns are in a different order. "
            f"File: {', '.join(header)}. Documentation: {', '.join(documented.values())}."
        )
    return differences
