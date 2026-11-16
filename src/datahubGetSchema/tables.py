"""Decides which tables and indexes the data sets need in one database.

Each data set gets a main table and a staging table. The staging table is a copy
of the main table with _LOAD added to its name, for a loader to fill before it
merges rows into the main table. The main table also gets an index on each
foreign key column, because those are the columns the tables are joined on.
"""

from dataclasses import dataclass

from datahubGetSchema.dialects.base import Dialect
from datahubGetSchema.naming import TableNamer
from datahubGetSchema.schema import Column, DataSet

STAGING_SUFFIX = "_LOAD"


@dataclass(frozen=True)
class TableSpec:
    """One table to create: its name, the data set that defines it, and the columns to index."""

    name: str
    dataSet: DataSet
    indexColumns: tuple[Column, ...] = ()
    isStaging: bool = False


def buildTableSpecs(
    dataSets: list[DataSet],
    dialect: Dialect,
    namer: TableNamer,
    includeStaging: bool = True,
    includeIndexes: bool = True,
) -> list[TableSpec]:
    """Return the tables for the data sets: each main table followed by its staging table."""
    specs = []
    for tableName, dataSet in namer.nameTables(dataSets):
        indexColumns = dialect.foreignKeysToIndex(dataSet) if includeIndexes else ()
        specs.append(TableSpec(name=tableName, dataSet=dataSet, indexColumns=indexColumns))
        if includeStaging:
            stagingName = tableName + dialect.foldCase(STAGING_SUFFIX)
            specs.append(TableSpec(name=stagingName, dataSet=dataSet, isStaging=True))
    return specs


def createStatements(dialect: Dialect, spec: TableSpec) -> list[str]:
    """Return the statements that create one table and then its indexes."""
    statements = [dialect.createTable(spec.name, spec.dataSet)]
    statements += [dialect.createIndex(spec.name, dialect.columnName(column.name)) for column in spec.indexColumns]
    return statements
