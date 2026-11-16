"""Command line for datahubGetSchema: fetch the documentation, generate SQL, check a database, and verify extracts."""

import argparse
import dataclasses
import getpass
import logging
import os
import sys
from pathlib import Path

from datahubGetSchema.d2lDocs import downloadArticles, loadCachedArticles
from datahubGetSchema.database import parseDatabaseUrl, readExistingTables, redactUrl
from datahubGetSchema.dialects import DIALECTS
from datahubGetSchema.dialects.base import Dialect
from datahubGetSchema.docParser import parseArticle
from datahubGetSchema.extractCheck import compareHeader, findDataSet, readHeader
from datahubGetSchema.generator import writeSql
from datahubGetSchema.naming import TableNamer, loadNameMap
from datahubGetSchema.overrides import OVERRIDES_DIRECTORY_NAME, applyOverrides
from datahubGetSchema.runLog import DEFAULT_LOG_FILE, closeRunLog, openRunLog
from datahubGetSchema.schema import DataSet, dataSetFileName, loadDataSets, mergeDataSets, saveDataSets
from datahubGetSchema.schemaChanges import describeChanges
from datahubGetSchema.tables import TableSpec, buildTableSpecs
from datahubGetSchema.upgrade import planUpgrade, renderUpgradeScript

log = logging.getLogger(__name__)

PASSWORD_VARIABLE = "DATAHUB_DB_PASSWORD"
# Options left out of the log line that records how a command was started.
UNLOGGED_OPTIONS = {"command", "run", "traceback", "log_file"}
MAX_NOTES_SHOWN = 20
EXIT_OK = 0
EXIT_DIFFERENCES = 1
EXIT_ERROR = 2

DESCRIPTION = "Generate and upgrade database tables for D2L Brightspace Data Hub data sets."
EPILOG = """\
examples:
  datahubGetSchema fetch
  datahubGetSchema generate
  datahubGetSchema generate --db oracle --prefix D2L_ --name-map tableMap.json
  datahubGetSchema check --url postgresql://loader@localhost:5432/datahub
  datahubGetSchema verify extracts/Users_2026-11-01.zip

exit codes:
  0  success, or nothing differs (check, verify)
  1  check or verify found differences
  2  error
"""


def buildParser() -> argparse.ArgumentParser:
    """Build the argument parser with the fetch, generate, check and verify commands."""
    parser = argparse.ArgumentParser(
        prog="datahubGetSchema",
        description=DESCRIPTION,
        epilog=EPILOG,
        formatter_class=argparse.RawDescriptionHelpFormatter,
    )
    parser.add_argument("--traceback", action="store_true", help="show the full Python traceback when a command fails")
    parser.add_argument("--log-file", type=Path, default=DEFAULT_LOG_FILE, help=f"file that records each run (default: {DEFAULT_LOG_FILE.as_posix()})")
    commands = parser.add_subparsers(dest="command", required=True)

    fetch = commands.add_parser(
        "fetch",
        help="download D2L's data set documentation and write the schema JSON files",
        description=(
            "Download D2L's documentation for Brightspace Data Sets and Advanced Data Sets, write one JSON file "
            "per data set, and list what changed since the last fetch."
        ),
    )
    fetch.add_argument("--cached", action="store_true", help="rebuild from pages saved by an earlier fetch, without the network")
    fetch.add_argument("--cache-dir", type=Path, default=Path("working/docs"), help="where downloaded pages are kept (default: working/docs)")
    addSchemaArgument(fetch)
    fetch.set_defaults(run=runFetch)

    generate = commands.add_parser(
        "generate",
        help="write CREATE TABLE and CREATE INDEX scripts for each database",
        description=(
            "Write the SQL scripts from the schema JSON files, one directory per database. Each data set gets "
            "a main table, a _LOAD staging table, and an index on each foreign key column of the main table."
        ),
    )
    generate.add_argument("--db", choices=["all", *sorted(DIALECTS)], default="all", help="database to write scripts for (default: all)")
    generate.add_argument("--out", type=Path, default=Path("sql"), help="directory that gets one subdirectory per database (default: sql)")
    addSchemaArgument(generate)
    addTableArguments(generate)
    generate.set_defaults(run=runGenerate)

    check = commands.add_parser(
        "check",
        help="compare a database's tables with the schema and write an upgrade script",
        description=(
            "Compare the tables in a database with the schema JSON files and write a script that creates "
            "missing tables and indexes, adds missing columns, and widens columns. The database is only read. "
            f"The password comes from the URL, the {PASSWORD_VARIABLE} environment variable, or a prompt."
        ),
    )
    check.add_argument("--url", required=True, help="database to check, as mysql://, postgresql:// or oracle://user@host:port/database")
    check.add_argument("--out", type=Path, help="upgrade script to write (default: working/upgrade/<database>_upgrade.sql)")
    addSchemaArgument(check)
    addTableArguments(check)
    check.set_defaults(run=runCheck)

    verify = commands.add_parser(
        "verify",
        help="compare the header row of extract files with the schema",
        description=(
            "Compare the header row of Data Hub extract files with the documented columns. Each file is a CSV, "
            "or a zip holding one. The data set is taken from the start of the file name unless --data-set names it."
        ),
    )
    verify.add_argument("files", nargs="+", type=Path, help="extract files to check (.csv or .zip)")
    verify.add_argument("--data-set", help="data set the files hold, such as \"Users\" or \"ADS All Grades\"")
    addSchemaArgument(verify)
    verify.set_defaults(run=runVerify)
    return parser


