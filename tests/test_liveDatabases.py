"""End-to-end tests against real MySQL, PostgreSQL and Oracle databases.

The databases are the throwaway containers in tests/docker-compose.yml. These
tests drop every table in the schema they connect to, so the URLs are fixed to
those containers and cannot be pointed anywhere else.
"""

import dataclasses
from pathlib import Path

import pytest

from datahubGetSchema.cli import main
from datahubGetSchema.database import parseDatabaseUrl
from datahubGetSchema.naming import TableNamer
from datahubGetSchema.overrides import OVERRIDES_DIRECTORY_NAME, applyOverrides
from datahubGetSchema.schema import DataSet, loadDataSets
from datahubGetSchema.tables import buildTableSpecs, createStatements
from datahubGetSchema.upgrade import planUpgrade

SCHEMA_DIRECTORY = Path(__file__).parent.parent / "schema"
TEST_DATABASE_URLS = {
    "mysql": "mysql://datahub:datahubTest@127.0.0.1:33306/datahub",
    "postgres": "postgresql://datahub:datahubTest@127.0.0.1:35432/datahub",
    "oracle": "oracle://datahub:datahubTest@127.0.0.1:31521/FREEPDB1",
}
START_COMMAND = "docker compose -f tests/docker-compose.yml up -d --wait"


class LiveDatabase:
    """An open connection to one test database, with the helpers the tests share."""

    def __init__(self, url: str) -> None:
        self.url = url
        self.dialect, target = parseDatabaseUrl(url, "")
        self.connection = self.dialect.connect(target)

    def run(self, statements: list[str]) -> None:
        """Execute statements and commit them."""
        cursor = self.connection.cursor()
        for statement in statements:
            cursor.execute(statement)
        cursor.close()
        self.connection.commit()

    def query(self, statement: str) -> list[tuple]:
        """Execute a query and return every row."""
        cursor = self.connection.cursor()
        cursor.execute(statement)
        rows = [tuple(row) for row in cursor.fetchall()]
        cursor.close()
        self.connection.commit()
        return rows

    def readTables(self):
        """Read the schema's tables through the dialect, then end the read transaction."""
        tables = self.dialect.readTables(self.connection)
        self.connection.commit()
        return tables

    def dropEveryTable(self) -> None:
        """Empty the schema. Oracle needs PURGE so dropped tables do not linger in its recycle bin."""
        purge = " PURGE" if self.dialect.name == "oracle" else ""
        self.run([f"DROP TABLE {self.dialect.quote(table.name)}{purge}" for table in self.readTables().values()])

    def specsFor(self, dataSets: list[DataSet], **options):
        """Return the tables this database should have for the data sets."""
        return buildTableSpecs(dataSets, self.dialect, TableNamer(self.dialect), **options)


@pytest.fixture(params=sorted(TEST_DATABASE_URLS))
def database(request):
    """A connection to an empty test database, skipped when its container is not running."""
    try:
        live = LiveDatabase(TEST_DATABASE_URLS[request.param])
    except Exception as error:
        pytest.skip(f"{request.param} test database is not reachable ({type(error).__name__}). Start it with: {START_COMMAND}")
    live.dropEveryTable()
    yield live
    live.dropEveryTable()
    live.connection.close()


@pytest.fixture(scope="module")
def dataSets() -> list[DataSet]:
    """Every data set in the project's schema directory, with the shipped overrides applied."""
    return applyOverrides(loadDataSets(SCHEMA_DIRECTORY), SCHEMA_DIRECTORY / OVERRIDES_DIRECTORY_NAME)


def dataSetNamed(dataSets: list[DataSet], qualifiedName: str) -> DataSet:
    return next(dataSet for dataSet in dataSets if dataSet.qualifiedName == qualifiedName)


