"""Tests for the command line: fetch from saved pages, generate, verify, logging, and argument errors."""

import json
import re
import shutil
from pathlib import Path

import pytest

from datahubtable.cli import countOf, main

from .conftest import FIXTURE_ARTICLES

LOG_FILE = Path("working/logs/datahubtable.log")
# The corrections the project ships for mistakes in D2L's pages. The saved pages need them too.
SHIPPED_OVERRIDES = Path(__file__).parent.parent / "schema" / "overrides"
# The fixture pages hold 26 Brightspace Data Sets and 19 Advanced Data Sets.
DATA_SET_COUNT = 45
PAGE_COUNT = 6


@pytest.fixture
def project(tmp_path, monkeypatch):
    """A working directory holding saved documentation pages and the shipped override files."""
    shutil.copytree(FIXTURE_ARTICLES, tmp_path / "working" / "docs")
    shutil.copytree(SHIPPED_OVERRIDES, tmp_path / "schema" / "overrides")
    monkeypatch.chdir(tmp_path)
    return tmp_path


@pytest.fixture
def fetched(project, capsys):
    """A project whose schema directory has been built from the saved pages."""
    main(["fetch", "--cached"])
    capsys.readouterr()
    return project


def writeJson(path: Path, content) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(content), encoding="utf-8")


# fetch


def test_fetchCachedBuildsSchemaFilesFromSavedPages(project, capsys):
    assert main(["fetch", "--cached"]) == 0
    names = sorted(path.name for path in (project / "schema").glob("*.json"))
    assert "Users.json" in names
    assert "QuizSurveySections.json" in names
    assert "ADSAllGrades.json" in names
    assert len(names) == DATA_SET_COUNT
    assert capsys.readouterr().out == f"Wrote {DATA_SET_COUNT} data sets from {PAGE_COUNT} pages to schema\n"


def test_fetchAgainWithTheSameDocumentationReportsNoChanges(fetched, capsys):
    assert main(["fetch", "--cached"]) == 0
    assert capsys.readouterr().out == (
        f"Wrote {DATA_SET_COUNT} data sets from {PAGE_COUNT} pages to schema\nNo changes since the last fetch.\n"
    )


def test_fetchReportsWhatChangedSinceTheLastFetch(fetched, capsys):
    usersPath = fetched / "schema" / "Users.json"
    users = json.loads(usersPath.read_text(encoding="utf-8"))
    removed = users["columns"].pop()
    users["columns"][3]["size"] = "20"
    writeJson(usersPath, users)
    (fetched / "schema" / "GradeSchemes.json").write_text(usersPath.read_text(encoding="utf-8").replace('"Users"', '"Grade Schemes"'), encoding="utf-8")

    assert main(["fetch", "--cached"]) == 0
    output = capsys.readouterr().out
    assert "3 changes since the last fetch:\n" in output
    assert "  Removed data set: Grade Schemes\n" in output
    assert f"  Users: new column {removed['name']} (datetime2 8)\n" in output
    assert "  Users.FirstName: type changed from nvarchar 20 to nvarchar 64\n" in output
    log = (fetched / LOG_FILE).read_text(encoding="utf-8")
    assert "INFO   Users.FirstName: type changed from nvarchar 20 to nvarchar 64\n" in log


def test_fetchReportsSchemaFilesThatAreNoLongerDocumented(fetched, capsys):
    (fetched / "working" / "docs" / "4740.json").unlink()
    assert main(["fetch", "--cached"]) == 0
    output = capsys.readouterr().out
    assert f"Wrote {DATA_SET_COUNT - 9} data sets from {PAGE_COUNT - 1} pages to schema\n" in output
    assert "9 schema files are no longer in the D2L documentation and were left in place:" in output
    assert "  schema/Users.json\n" in output


# generate


def test_generateWritesEachDatabaseToItsOwnDirectory(fetched, capsys):
    assert main(["generate"]) == 0
    for database, tableFile in (("mysql", "Users.sql"), ("oracle", "USERS.sql"), ("postgres", "users.sql")):
        directory = fetched / "sql" / database
        assert (directory / tableFile).is_file()
        assert (directory / "create_all.sql").read_text(encoding="utf-8").count("CREATE TABLE") == DATA_SET_COUNT * 2
    lines = capsys.readouterr().out.splitlines()
    assert [re.sub(r"\d+ indexes", "N indexes", line) for line in lines] == [
        f"mysql: wrote {DATA_SET_COUNT * 2} tables and N indexes to sql/mysql",
        f"oracle: wrote {DATA_SET_COUNT * 2} tables and N indexes to sql/oracle",
        f"postgres: wrote {DATA_SET_COUNT * 2} tables and N indexes to sql/postgres",
    ]


