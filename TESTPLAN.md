# Test plan

A manual walk through every command. Run everything from the project root. Keep this file current when a command or option changes.

## Before you start

- [ ] `uv sync` finishes without errors.
- [ ] `docker compose -f tests/docker-compose.yml up -d --wait` reports mysql, postgres and oracle as healthy.
- [ ] `uv run pytest` passes with no skipped tests and no warnings.
- [ ] `uv run --with pyright pyright src tests examples` reports 0 errors.

## Help

- [ ] `uv run datahubtable --help` lists `fetch`, `generate`, `check` and `verify`, the `--traceback` and `--log-file` options, the examples, and the exit codes.
- [ ] `fetch --help`, `generate --help`, `check --help` and `verify --help` each describe their options.
- [ ] `uv run datahubtable` with no command prints usage and exits with code 2.

## fetch

- [ ] `uv run datahubtable fetch` prints one progress line per page and ends with `Wrote N data sets from M pages to schema`.
- [ ] `working/docs/` holds one JSON file per page.
- [ ] `schema/` holds one JSON file per data set. Open `schema/Users.json` and confirm `"kind": "BDS"` and that `UserId` has `"dataType": "int"` and `"isPrimaryKey": true`.
- [ ] `schema/ADSAllGrades.json` has `"kind": "ADS"` and columns with `"dataType": "text"`.
- [ ] `schema/overrides/` is unchanged by the fetch.
- [ ] `uv run datahubtable fetch --cached` gives the same count without using the network. Turn off the network to confirm.
- [ ] `uv run datahubtable fetch --cached --cache-dir working/empty` exits with code 2 and says to run `datahubtable fetch` first.
- [ ] `uv run datahubtable fetch --cached --schema-dir working/schemaCopy` writes the JSON files there and prints no change list, because it is the first fetch into that directory.

Change list:

- [ ] `fetch --cached` twice in a row ends with `No changes since the last fetch.`
- [ ] Edit `schema/Users.json`: delete the last column and change the `size` of `FirstName` to `20`. Run `fetch --cached`. It reports `2 changes since the last fetch`, one `new column` line and one `type changed from nvarchar 20 to nvarchar 64` line, and the file is back to the documented definition.
- [ ] Copy `schema/Users.json` to `schema/Retired.json` and change its `name` to `Retired`. Run `fetch --cached`. It reports `Removed data set: Retired` and lists `schema/Retired.json` as no longer documented. Delete the copy.
- [ ] The change lines are also in `working/logs/datahubtable.log`.

## generate

- [ ] `uv run datahubtable generate` prints one line each for mysql, oracle and postgres, with a table count of twice the data sets and an index count.
- [ ] `sql/mysql/`, `sql/oracle/` and `sql/postgres/` each hold two `.sql` files per data set plus `create_all.sql`.
- [ ] `sql/mysql/GradeSchemes.sql`, `sql/oracle/GRADE_SCHEMES.sql` and `sql/postgres/grade_schemes.sql` start with the data set name and source URL, and end with a `CREATE INDEX` on the org unit column.
- [ ] `sql/mysql/GradeSchemes_LOAD.sql` is labeled as a staging table, has the same columns and primary key, and has no `CREATE INDEX`.
- [ ] `sql/mysql/UserEnrollments.sql` has indexes on `UserId` and `RoleId` and none on `OrgUnitId`, which leads the primary key.
- [ ] `sql/mysql/OutcomesDemonstrations.sql` has no index on `AlignedObjectId`, and `sql/postgres/outcomes_demonstrations.sql` has one.
- [ ] `sql/mysql/SurveyUserAnswers.sql` has the "No primary key" comment and no `PRIMARY KEY` line.
- [ ] `sql/oracle/ADS_ALL_GRADES.sql` has every column as `VARCHAR2(4000 CHAR)`, and `sql/postgres/ads_all_grades.sql` has every column as `TEXT`.
- [ ] `sql/oracle/ADS_IMPERSONATED_SESSION_HISTORY.sql` has `NUMBER(10)`, `VARCHAR2(540 CHAR)` and `TIMESTAMP(7)` columns.
- [ ] `uv run datahubtable generate --db oracle --out working/sqlOracle` writes only `working/sqlOracle/oracle/`.
- [ ] `uv run datahubtable generate --db postgres --no-staging --no-indexes --out working/sqlPlain` writes one file per data set, no `_load` files, and no `CREATE INDEX` in `create_all.sql`.
- [ ] `uv run datahubtable generate --db mysql --prefix D2L_ --out working/sqlPrefix` writes `working/sqlPrefix/mysql/D2L_Users.sql` and `D2L_Users_LOAD.sql`.
- [ ] `uv run datahubtable generate --db oracle --prefix D2L_ --name-map examples/tableMap.example.json --out working/sqlMap` writes `D2L_USER.sql`, `D2L_USER_LOAD.sql`, `D2L_GRADE_SCHEME.sql` and `D2L_RPT_ALL_GRADES.sql` from the map, and `D2L_USER_LOGINS.sql` from the prefix.
- [ ] A name map with a misspelled data set name prints a warning that names the entry and still exits with code 0.
- [ ] A name map with a section for an unknown database, such as `"mssql"`, exits with code 2.
- [ ] `uv run datahubtable generate --schema-dir working/empty` exits with code 2 and says to run `datahubtable fetch` first.
- [ ] `uv run datahubtable generate --db sqlite` is rejected by the argument parser.

## Override files

Work in a copy so the real schema is untouched: copy `schema/` to `working/schemaCopy/` and pass `--schema-dir working/schemaCopy --out working/sqlOverride` to each command.

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

