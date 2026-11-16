# Test plan

A walkthrough to check every command works as expected. Run everything from the project root. Keep this file current whenever a command or option changes.

## Before you start

- [ ] `uv sync` finishes without errors.
- [ ] `docker compose -f tests/docker-compose.yml up -d --wait` reports mysql, postgres, and oracle as healthy.
- [ ] `uv run pytest` passes with no skipped tests and no warnings.
- [ ] `uv run --with pyright pyright src tests examples` reports 0 errors.

## Help

- [ ] `uv run datahubGetSchema --help` lists `fetch`, `generate`, `check`, and `verify`, plus the `--traceback` and `--log-file` options, available examples, and exit codes.
- [ ] `fetch --help`, `generate --help`, `check --help`, and `verify --help` each describe their own options.
- [ ] `uv run datahubGetSchema` with no command prints usage and exits with code 2.

## fetch

- [ ] `uv run datahubGetSchema fetch` prints one progress line per page and ends with `Wrote N datasets from M pages to schema`.
- [ ] `working/docs/` holds one JSON file per page downloaded.
- [ ] `schema/` holds one JSON file per dataset. Open `schema/Users.json` and confirm `"kind": "BDS"` and that `UserId` has `"dataType": "int"` and `"isPrimaryKey": true`.
- [ ] `schema/ADSAllGrades.json` has `"kind": "ADS"` and columns with `"dataType": "text"`.
- [ ] `schema/overrides/` is unchanged by the fetch.
- [ ] `uv run datahubGetSchema fetch --cached` gives the same count without using the network. Turn off your internet to confirm it actually didn't reach out.
- [ ] `uv run datahubGetSchema fetch --cached --cache-dir working/empty` exits with code 2 and says you need to run `datahubGetSchema fetch` first.
- [ ] `uv run datahubGetSchema fetch --cached --schema-dir working/schemaCopy` writes the JSON files there and prints no change list, because it's the first fetch into that directory.

**Change list:**

- [ ] Running `fetch --cached` twice in a row ends with `No changes since the last fetch.`
- [ ] Edit `schema/Users.json`: delete the last column and change the `size` of `FirstName` to `20`. Run `fetch --cached`. It reports `2 changes since the last fetch`, one `new column` line and one `type changed from nvarchar 20 to nvarchar 64` line, and the file is back to the documented definition.
- [ ] Copy `schema/Users.json` to `schema/Retired.json` and change its `name` to `Retired`. Run `fetch --cached`. It reports `Removed dataset: Retired` and lists `schema/Retired.json` as no longer documented. Delete the copy.
- [ ] The change lines are also in `working/logs/datahubGetSchema.log`.
## generate

- [ ] `uv run datahubGetSchema generate` prints one line each for mysql, oracle and postgres, with a table count of twice the data sets and an index count.
- [ ] `sql/mysql/`, `sql/oracle/` and `sql/postgres/` each hold two `.sql` files per data set plus `create_all.sql`.
- [ ] `sql/mysql/GradeSchemes.sql`, `sql/oracle/GRADE_SCHEMES.sql` and `sql/postgres/grade_schemes.sql` start with the data set name and source URL, and end with a `CREATE INDEX` on the org unit column.
- [ ] `sql/mysql/GradeSchemes_LOAD.sql` is labeled as a staging table, has the same columns and primary key, and has no `CREATE INDEX`.
- [ ] `sql/mysql/UserEnrollments.sql` has indexes on `UserId` and `RoleId` and none on `OrgUnitId`, which leads the primary key.
- [ ] `sql/mysql/OutcomesDemonstrations.sql` has no index on `AlignedObjectId`, and `sql/postgres/outcomes_demonstrations.sql` has one.
- [ ] `sql/mysql/SurveyUserAnswers.sql` has the "No primary key" comment and no `PRIMARY KEY` line.
- [ ] `sql/oracle/ADS_ALL_GRADES.sql` has every column as `VARCHAR2(4000 CHAR)`, and `sql/postgres/ads_all_grades.sql` has every column as `TEXT`.
- [ ] `sql/oracle/ADS_IMPERSONATED_SESSION_HISTORY.sql` has `NUMBER(10)`, `VARCHAR2(540 CHAR)` and `TIMESTAMP(7)` columns.
- [ ] `uv run datahubGetSchema generate --db oracle --out working/sqlOracle` writes only `working/sqlOracle/oracle/`.
- [ ] `uv run datahubGetSchema generate --db postgres --no-staging --no-indexes --out working/sqlPlain` writes one file per data set, no `_load` files, and no `CREATE INDEX` in `create_all.sql`.
- [ ] `uv run datahubGetSchema generate --db mysql --prefix D2L_ --out working/sqlPrefix` writes `working/sqlPrefix/mysql/D2L_Users.sql` and `D2L_Users_LOAD.sql`.
- [ ] `uv run datahubGetSchema generate --db oracle --prefix D2L_ --name-map examples/tableMap.example.json --out working/sqlMap` writes `D2L_USER.sql`, `D2L_USER_LOAD.sql`, `D2L_GRADE_SCHEME.sql` and `D2L_RPT_ALL_GRADES.sql` from the map, and `D2L_USER_LOGINS.sql` from the prefix.
- [ ] A name map with a misspelled data set name prints a warning that names the entry and still exits with code 0.
- [ ] A name map with a section for an unknown database, such as `"mssql"`, exits with code 2.
- [ ] `uv run datahubGetSchema generate --schema-dir working/empty` exits with code 2 and says to run `datahubGetSchema fetch` first.
- [ ] `uv run datahubGetSchema generate --db sqlite` is rejected by the argument parser.