def addSchemaArgument(command: argparse.ArgumentParser) -> None:
    """Add the option that says where the schema JSON files live."""
    command.add_argument(
        "--schema-dir",
        type=Path,
        default=Path("schema"),
        help=f"directory of data set JSON files, with corrections in its {OVERRIDES_DIRECTORY_NAME} subdirectory (default: schema)",
    )


def addTableArguments(command: argparse.ArgumentParser) -> None:
    """Add the options that control which tables are wanted and what they are called."""
    command.add_argument("--prefix", default="", help="text put in front of every derived table name, for example D2L_")
    command.add_argument("--name-map", type=Path, help="JSON file of table names per database that override the derived names")
    command.add_argument("--no-staging", action="store_true", help="leave out the _LOAD staging tables")
    command.add_argument("--no-indexes", action="store_true", help="leave out the indexes on foreign key columns")


def report(message: str) -> None:
    """Print a line for the person running the command and record it in the log."""
    print(message)
    log.info(message)


def warn(message: str) -> None:
    """Print a warning to stderr and record it in the log."""
    print(f"Warning: {message}", file=sys.stderr)
    log.warning(message)


def runFetch(arguments: argparse.Namespace) -> int:
    """Build the schema JSON files from D2L's documentation pages."""
    if arguments.cached:
        articles = loadCachedArticles(arguments.cache_dir)
    else:
        articles = downloadArticles(arguments.cache_dir, report)
    dataSets = mergeDataSets([dataSet for article in articles for dataSet in parseArticle(article)])
    isFirstFetch = not any(arguments.schema_dir.glob("*.json"))
    previous = [] if isFirstFetch else loadDataSets(arguments.schema_dir)
    saveDataSets(dataSets, arguments.schema_dir)
    report(f"Wrote {len(dataSets)} data sets from {len(articles)} pages to {arguments.schema_dir.as_posix()}")
    if not isFirstFetch:
        reportChanges(describeChanges(previous, dataSets))
    currentFiles = {dataSetFileName(dataSet.qualifiedName) for dataSet in dataSets}
    staleFiles = sorted(path for path in arguments.schema_dir.glob("*.json") if path.name not in currentFiles)
    if staleFiles:
        report(f"{len(staleFiles)} schema files are no longer in the D2L documentation and were left in place:")
        for path in staleFiles:
            report(f"  {path.as_posix()}")
    return EXIT_OK


def reportChanges(changes: list[str]) -> None:
    """Print and log what changed in the documentation since the last fetch."""
    if not changes:
        report("No changes since the last fetch.")
        return
    report(f"{countOf(len(changes), 'change')} since the last fetch:")
    for change in changes:
        report(f"  {change}")


def loadSchema(arguments: argparse.Namespace) -> list[DataSet]:
    """Load the documented data sets and apply the override files kept beside them."""
    dataSets = loadDataSets(arguments.schema_dir)
    return applyOverrides(dataSets, arguments.schema_dir / OVERRIDES_DIRECTORY_NAME)


def buildSpecs(arguments: argparse.Namespace, dialect: Dialect, dataSets: list[DataSet]) -> list[TableSpec]:
    """Return the tables wanted in one database, and warn about name map entries that match nothing."""
    nameMap = loadNameMap(arguments.name_map, dialect.name) if arguments.name_map else {}
    namer = TableNamer(dialect, prefix=arguments.prefix, nameMap=nameMap)
    specs = buildTableSpecs(
        dataSets, dialect, namer, includeStaging=not arguments.no_staging, includeIndexes=not arguments.no_indexes
    )
    unused = namer.unusedMapEntries()
    if unused:
        warn(f"{arguments.name_map.as_posix()} names data sets that do not exist: {', '.join(unused)}")
    return specs