def test_everyTableAndIndexIsCreatedAndThenReadsBackAsUpToDate(database, dataSets, tmp_path, capsys):
    scriptPath = tmp_path / "upgrade.sql"
    logPath = tmp_path / "run.log"
    logOptions = ["--log-file", str(logPath)]
    checkArguments = [*logOptions, "check", "--url", database.url, "--schema-dir", str(SCHEMA_DIRECTORY), "--out", str(scriptPath)]
    specs = database.specsFor(dataSets)
    indexCount = sum(len(spec.indexColumns) for spec in specs)
    assert len(specs) == len(dataSets) * 2
    assert indexCount > 300

    assert main(checkArguments) == 1
    script = scriptPath.read_text(encoding="utf-8")
    assert (script.count("CREATE TABLE"), script.count("CREATE INDEX")) == (len(specs), indexCount)
    assert f"{len(specs) + indexCount} statements to run, 0 differences left for you." in capsys.readouterr().out

    database.run(planUpgrade(specs, database.dialect, {}).statements)

    upgrade = planUpgrade(specs, database.dialect, database.readTables())
    assert (upgrade.statements, upgrade.notes) == ([], [])
    assert main(checkArguments) == 0
    assert capsys.readouterr().out == f"{database.dialect.name}: all {len(specs)} tables match the D2L documentation.\n"
    assert scriptPath.read_text(encoding="utf-8") == f"-- {database.dialect.name} tables match the D2L documentation. Nothing to do.\n"

    log = logPath.read_text(encoding="utf-8")
    assert f"INFO Connecting to {database.dialect.name} at datahub@127.0.0.1:" in log
    assert "INFO Read 0 tables from the database\n" in log
    assert f"INFO Read {len(specs)} tables from the database\n" in log
    assert "datahubTest" not in log


def test_checkWithoutStagingOrIndexesWantsOnlyTheMainTables(database, dataSets, tmp_path, capsys):
    scriptPath = tmp_path / "upgrade.sql"
    arguments = [
        "--log-file", str(tmp_path / "run.log"), "check", "--url", database.url,
        "--schema-dir", str(SCHEMA_DIRECTORY), "--out", str(scriptPath), "--no-staging", "--no-indexes",
    ]
    assert main(arguments) == 1
    script = scriptPath.read_text(encoding="utf-8")
    assert (script.count("CREATE TABLE"), script.count("CREATE INDEX")) == (len(dataSets), 0)
    assert f"{len(dataSets)} statements to run" in capsys.readouterr().out


def test_upgradeBringsAnOlderTableUpToDateAndKeepsItsRows(database, dataSets):
    dialect = database.dialect
    users = dataSetNamed(dataSets, "Users")
    gradeSchemes = dataSetNamed(dataSets, "Grade Schemes")
    firstName = next(column for column in users.columns if column.name == "FirstName")
    assert (users.columns[0].name, users.columns[0].dataType, firstName.size) == ("UserId", "int", "64")
    specs = database.specsFor([gradeSchemes, users])
    usersSpec = next(spec for spec in specs if spec.dataSet is users and not spec.isStaging)

    # An older Users table: a smaller key type, a shorter name column, no last column, and no indexes.
    olderColumns = [
        dataclasses.replace(users.columns[0], dataType="smallint", size="2"),
        *(dataclasses.replace(column, size="20") if column is firstName else column for column in users.columns[1:-1]),
    ]
    olderUsers = dataclasses.replace(users, columns=tuple(olderColumns))
    usersTable = dialect.quote(usersSpec.name)
    userId, name = dialect.quote(dialect.columnName("UserId")), dialect.quote(dialect.columnName("FirstName"))
    database.run(
        [
            dialect.createTable(usersSpec.name, olderUsers),
            f"INSERT INTO {usersTable} ({userId}, {name}) VALUES (123, 'Zoë Nguyễn')",
        ]
    )

    upgrade = planUpgrade(specs, dialect, database.readTables())
    assert upgrade.notes == []
    assert len([statement for statement in upgrade.statements if statement.startswith("ALTER TABLE")]) == 3
    assert len([statement for statement in upgrade.statements if statement.startswith("CREATE TABLE")]) == 3
    indexStatements = [statement for statement in upgrade.statements if statement.startswith("CREATE INDEX")]
    assert len(indexStatements) == sum(len(spec.indexColumns) for spec in specs) > 0
    database.run(upgrade.statements)

    assert database.query(f"SELECT {userId}, {name} FROM {usersTable}") == [(123, "Zoë Nguyễn")]
    wideValue = "N" * 64
    database.run([f"UPDATE {usersTable} SET {userId} = 2000000000, {name} = '{wideValue}'"])
    assert database.query(f"SELECT {userId}, {name} FROM {usersTable}") == [(2000000000, wideValue)]
    after = planUpgrade(specs, dialect, database.readTables())
    assert (after.statements, after.notes) == ([], [])


