"""Print the statements that create one data set's main table, indexes and staging table in every database.

Run from the project root, after 'datahubGetSchema fetch' has written the schema directory:

    uv run python examples/printCreateTable.py "Grade Schemes"
    uv run python examples/printCreateTable.py "ADS All Grades"
"""

import sys
from pathlib import Path

from datahubGetSchema.dialects import DIALECTS
from datahubGetSchema.naming import TableNamer
from datahubGetSchema.overrides import OVERRIDES_DIRECTORY_NAME, applyOverrides
from datahubGetSchema.schema import loadDataSets
from datahubGetSchema.tables import buildTableSpecs, createStatements

SCHEMA_DIRECTORY = Path("schema")


def main() -> int:
    """Look up the data set named on the command line and print its statements per database."""
    wantedName = sys.argv[1] if len(sys.argv) > 1 else "Grade Schemes"
    loaded = applyOverrides(loadDataSets(SCHEMA_DIRECTORY), SCHEMA_DIRECTORY / OVERRIDES_DIRECTORY_NAME)
    dataSets = {dataSet.qualifiedName: dataSet for dataSet in loaded}
    if wantedName not in dataSets:
        print(f"No data set named '{wantedName}'. There are {len(dataSets)}, for example: {', '.join(list(dataSets)[:5])}")
        return 1
    for name, dialect in sorted(DIALECTS.items()):
        print(f"-- {name}")
        for spec in buildTableSpecs([dataSets[wantedName]], dialect, TableNamer(dialect)):
            for statement in createStatements(dialect, spec):
                print(statement + ";")
        print()
    return 0


if __name__ == "__main__":
    sys.exit(main())