- [ ] On an empty database, `uv run datahubtable check --url <url>` reports one statement per table and index, writes `working/upgrade/<database>_upgrade.sql`, and exits with code 1.
- [ ] Run the script against the database. It finishes without errors.
- [ ] `check` again reports that all tables match and exits with code 0. The script file now says there is nothing to do.
- [ ] Insert a row into the Users table, then by hand drop one non-key column, shorten one string column, drop one whole table, and add a column D2L does not document.
- [ ] `check` reports the statements for the dropped table and its indexes, an add column statement, and a widening statement, and lists the undocumented column as a difference.
- [ ] Run the script. The row inserted earlier is still there with its values unchanged.
- [ ] `check` again reports 0 statements and the 1 remaining difference.
- [ ] Drop one foreign key index by hand. `check` reports 1 statement, a `CREATE INDEX` for it.
- [ ] Drop a foreign key index and create one on the same column under a name of your own. `check` reports nothing for it.
- [ ] Drop a column from a `_LOAD` staging table by hand. `check` writes an add column statement for the staging table.
- [ ] Change a number column to a text type by hand. `check` reports it as a difference and the script has no statement for it.
- [ ] Drop the primary key from one table by hand. `check` reports the key difference and the script has no statement for it.
- [ ] `check --no-staging --no-indexes` on the full database reports that the main tables match and says nothing about staging tables or indexes.
- [ ] `check --no-staging --no-indexes` on an empty database writes one `CREATE TABLE` per data set and no `CREATE INDEX`.
- [ ] `check --url <url> --out working/custom.sql` writes the script to that path.
- [ ] `check` with the `--prefix` and `--name-map` used for `generate` looks for the prefixed and mapped table names.
- [ ] Add an override that changes a column's type, then run `check` on a database created before the override. The column is listed as a difference and the script has no statement for it.

Password and errors:

- [ ] With `DATAHUB_DB_PASSWORD` unset and no password in the URL, `check` prompts for the password.
- [ ] A password in the URL (`datahub:datahubTest@`) works with the variable unset.
- [ ] A wrong password exits with code 2 and prints one `Error:` line.
- [ ] `uv run datahubtable --traceback check --url <url>` with a wrong password prints the Python traceback.
- [ ] `check --url sqlite:///x.db` exits with code 2 and lists the supported URL schemes.
- [ ] `check --url mysql://127.0.0.1/datahub` exits with code 2 and shows the expected URL form.

## verify

Use real Data Hub extract files where you have them. This command has not been run against real extracts yet, so note anything that looks wrong.

- [ ] `uv run datahubtable verify <a Brightspace Data Set extract .zip>` finds the data set from the file name and reports either a match or a list of differences.
- [ ] The same file unzipped to `.csv` gives the same result.
- [ ] `verify` with several files reports each one on its own line.
- [ ] `verify <an Advanced Data Set extract> --data-set "ADS All Grades"` checks the file against that data set.
- [ ] A CSV whose header has one column removed and one added reports both, prints the hint about `schema/overrides`, and exits with code 1.
- [ ] A CSV with the documented columns in a different order reports the order difference and exits with code 1.
- [ ] After adding an override for the reported differences, `verify` on the same file exits with code 0.
- [ ] A file named `export.csv` exits with code 2 and asks for `--data-set`.
- [ ] A file named `EnrollmentsandWithdrawals.csv` exits with code 2 and lists both the Brightspace and the Advanced data set of that name.
- [ ] `--data-set "No Such Set"` exits with code 2.
- [ ] A zip with no CSV inside, and an empty CSV, each exit with code 2.

## Logging

- [ ] After any command, `working/logs/datahubtable.log` has a `started` line with the command's options, the lines the command printed, and a `finished with exit code` line. Each line starts with the date and time.
- [ ] A second command adds to the same file instead of replacing it.
- [ ] `uv run datahubtable fetch` (not `--cached`) logs one `DEBUG GET /articles...` line per request.
- [ ] `uv run datahubtable generate --schema-dir working/empty` prints one `Error:` line, and the log has `ERROR generate failed` followed by the Python traceback.
- [ ] `check` logs `Connecting to <database> at user@host:port/database` and `Read N tables from the database`.
- [ ] `check` with a password in the URL logs the URL with `***` in place of the password. Search the log for the password to confirm it is absent.
- [ ] With more than 20 differences, the console stops at 20 and the log has a `Difference:` line for every one.
- [ ] A name map with a misspelled data set name logs a `WARNING` line.
- [ ] `verify` logs the result line for each file.
- [ ] `uv run datahubtable --log-file working/logs/other.log generate` writes to `working/logs/other.log` and leaves the default log untouched.
- [ ] `uv run datahubtable --log-file README.md/run.log generate` exits with code 2 and says it cannot write the log file.

## Examples

- [ ] `uv run python examples/printCreateTable.py "Grade Schemes"` prints a main table, an index and a staging table for each of the three databases.
- [ ] `uv run python examples/printCreateTable.py "ADS All Grades"` prints tables with text columns and no indexes.
- [ ] `uv run python examples/printCreateTable.py "No Such Data Set"` says there is no such data set and exits with code 1.
- [ ] `uv run python examples/planUpgradeOffline.py` prints an upgrade script with one `MODIFY COLUMN` and one `ADD COLUMN`.

## Afterward

- [ ] `docker compose -f tests/docker-compose.yml down -v` removes the test databases.
- [ ] Delete the scratch directories made above under `working/`.
