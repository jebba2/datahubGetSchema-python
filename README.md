# datahubtable

`datahubtable` writes the SQL that creates a table for every D2L Brightspace Data Hub data set, for MySQL, Oracle and PostgreSQL. It can also compare the tables in an existing database with the current D2L documentation and write a script that brings them up to date without touching the rows already loaded.

The column definitions come from D2L's own documentation pages: the [Brightspace Data Sets](https://community.d2l.com/brightspace/kb/categories/1229-brightspace-data-sets) category and the [list of Advanced Data Sets](https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets). As of the last fetch that is 146 Brightspace Data Sets and 19 Advanced Data Sets across 44 pages.

Each data set gets a main table, a `_LOAD` staging table, and an index on each foreign key column of the main table. That comes to 330 tables and about 320 indexes per database.

## Setup

The project uses [uv](https://docs.astral.sh/uv/) for packages and scripts. Install uv, then from the project root run:

```sh
uv sync
```

That creates the virtual environment and installs the database drivers (PyMySQL, psycopg and python-oracledb). All three are pure Python or ship their own binaries, so no database client software is needed.

## How it works

The tool has four commands.

1. `fetch` downloads the documentation pages, writes one JSON file per data set into `schema/`, and lists what changed since the last fetch.
2. `generate` reads `schema/` and writes SQL into `sql/mysql/`, `sql/oracle/` and `sql/postgres/`.
3. `check` connects to a database, compares its tables and indexes with `schema/`, and writes an upgrade script.
4. `verify` compares the header row of real extract files with `schema/`, to catch places where the documentation is wrong.

`schema/` and `sql/` hold the results of the last run and are meant to be kept with the project. Corrections to the documentation go in `schema/overrides/`, which `fetch` never touches. `generate`, `check` and `verify` all read the schema with the overrides applied.

Run `fetch` and `generate` again when D2L announces a new Brightspace Data Sets version, and read the change list before you upgrade a database.

## Commands

### fetch

```sh
uv run datahubtable fetch
uv run datahubtable fetch --cached
```

`fetch` downloads every page, saves the raw pages in `working/docs/`, and writes `schema/<DataSetName>.json`. `--cached` rebuilds the JSON from the saved pages without using the network.

After the first fetch, each later one ends with what changed in the documentation. The data set and column in this sample are made up:

```
Wrote 165 data sets from 44 pages to schema
3 changes since the last fetch:
  New data set: Course Awards (9 columns)
  Users: new column Pronouns (nvarchar 50)
  Users.FirstName: type changed from nvarchar 64 to nvarchar 128
```

The list covers new and removed data sets, new and removed columns, and changes to a column's type, size, keys or nullability. Rewording of descriptions is left out. The same lines go to the log file, so the history of changes is kept there.

If D2L removes a data set, its JSON file stays in `schema/` and `fetch` lists it so you can decide whether to delete it.

| Option | Default | Meaning |
| --- | --- | --- |
| `--cached` | off | Use the pages saved by an earlier fetch |
| `--cache-dir` | `working/docs` | Where downloaded pages are kept |
| `--schema-dir` | `schema` | Where the data set JSON files go |

### generate

```sh
uv run datahubtable generate
uv run datahubtable generate --db oracle
uv run datahubtable generate --db oracle --prefix D2L_ --name-map examples/tableMap.example.json --out working/sql
uv run datahubtable generate --no-staging --no-indexes
```

Each database gets its own directory holding one file per table plus `create_all.sql`, which contains every table and index and can be run by itself. A main table's file holds its `CREATE TABLE` followed by its `CREATE INDEX` statements. Its staging table has a file of its own.

| Option | Default | Meaning |
| --- | --- | --- |
| `--db` | `all` | `mysql`, `oracle`, `postgres` or `all` |
| `--out` | `sql` | Directory that gets one subdirectory per database |
| `--schema-dir` | `schema` | Where the data set JSON files and `overrides/` are |
| `--prefix` | none | Text put in front of every derived table name |
| `--name-map` | none | JSON file of table names that override the derived ones |
| `--no-staging` | off | Leave out the `_LOAD` staging tables |
| `--no-indexes` | off | Leave out the indexes on foreign key columns |

### check

```sh
uv run datahubtable check --url mysql://loader@dbhost:3306/datahub
uv run datahubtable check --url postgresql://loader@dbhost:5432/datahub
uv run datahubtable check --url oracle://loader@dbhost:1521/FREEPDB1 --prefix D2L_ --name-map tableMap.json
```

`check` only reads the database. It writes the upgrade script to `working/upgrade/<database>_upgrade.sql` for you to review and run yourself. For Oracle the last part of the URL is the service name. The tables checked are those in the schema the user logs in to.

The password comes from the first of these that is set: the URL (`user:password@host`), the `DATAHUB_DB_PASSWORD` environment variable, or a prompt. Prefer the environment variable or the prompt, because a password in the URL ends up in your shell history.

Use the same `--prefix`, `--name-map`, `--no-staging` and `--no-indexes` you used with `generate`, so `check` looks for the same tables. With `--no-staging`, staging tables that exist are ignored, not reported.

| Option | Default | Meaning |
| --- | --- | --- |
| `--url` | required | Database to check |
| `--out` | `working/upgrade/<database>_upgrade.sql` | Upgrade script to write |
| `--schema-dir` | `schema` | Where the data set JSON files and `overrides/` are |
| `--prefix`, `--name-map`, `--no-staging`, `--no-indexes` | | Same as for `generate` |

Example output for a database that has drifted:

```
postgres: 3 statements to run, 1 difference left for you.
  users.loadbatch: not in the D2L documentation. It was left in place.
Upgrade script: working/upgrade/postgres_upgrade.sql
```

### verify

```sh
uv run datahubtable verify extracts/Users_2026-11-01.zip
uv run datahubtable verify extracts/*.csv
uv run datahubtable verify report.csv --data-set "ADS All Grades"
```

`verify` reads the first row of each file and compares the column names with the data set's documented columns. A file is a CSV, or a zip with a CSV inside. Names are compared without regard to case, spaces or punctuation.

The data set is the one whose name the file name starts with, so `UserLogins_2026-11-01.zip` is checked against User Logins. When the file name does not say, or a Brightspace Data Set and an Advanced Data Set share the name, pass `--data-set`.

```
Users.csv: 2 differences from Users:
  DateDeleted is documented but is not in the file.
  Pronouns is in the file but is not documented.
Correct the schema with an override file in schema/overrides, then run generate again.
```

`verify` reports missing columns, extra columns, and, when the columns are the same, a different order. It does not read the data rows.

This command has only been tested with files written from the schema. It has not been run against a real Data Hub extract yet, so treat its first run on your files as part of testing it.

| Option | Default | Meaning |
| --- | --- | --- |
| `files` | required | One or more `.csv` or `.zip` extract files |
| `--data-set` | from the file name | Data set the files hold, such as `"Users"` or `"ADS All Grades"` |
| `--schema-dir` | `schema` | Where the data set JSON files and `overrides/` are |

### Exit codes

| Code | Meaning |
| --- | --- |
| 0 | Success. For `check` and `verify`, nothing differs. |
| 1 | `check` or `verify` found something to run or report. |
| 2 | Error. The traceback is in the log file. Add `--traceback` before the command name to print it too. |

## Override files

D2L's pages are sometimes behind the real extract, sometimes wrong, and for most Advanced Data Sets they give no types at all. An override file corrects one data set. Put it in `schema/overrides/`, with any file name ending in `.json`. A new `fetch` leaves it alone.

```json
{
    "dataSet": "ADS All Grades",
    "reason": "Types seen in our extract.",
    "columns": [
        {"name": "User Id", "dataType": "int", "size": "4"},
        {"name": "Grade Last Modified", "dataType": "datetime2", "size": "8"},
        {"name": "Grader Org Defined Id", "remove": true},
        {"name": "Load Batch", "dataType": "nvarchar", "size": "50"}
    ]
}
```

- `dataSet` is the data set's name as D2L writes it. An Advanced Data Set has `ADS` in front.
- `reason` is optional and is for whoever reads the file later.
- A column entry that names an existing column changes only the settings it lists. The settings are the ones in the schema JSON: `dataType`, `size`, `isPrimaryKey`, `isForeignKey`, `canBeNull`, `description` and `versionHistory`.
- An entry with a new name adds a column at the end. It needs a `dataType`.
- `"remove": true` drops a column.

A misspelled data set, column to remove, or setting name stops the command with an error that names the file. Applied overrides are recorded in the log.

The project ships one override, [schema/overrides/ADSImpersonatedSessionHistory.json](schema/overrides/ADSImpersonatedSessionHistory.json), because D2L's page misspells `nvarchar` as `navchar` for two columns. [examples/override.example.json](examples/override.example.json) shows every kind of correction.

Changing a column's type in an override does not convert an existing table. `check` reports the column as a difference for you to convert by hand, because a type conversion can change stored values.

## Logging

Every run adds to `working/logs/datahubtable.log`. Each command records the options it started with, the same lines it prints to the console, and its exit code. `fetch` also records each request it sends to D2L, and `check` records which database it connected to, how many tables it read, and every difference it found, including the ones the console cuts off after the first 20.

When a command fails, the console shows one `Error:` line and the log holds the full Python traceback.

```
2026-11-14 17:36:38,931 INFO check started: name_map=None no_indexes=False no_staging=False out=None prefix= schema_dir=schema url=postgresql://datahub:***@127.0.0.1:35432/datahub
2026-11-14 17:36:38,944 INFO Connecting to postgres at datahub@127.0.0.1:35432/datahub
2026-11-14 17:36:39,144 INFO Read 0 tables from the database
2026-11-14 17:36:39,148 INFO postgres: 652 statements to run, 0 differences left for you.
2026-11-14 17:36:39,148 INFO Upgrade script: working/upgrade/postgres_upgrade.sql
2026-11-14 17:36:39,148 INFO check finished with exit code 1
```

A password in the database URL is written as `***`. The log starts a new file at 1 MB and keeps the three before it (`datahubtable.log.1` to `.3`).

To log somewhere else, put `--log-file` before the command name:

```sh
uv run datahubtable --log-file working/logs/nightly.log check --url mysql://loader@dbhost:3306/datahub
```

## What the upgrade script does and does not do

The script contains only four kinds of statement.

- `CREATE TABLE` for a main or staging table that does not exist yet.
- `ADD COLUMN` for a documented column the table lacks. New columns are always nullable, so existing rows stay valid.
- A widening `ALTER` when a column is too short for the documented size, such as `VARCHAR(64)` to `VARCHAR(128)` or `INT` to `BIGINT`.
- `CREATE INDEX` for a foreign key column that no index starts with. An index you created under another name counts, so nothing is duplicated.

Everything else is listed as a comment at the end of the script and printed by `check`, and the table is left alone. That covers:

- a column whose type is a different kind from the documented one, such as text where a number is expected
- a decimal column whose scale differs
- a primary key that differs from the documented one
- a column in the table that D2L does not document, which stays in place
- an Oracle column that needs to become a `CLOB`, or an Oracle `NVARCHAR2` column that needs widening, because Oracle cannot make those changes in place

A column that is wider than the documentation asks for is fine and is never reported. Extra indexes are never reported. Table and column names are matched without regard to case.

One MySQL detail to know. `MODIFY COLUMN` replaces a column's whole definition. The script repeats the column's character set, collation and nullability so those stay the same, but a column default or column comment would be dropped. Tables created by this tool have neither.

## Table, column and index names

Table names are derived from the D2L data set name. Punctuation is dropped. Advanced Data Sets get `ADS` in front, because some share a name with a Brightspace Data Set (both kinds have an Enrollments and Withdrawals).

| Data set | MySQL | Oracle | PostgreSQL |
| --- | --- | --- | --- |
| Grade Schemes | `GradeSchemes` | `GRADE_SCHEMES` | `grade_schemes` |
| Grade Schemes, staging | `GradeSchemes_LOAD` | `GRADE_SCHEMES_LOAD` | `grade_schemes_load` |
| All Grades (Advanced) | `ADSAllGrades` | `ADS_ALL_GRADES` | `ads_all_grades` |
| Grade Schemes with `--prefix D2L_` | `D2L_GradeSchemes` | `D2L_GRADE_SCHEMES` | `d2l_grade_schemes` |

Column names are the D2L field names in the case each database gives unquoted names: `OrgUnitId` in MySQL, `ORGUNITID` in Oracle, `orgunitid` in PostgreSQL. Advanced Data Set fields are written with spaces and punctuation, which are dropped, so "Org Defined Id" becomes `OrgDefinedId`. A column name therefore still equals its CSV header when you compare without regard to case, spaces or punctuation.

Index names are `IX_<table>_<column>` in the database's case, such as `IX_GradeSchemes_OrgUnitId`. A name too long for the database is cut and ends with eight characters of a hash, so it stays unique.

Every identifier is quoted in the scripts, because a few D2L field names are reserved words (`Group`, `Action`, `Order`). Quote those columns in your own queries too.

### Name map file

To use different table names, for example to match tables that already exist, pass a JSON file with `--name-map`. It has a section per database, and each section maps a data set name to a table name. Advanced Data Sets are named with `ADS` in front. A mapped name is used exactly as written, without the prefix, and its staging table is that name plus `_LOAD`. Data sets you leave out keep their derived names.

```json
{
    "mysql": { "Grade Schemes": "GradeScheme" },
    "oracle": { "Grade Schemes": "D2L_GRADE_SCHEME", "ADS All Grades": "D2L_RPT_ALL_GRADES" }
}
```

See [examples/tableMap.example.json](examples/tableMap.example.json). The tool warns about entries that match no data set, which usually means a typo.

## Column types

| D2L type | MySQL | Oracle | PostgreSQL |
| --- | --- | --- | --- |
| `smallint` | `SMALLINT` | `NUMBER(5)` | `SMALLINT` |
| `int`, `integer` | `INT` | `NUMBER(10)` | `INTEGER` |
| `int` documented with size 8 | `BIGINT` | `NUMBER(19)` | `BIGINT` |
| `bigint` | `BIGINT` | `NUMBER(19)` | `BIGINT` |
| `bit` | `TINYINT(1)` | `NUMBER(1)` | `BOOLEAN` |
| `nvarchar(n)`, `varchar(n)`, n up to 1000 | `VARCHAR(n)` | `VARCHAR2(n CHAR)` | `VARCHAR(n)` |
| `nvarchar(n)`, `varchar(n)`, n over 1000 | `TEXT` (`LONGTEXT` over 16,383) | `CLOB` | `VARCHAR(n)` |
| `datetime2`, `datetime` | `DATETIME(6)` | `TIMESTAMP(7)` | `TIMESTAMP(6)` |
| `uniqueidentifier` | `CHAR(36)` | `VARCHAR2(36 CHAR)` | `UUID` |
| `decimal(p,s)` | `DECIMAL(p,s)` | `NUMBER(p,s)` | `NUMERIC(p,s)` |
| `float` | `DOUBLE` | `BINARY_DOUBLE` | `DOUBLE PRECISION` |
| `text` (no documented type) | `TEXT` | `VARCHAR2(4000 CHAR)` | `TEXT` |

Some reasons behind the table:

- Strings over 1000 characters become `TEXT` in MySQL because a MySQL row holds at most 65,535 bytes of `VARCHAR` data, and the LTI Launches data set alone documents more than 20,000 characters of strings.
- The same strings become `CLOB` in Oracle because a `VARCHAR2` holds 4000 bytes by default, and 1000 characters at up to 4 bytes each is the most that is sure to fit.
- Dates are UTC and stored without a time zone. MySQL and PostgreSQL keep 6 fractional digits, one fewer than `datetime2`.
- MySQL tables are created as InnoDB with the `utf8mb4` character set.

A type or size the tool does not know stops `generate` with an error that names the column, so a new D2L type cannot slip through as a wrong guess. Fix it with an override file or by adding the type to the tool.

## Advanced Data Sets

D2L documents 19 Advanced Data Sets on one page. For 18 of them the page lists each field's name, description and whether it can be null, but no type or size. Those columns have the type `text` in the schema JSON and become plain text columns.

That keeps the tool from guessing, and it means these tables are not much use for sorting or arithmetic until you say what the types are. Set them with an override file as you learn them from your own extracts.

Things to know about them:

- In Oracle a `text` column is `VARCHAR2(4000 CHAR)`, so it can still be joined and filtered. A value over 4000 bytes is rejected when loaded. Give such a column a long `nvarchar` type in an override to make it a `CLOB`.
- CPD Records documents a field named `Answer(1...N)`, which stands for a varying number of answer columns. The table gets one column named `Answer1N`. Run `verify` on a real extract and replace that column with the real ones in an override.
- Impersonated Session History is the one Advanced Data Set with documented types.
- Advanced Data Sets have no documented keys, so their tables have no primary key and no indexes.

## Keys, indexes and nullability

Columns D2L marks `PK` become the table's primary key and are `NOT NULL`. Every other column is nullable, even where D2L's description does not say "Field can be null". Those notes are not complete, and a wrong `NOT NULL` would reject rows during a load. The JSON still records what D2L says in `canBeNull`.

If D2L documents a key column as nullable, the table gets no primary key and its script says why. Today that is two data sets, Assignment Submissions (`SubmitterType`) and Survey User Answers (`QuestionVersionId`).

Columns D2L marks `FK` get an index on the main table. Three cases are skipped:

- A foreign key that is the first column of the primary key, because the key's own index already covers it.
- A string too long for the database to index: over 768 characters in MySQL and over 1000 in Oracle. Today that is one column in MySQL, `AlignedObjectId` in Outcomes Demonstrations.
- Staging tables, which are filled and emptied in bulk and are not joined.

Foreign key constraints are not created. Extracts arrive one data set at a time and differential files can reference rows you have not loaded yet, so constraints would make loads fail.

## Staging tables

Each data set gets a second table with `_LOAD` after its name. It has the same columns, types and primary key as the main table. The intent is that a loader fills the staging table from an extract file and then merges its rows into the main table.

Because the staging table has the primary key, a file that holds the same key twice is rejected when loaded. `check` keeps staging tables in step with their main tables.

## What is not covered

- Loading extracts into the tables. This tool only makes and maintains the tables.
- Checking the data rows of an extract. `verify` reads only the header row.
- Converting a column from one kind of type to another. `check` reports it.
- Oracle versions before 12.2, which limit names to 30 characters.

## Examples

Run these from the project root.

```sh
uv run python examples/printCreateTable.py "Grade Schemes"
uv run python examples/printCreateTable.py "ADS All Grades"
uv run python examples/planUpgradeOffline.py
uv run datahubtable generate --db oracle --prefix D2L_ --name-map examples/tableMap.example.json --out working/examples/sql
```

The first two print one data set's main table, indexes and staging table for all three databases. The third builds an upgrade plan for a made-up older table without needing a database.

## Project layout

```
schema/              one JSON file per data set, written by fetch
schema/overrides/    your corrections, never written by fetch
sql/mysql/           SQL scripts, written by generate
sql/oracle/
sql/postgres/
src/datahubtable/    the tool
  d2lDocs.py         downloads the documentation pages
  docParser.py       turns a page into data set definitions
  schema.py          data set model and JSON files
  overrides.py       applies the override files
  schemaChanges.py   lists what changed between two fetches
  naming.py          table names and the name map file
  tables.py          which tables and indexes each data set needs
  sqlTypes.py        database-neutral column types and how they compare
  dialects/          type mapping and SQL for each database
  generator.py       writes the SQL scripts
  database.py        database URLs and reading existing tables
  upgrade.py         plans the upgrade
  extractCheck.py    compares an extract's header row with the schema
  runLog.py          the log file
  cli.py             the commands
examples/            runnable examples, a sample name map, a sample override
tests/               unit tests, saved D2L pages, and end-to-end tests
working/             downloaded pages, upgrade scripts, logs, other run output
```

## Development

```sh
uv run pytest
uv run --with pyright pyright src tests examples
```

The suite includes end-to-end tests that need two things.

- Network access, for the tests that call the D2L community site.
- Three local databases, for the tests that create all the tables and indexes and run upgrades on real MySQL, PostgreSQL and Oracle. Start them with Docker before running the tests and remove them afterward.

```sh
docker compose -f tests/docker-compose.yml up -d --wait
uv run pytest
docker compose -f tests/docker-compose.yml down -v
```

The database tests skip themselves, with a message, when a container is not running. They drop every table in the schema they connect to, so their URLs are fixed to the test containers on ports 33306, 35432 and 31521.

[TESTPLAN.md](TESTPLAN.md) has the manual checklist for every command.