def test_generateWritesStagingTablesAndForeignKeyIndexes(fetched):
    main(["generate", "--db", "postgres"])
    directory = fetched / "sql" / "postgres"
    assert 'CREATE INDEX "ix_user_enrollments_userid" ON "user_enrollments" ("userid");' in (
        directory / "user_enrollments.sql"
    ).read_text(encoding="utf-8")
    staging = (directory / "user_enrollments_load.sql").read_text(encoding="utf-8")
    assert 'CREATE TABLE "user_enrollments_load" (' in staging
    assert "CREATE INDEX" not in staging


def test_generateCanLeaveOutStagingTablesAndIndexes(fetched, capsys):
    assert main(["generate", "--db", "postgres", "--no-staging", "--no-indexes"]) == 0
    directory = fetched / "sql" / "postgres"
    assert not (directory / "users_load.sql").exists()
    createAll = (directory / "create_all.sql").read_text(encoding="utf-8")
    assert createAll.count("CREATE TABLE") == DATA_SET_COUNT
    assert "CREATE INDEX" not in createAll
    assert capsys.readouterr().out == f"postgres: wrote {DATA_SET_COUNT} tables and 0 indexes to sql/postgres\n"


def test_generateWritesAdvancedDataSetsAsTextColumns(fetched):
    main(["generate", "--db", "oracle"])
    script = (fetched / "sql" / "oracle" / "ADS_ALL_GRADES.sql").read_text(encoding="utf-8")
    assert '"ORGDEFINEDID" VARCHAR2(4000 CHAR)' in script


def test_generateAppliesOverrideFiles(fetched):
    writeJson(
        fetched / "schema" / "overrides" / "ADSAllGrades.json",
        {
            "dataSet": "ADS All Grades",
            "reason": "User Id is a number in the extract.",
            "columns": [{"name": "User Id", "dataType": "int", "size": "4", "isPrimaryKey": False}],
        },
    )
    assert main(["generate", "--db", "oracle"]) == 0
    script = (fetched / "sql" / "oracle" / "ADS_ALL_GRADES.sql").read_text(encoding="utf-8")
    assert '"USERID" NUMBER(10)' in script
    assert "INFO Applied override ADSAllGrades.json to 'ADS All Grades' (1 column)\n" in (fetched / LOG_FILE).read_text(encoding="utf-8")


def test_generateWithABrokenOverrideFileIsAnError(fetched, capsys):
    writeJson(fetched / "schema" / "overrides" / "Users.json", {"dataSet": "Userz", "columns": []})
    assert main(["generate"]) == 2
    assert "there is no data set named 'Userz'" in capsys.readouterr().err


def test_generateForOneDatabaseWithPrefixAndNameMap(fetched):
    writeJson(fetched / "tableMap.json", {"oracle": {"Users": "D2L_USER", "ADS All Grades": "D2L_RPT_GRADES"}})
    assert main(["generate", "--db", "oracle", "--prefix", "D2L_", "--name-map", "tableMap.json", "--out", "ddl"]) == 0
    directory = fetched / "ddl" / "oracle"
    for fileName in ("D2L_USER.sql", "D2L_USER_LOAD.sql", "D2L_USER_LOGINS.sql", "D2L_RPT_GRADES.sql", "D2L_ADS_ATTENDANCE.sql"):
        assert (directory / fileName).is_file()
    assert not (fetched / "ddl" / "mysql").exists()


def test_generateWarnsAboutMapEntriesThatMatchNoDataSet(fetched, capsys):
    writeJson(fetched / "tableMap.json", {"mysql": {"Userz": "People"}})
    assert main(["generate", "--db", "mysql", "--name-map", "tableMap.json"]) == 0
    assert "Warning: tableMap.json names data sets that do not exist: Userz" in capsys.readouterr().err


def test_generateWithoutSchemaFilesExplainsWhatToRun(project, capsys):
    assert main(["generate"]) == 2
    assert capsys.readouterr().err == "Error: No data set files found in schema. Run 'datahubtable fetch' first.\n"


# verify


def usersHeader(project: Path) -> list[str]:
    """Return the documented Users column names, the header a correct extract would have."""
    users = json.loads((project / "schema" / "Users.json").read_text(encoding="utf-8"))
    return [column["name"] for column in users["columns"]]


def test_verifyAcceptsAnExtractWhoseHeaderMatches(fetched, capsys):
    header = usersHeader(fetched)
    (fetched / "Users_2026-11-01.csv").write_text(",".join(header) + "\n", encoding="utf-8")
    assert main(["verify", "Users_2026-11-01.csv"]) == 0
    assert capsys.readouterr().out == f"Users_2026-11-01.csv: matches Users ({len(header)} columns).\n"


def test_verifyReportsColumnsThatDiffer(fetched, capsys):
    header = usersHeader(fetched)
    (fetched / "Users.csv").write_text(",".join([*header[:-1], "Pronouns"]) + "\n", encoding="utf-8")
    assert main(["verify", "Users.csv"]) == 1
    assert capsys.readouterr().out == (
        "Users.csv: 2 differences from Users:\n"
        f"  {header[-1]} is documented but is not in the file.\n"
        "  Pronouns is in the file but is not documented.\n"
        "Correct the schema with an override file in schema/overrides, then run generate again.\n"
    )