def test_droppedIndexIsCreatedAgain(database, dataSets):
    dialect = database.dialect
    specs = database.specsFor([dataSetNamed(dataSets, "User Enrollments")])
    main_ = specs[0]
    database.run([statement for spec in specs for statement in createStatements(dialect, spec)])
    column = dialect.columnName(main_.indexColumns[0].name)
    indexName = dialect.quote(dialect.indexName(main_.name, column))
    onTable = f" ON {dialect.quote(main_.name)}" if dialect.name == "mysql" else ""
    database.run([f"DROP INDEX {indexName}{onTable}"])

    upgrade = planUpgrade(specs, dialect, database.readTables())
    assert (upgrade.statements, upgrade.notes) == ([dialect.createIndex(main_.name, column)], [])
    database.run(upgrade.statements)
    after = planUpgrade(specs, dialect, database.readTables())
    assert (after.statements, after.notes) == ([], [])


def test_anIndexUnderAnotherNameCountsAsTheForeignKeyIndex(database, dataSets):
    dialect = database.dialect
    specs = database.specsFor([dataSetNamed(dataSets, "User Enrollments")], includeStaging=False)
    table = specs[0]
    database.run([dialect.createTable(table.name, table.dataSet)])
    for position, column in enumerate(table.indexColumns):
        indexName = dialect.quote(dialect.foldCase(f"my_own_index_{position}"))
        columnName = dialect.quote(dialect.columnName(column.name))
        database.run([f"CREATE INDEX {indexName} ON {dialect.quote(table.name)} ({columnName})"])

    upgrade = planUpgrade(specs, dialect, database.readTables())
    assert (upgrade.statements, upgrade.notes) == ([], [])


def test_advancedDataSetTableTakesARowOfText(database, dataSets):
    dialect = database.dialect
    allGrades = dataSetNamed(dataSets, "ADS All Grades")
    table = database.specsFor([allGrades], includeStaging=False)[0]
    database.run(createStatements(dialect, table))
    orgDefinedId = dialect.quote(dialect.columnName("Org Defined Id"))
    longValue = "é" * 900
    database.run([f"INSERT INTO {dialect.quote(table.name)} ({orgDefinedId}) VALUES ('{longValue}')"])
    assert database.query(f"SELECT {orgDefinedId} FROM {dialect.quote(table.name)}") == [(longValue,)]


def test_differencesThatCouldLoseDataAreReportedAndTheTableIsUntouched(database, dataSets):
    dialect = database.dialect
    users = dataSetNamed(dataSets, "Users")
    specs = database.specsFor([users], includeStaging=False, includeIndexes=False)
    # A table whose key column holds text and that has a column D2L does not document.
    textKey = dataclasses.replace(users.columns[0], dataType="nvarchar", size="20", isPrimaryKey=False)
    extra = dataclasses.replace(users.columns[1], name="LoadBatch")
    database.run([dialect.createTable(specs[0].name, dataclasses.replace(users, columns=(textKey, *users.columns[1:], extra)))])
    before = database.readTables()

    upgrade = planUpgrade(specs, dialect, before)

    assert upgrade.statements == []
    assert len(upgrade.notes) == 3
    assert "Converting it could change stored values, so it was left alone." in upgrade.notes[0]
    assert "not in the D2L documentation. It was left in place." in upgrade.notes[1]
    assert "Keys are never changed." in upgrade.notes[2]
    assert database.readTables() == before