## Override files

Work in a copy so the real schema stays untouched: copy `schema/` to `working/schemaCopy/` and pass `--schema-dir working/schemaCopy --out working/sqlOverride` to each command.

- [ ] Copy `examples/override.example.json` to `working/schemaCopy/overrides/ADSAllGrades.json` and run `generate --db postgres`. In `ads_all_grades.sql`, `userid` is `INTEGER`, `orgdefinedid` is `VARCHAR(256)`, `gradelastmodified` is `TIMESTAMP(6)`, `graderorgdefinedid` is gone, and `loadbatch` is the last column.
- [ ] The log has an `Applied override ADSAllGrades.json` line.
- [ ] Delete `working/schemaCopy/overrides/ADSImpersonatedSessionHistory.json` and run `generate`. It exits with code 2 and names the `navchar` type and its column.
- [ ] An override whose `dataSet` matches nothing exits with code 2 and names the file.
- [ ] An override with a misspelled setting, such as `"type"` for `"dataType"`, exits with code 2 and names the file, the column and the setting.
- [ ] An override that adds a column without a `dataType` exits with code 2.
- [ ] An override that removes a column the data set lacks exits with code 2.
- [ ] `fetch --cached --schema-dir working/schemaCopy` leaves the files in `working/schemaCopy/overrides/` as they were.

## check

Use the test containers. Set the password first with `$env:DATAHUB_DB_PASSWORD = 'datahubTest'` in PowerShell or `export DATAHUB_DB_PASSWORD=datahubTest` in a POSIX shell.

Repeat this section for each URL:

- `mysql://datahub@127.0.0.1:33306/datahub`
- `postgresql://datahub@127.0.0.1:35432/datahub`
- `oracle://datahub@127.0.0.1:31521/FREEPDB1`

On an empty database, running `uv run datahubGetSchema check --url <url>` reports one statement per table and index, writes `working/upgrade/<database>_upgrade.sql`, and exits with code 1. Run the script against the database - it finishes without errors. Running `check` again shows that all tables match and exits with code 0. The script file now says there's nothing to do.

Insert a row into the Users table, then manually drop one non-key column, shorten one string column, drop one whole table, and add a column D2L doesn't document. `check` reports statements for the dropped table and its indexes, an add column statement, a widening statement, and lists the undocumented column as a difference. Run the script - the row inserted earlier is still there with its values unchanged. Running `check` again shows 0 statements and the 1 remaining difference.

