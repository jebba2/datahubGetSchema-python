"""Show what an upgrade plan looks like, without a database.

The script describes a Users table as an older load might have left it: one column
missing and one column too short. It then plans the upgrade against the current
schema and prints the script 'datahubGetSchema check' would write.

Run from the project root, after 'datahubGetSchema fetch' has written the schema directory:

    uv run python examples/planUpgradeOffline.py
"""

import dataclasses
from pathlib import Path

from datahubGetSchema.dialects import dialectNamed
from datahubGetSchema.dialects.base import ExistingColumn, ExistingTable
from datahubGetSchema.naming import TableNamer
from datahubGetSchema.schema import loadDataSets
from datahubGetSchema.sqlTypes import SqlType
from datahubGetSchema.tables import buildTableSpecs
from datahubGetSchema.upgrade import planUpgrade, renderUpgradeScript

SCHEMA_DIRECTORY = Path("schema")


def main() -> None:
    """Build the older table description, plan the upgrade, and print the script."""
    dialect = dialectNamed("mysql")
    users = next(dataSet for dataSet in loadDataSets(SCHEMA_DIRECTORY) if dataSet.name == "Users")
    specs = buildTableSpecs([users], dialect, TableNamer(dialect), includeStaging=False)

    olderTable = ExistingTable(name=specs[0].name, primaryKey={"userid"}, indexedColumns={"userid"})
    for column in users.columns[:-1]:
        olderTable.columns[column.name.lower()] = ExistingColumn(
            name=column.name, sqlType=dialect.sqlType(column), isNullable=not column.isPrimaryKey
        )
    shortName = SqlType(kind="string", native="varchar(20)", length=20)
    olderTable.columns["firstname"] = dataclasses.replace(olderTable.columns["firstname"], sqlType=shortName)

    plan = planUpgrade(specs, dialect, {olderTable.name.lower(): olderTable})
    print(renderUpgradeScript(plan, dialect), end="")


if __name__ == "__main__":
    main()