def test_verifyUsesTheSchemaWithOverridesApplied(fetched, capsys):
    header = usersHeader(fetched)
    (fetched / "Users.csv").write_text(",".join([*header, "Pronouns"]) + "\n", encoding="utf-8")
    writeJson(
        fetched / "schema" / "overrides" / "Users.json",
        {"dataSet": "Users", "columns": [{"name": "Pronouns", "dataType": "nvarchar", "size": "50"}]},
    )
    assert main(["verify", "Users.csv"]) == 0
    assert capsys.readouterr().out == f"Users.csv: matches Users ({len(header) + 1} columns).\n"


def test_verifyChecksSeveralFilesAndNamesTheDataSetWhenTold(fetched, capsys):
    (fetched / "Users.csv").write_text(",".join(usersHeader(fetched)) + "\n", encoding="utf-8")
    (fetched / "export.csv").write_text(",".join(usersHeader(fetched)) + "\n", encoding="utf-8")
    assert main(["verify", "Users.csv", "export.csv", "--data-set", "Users"]) == 0
    assert capsys.readouterr().out.count("matches Users") == 2


def test_verifyCannotGuessTheDataSetOfAnOddFileName(fetched, capsys):
    (fetched / "export.csv").write_text("UserId\n", encoding="utf-8")
    assert main(["verify", "export.csv"]) == 2
    assert capsys.readouterr().err == "Error: Cannot tell which data set export.csv holds. Name it with --data-set.\n"


# check, without a database


def test_countsAreSingularOnlyForOne():
    assert [countOf(count, "statement") for count in (0, 1, 2)] == ["0 statements", "1 statement", "2 statements"]


def test_checkWithABadUrlIsAnError(fetched, capsys):
    assert main(["check", "--url", "sqlite:///datahub.db"]) == 2
    assert capsys.readouterr().err.startswith("Error: Unknown database URL scheme 'sqlite'.")


# logging


def test_eachRunIsRecordedInTheLogFile(project):
    main(["fetch", "--cached"])
    log = (project / LOG_FILE).read_text(encoding="utf-8")
    assert "INFO fetch started: " in log
    assert "cached=True" in log
    assert f"INFO Wrote {DATA_SET_COUNT} data sets from {PAGE_COUNT} pages to schema\n" in log
    assert "INFO fetch finished with exit code 0\n" in log


def test_logLinesStartWithTheDateAndTime(project):
    main(["fetch", "--cached"])
    lines = (project / LOG_FILE).read_text(encoding="utf-8").splitlines()
    assert all(re.match(r"\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2},\d{3} (DEBUG|INFO|WARNING|ERROR) ", line) for line in lines)


def test_laterRunsAddToTheSameLogFile(fetched):
    main(["generate", "--db", "mysql"])
    log = (fetched / LOG_FILE).read_text(encoding="utf-8")
    assert log.count(" started: ") == 2
    assert f"INFO mysql: wrote {DATA_SET_COUNT * 2} tables and " in log


def test_failureGoesToTheLogWithItsTracebackAndToTheConsoleAsOneLine(project, capsys):
    assert main(["generate"]) == 2
    assert capsys.readouterr().err == "Error: No data set files found in schema. Run 'datahubtable fetch' first.\n"
    log = (project / LOG_FILE).read_text(encoding="utf-8")
    assert "ERROR generate failed\nTraceback (most recent call last):\n" in log
    assert "SchemaError: No data set files found in schema." in log
    assert "INFO generate finished with exit code 2\n" in log


def test_warningsAreLogged(fetched):
    writeJson(fetched / "tableMap.json", {"mysql": {"Userz": "People"}})
    main(["generate", "--db", "mysql", "--name-map", "tableMap.json"])
    log = (fetched / LOG_FILE).read_text(encoding="utf-8")
    assert "WARNING tableMap.json names data sets that do not exist: Userz\n" in log


def test_logFileOptionPicksAnotherFile(project):
    assert main(["--log-file", "working/other.log", "fetch", "--cached"]) == 0
    assert "fetch finished with exit code 0" in (project / "working" / "other.log").read_text(encoding="utf-8")
    assert not (project / LOG_FILE).exists()


def test_logFileThatCannotBeWrittenIsAnError(project, capsys):
    (project / "blocker").write_text("a file where a directory is needed", encoding="utf-8")
    assert main(["--log-file", "blocker/run.log", "fetch", "--cached"]) == 2
    assert capsys.readouterr().err.startswith("Error: cannot write the log file blocker/run.log: ")


def test_passwordInTheDatabaseUrlIsKeptOutOfTheLog(fetched):
    assert main(["check", "--url", "sqlite://loader:hunter2@db.example.test/datahub"]) == 2
    log = (fetched / LOG_FILE).read_text(encoding="utf-8")
    assert "url=sqlite://loader:***@db.example.test/datahub" in log
    assert "hunter2" not in log