Drop one foreign key index manually. `check` reports 1 statement, a `CREATE INDEX` for it. Drop a foreign key index and create one on the same column under your own name - `check` reports nothing for it. Drop a column from a `_LOAD` staging table manually - `check` writes an add column statement for the staging table. Change a number column to a text type manually - `check` reports it as a difference and the script has no statement for it. Drop the primary key from one table manually - `check` reports the key difference and the script has no statement for it. Running `check --no-staging --no-indexes` on the full database shows that the main tables match and says nothing about staging tables or indexes. On an empty database, running `check --no-staging --no-indexes` writes one `CREATE TABLE` per dataset and no `CREATE INDEX`. Running `check --url <url> --out working/custom.sql` writes the script to that path. Running `check` with the `--prefix` and `--name-map` used for `generate` looks for the prefixed and mapped table names. Add an override that changes a column's type, then run `check` on a database created before the override - the column is listed as a difference and the script has no statement for it.

**Password and errors:**

With `DATAHUB_DB_PASSWORD` unset and no password in the URL, `check` prompts for the password. A password in the URL works with the variable unset. A wrong password exits with code 2 and prints one `Error:` line. Running `uv run datahubGetSchema --traceback check --url <url>` with a wrong password prints the Python traceback. Running `check --url sqlite:///x.db` exits with code 2 and lists the supported URL schemes. Running `check --url mysql://127.0.0.1/datahub` exits with code 2 and shows the expected URL form.
## verify

Use real Data Hub extract files where you have them. This command hasn't been run against real extracts yet, so note anything that looks wrong.

Running `uv run datahubGetSchema verify <a Brightspace dataset extract .zip>` finds the dataset from the filename and reports either a match or a list of differences. The same file unzipped to `.csv` gives the same result. Running `verify` with several files shows each one on its own line. Quoted wildcards like `uv run datahubGetSchema verify "extracts/*.csv"` leave them alone, reporting every matching file in name order. On Windows, run it unquoted in PowerShell and Command Prompt too. A wildcard that matches no files exits with code 2 and says `No files match working/empty/*.csv.` Running `verify` on an Advanced dataset extract with `--data-set "ADS All Grades"` checks the file against that dataset. If a CSV header has one column removed and one added, it reports both and prints the hint about `schema/overrides`, then exits with code 1. A CSV with documented columns in a different order shows the order difference and exits with code 1. After adding an override for reported differences, running `verify` on the same file exits with code 0. A file named `export.csv` exits with code 2 and asks for `--data-set`. A file named `EnrollmentsandWithdrawals.csv` exits with code 2 and lists both the Brightspace and Advanced dataset of that name. Running `--data-set "No Such Set"` exits with code 2. A zip with no CSV inside, or an empty CSV, each exit with code 2.

## Logging

After any command, `working/logs/datahubGetSchema.log` has a `started` line with the command's options, the lines it printed, and a `finished with exit code` line. Each line starts with the date and time. A second command adds to the same file instead of replacing it. Running `uv run datahubGetSchema fetch` (not `--cached`) logs one `DEBUG GET /articles...` line per request, plus a `DEBUG Downloading N pages with W workers` line where W is your CPU cores minus one. When something goes wrong, `generate --schema-dir working/empty` prints an `Error:` line, and the log has `ERROR generate failed` followed by the Python traceback. The `check` command logs `Connecting to <database> at user@host:port/database` and `Read N tables from the database`. When a password's in the URL, the log shows it with `***` in place - search for the password to confirm it's absent. With more than 20 differences, the console stops at 20 but the log has a `Difference:` line for every one. A name map with a misspelled dataset name logs a `WARNING` line. Running `verify` logs the result line for each file. To write to another log file, put `--log-file working/logs/other.log generate` - it writes there and leaves the default log untouched. Trying to write to an unwritable path like `README.md/run.log` exits with code 2 and says you can't write the log file.
## Examples

Running `uv run python examples/printCreateTable.py "Grade Schemes"` prints a main table, an index, and a staging table for each of the three databases. Running `uv run python examples/printCreateTable.py "ADS All Grades"` shows tables with text columns and no indexes. Running `uv run python examples/printCreateTable.py "No Such Dataset"` says there's no such dataset and exits with code 1. Running `uv run python examples/planUpgradeOffline.py` prints an upgrade script with one `MODIFY COLUMN` and one `ADD COLUMN`.

## Afterward

Run `docker compose -f tests/docker-compose.yml down -v` to remove the test databases, then clean up the scratch directories you made above under `working/`.