def runGenerate(arguments: argparse.Namespace) -> int:
    """Write the SQL scripts for the chosen databases."""
    dataSets = loadSchema(arguments)
    names = sorted(DIALECTS) if arguments.db == "all" else [arguments.db]
    for name in names:
        dialect = DIALECTS[name]
        specs = buildSpecs(arguments, dialect, dataSets)
        writeSql(specs, dialect, arguments.out)
        indexCount = sum(len(spec.indexColumns) for spec in specs)
        report(f"{name}: wrote {len(specs)} tables and {indexCount} indexes to {(arguments.out / name).as_posix()}")
    return EXIT_OK


def countOf(count: int, noun: str) -> str:
    """Return a count with its noun, plural unless the count is one: '1 statement', '3 statements'."""
    return f"{count} {noun}" if count == 1 else f"{count} {noun}s"


def runCheck(arguments: argparse.Namespace) -> int:
    """Compare a database with the schema and write the upgrade script."""
    dialect, target = parseDatabaseUrl(arguments.url, os.environ.get(PASSWORD_VARIABLE, ""))
    if not target.password:
        target = dataclasses.replace(target, password=getpass.getpass(f"Password for {target.user}@{target.host}: "))
    specs = buildSpecs(arguments, dialect, loadSchema(arguments))
    plan = planUpgrade(specs, dialect, readExistingTables(dialect, target))
    scriptPath = arguments.out or Path("working/upgrade") / f"{dialect.name}_upgrade.sql"
    scriptPath.parent.mkdir(parents=True, exist_ok=True)
    scriptPath.write_text(renderUpgradeScript(plan, dialect), encoding="utf-8")
    if not plan.statements and not plan.notes:
        report(f"{dialect.name}: all {len(specs)} tables match the D2L documentation.")
        return EXIT_OK
    report(
        f"{dialect.name}: {countOf(len(plan.statements), 'statement')} to run, "
        f"{countOf(len(plan.notes), 'difference')} left for you."
    )
    for note in plan.notes:
        log.info("Difference: %s", note)
    for note in plan.notes[:MAX_NOTES_SHOWN]:
        print(f"  {note}")
    if len(plan.notes) > MAX_NOTES_SHOWN:
        print(f"  ... and {len(plan.notes) - MAX_NOTES_SHOWN} more in the script.")
    report(f"Upgrade script: {scriptPath.as_posix()}")
    return EXIT_DIFFERENCES


def runVerify(arguments: argparse.Namespace) -> int:
    """Compare the header row of each extract file with its data set's columns."""
    dataSets = loadSchema(arguments)
    foundDifferences = False
    for path in arguments.files:
        dataSet = findDataSet(path, dataSets, arguments.data_set)
        differences = compareHeader(dataSet, readHeader(path))
        if not differences:
            report(f"{path.name}: matches {dataSet.qualifiedName} ({countOf(len(dataSet.columns), 'column')}).")
            continue
        foundDifferences = True
        report(f"{path.name}: {countOf(len(differences), 'difference')} from {dataSet.qualifiedName}:")
        for difference in differences:
            report(f"  {difference}")
    if not foundDifferences:
        return EXIT_OK
    overridesDirectory = arguments.schema_dir / OVERRIDES_DIRECTORY_NAME
    report(f"Correct the schema with an override file in {overridesDirectory.as_posix()}, then run generate again.")
    return EXIT_DIFFERENCES


def describeOptions(arguments: argparse.Namespace) -> str:
    """Return a command's options as text for the log, with any database password hidden."""
    options = {name: value for name, value in vars(arguments).items() if name not in UNLOGGED_OPTIONS}
    if "url" in options:
        options["url"] = redactUrl(options["url"])
    return " ".join(f"{name}={value}" for name, value in sorted(options.items()))


def runCommand(arguments: argparse.Namespace) -> int:
    """Run the chosen command, logging how it started, how it ended, and the traceback of any failure."""
    log.info("%s started: %s", arguments.command, describeOptions(arguments))
    try:
        exitCode = arguments.run(arguments)
    except Exception as error:  # Any failure becomes one readable line, with the rest in the log.
        log.exception("%s failed", arguments.command)
        if arguments.traceback:
            raise
        print(f"Error: {error}", file=sys.stderr)
        exitCode = EXIT_ERROR
    log.info("%s finished with exit code %d", arguments.command, exitCode)
    return exitCode


def main(argv: list[str] | None = None) -> int:
    """Run the command line and return the process exit code."""
    arguments = buildParser().parse_args(argv)
    try:
        runLog = openRunLog(arguments.log_file)
    except OSError as error:
        print(f"Error: cannot write the log file {arguments.log_file.as_posix()}: {error}", file=sys.stderr)
        return EXIT_ERROR
    try:
        return runCommand(arguments)
    finally:
        closeRunLog(runLog)