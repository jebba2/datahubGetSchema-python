# datahubGetSchema

Hey there! 👋

`datahubGetSchema` is your go-to tool for generating SQL that creates tables for every D2L Brightspace Data Hub dataset, supporting MySQL, Oracle, and PostgreSQL databases. It can also compare existing database tables against current D2L documentation and generate an upgrade script that brings them up to date without touching the data already loaded.

The column definitions come from D2L's official documentation pages - you can find all the info in the [Brightspace Data Sets](https://community.d2l.com/brightspace/kb/categories/1229-brightspace-data-sets) category and the [list of Advanced Data Sets](https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets). As of the last fetch, that's 146 Brightspace Data Sets plus 19 Advanced Data Sets spread across 44 pages.

Each dataset gets a main table, a `_LOAD` staging table, and indexes on each foreign key column of the main table. That adds up to roughly 330 tables and about 320 indexes per database.

## Setup

The project uses [uv](https://docs.astral.sh/uv/) for packages and scripts. You need uv and git. uv downloads the right Python (3.13) by itself, so you do not have to install Python first.

### 1. Install uv

Linux:

```sh
curl -LsSf https://astral.sh/uv/install.sh | sh
```

If the machine has no `curl`, use `wget -qO- https://astral.sh/uv/install.sh | sh`.

macOS:

```sh
curl -LsSf https://astral.sh/uv/install.sh | sh
```

Or, with Homebrew, `brew install uv`.

Windows, in PowerShell:

```powershell
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
```

Or, with WinGet, `winget install --id=astral-sh.uv -e`.

Open a new terminal afterward so `uv` is on your `PATH`, and check it with `uv --version`. The [uv installation page](https://docs.astral.sh/uv/getting-started/installation/) lists other ways to install it.

### 2. Get the project and install it

These commands work the same on Linux, macOS, and Windows:
```sh
git clone https://github.com/jebba2/datahubGetSchema-python.git datahubGetSchema
cd datahubGetSchema
uv sync
```

`uv sync` creates the virtual environment in `.venv` and installs all the database drivers (PyMySQL, psycopg, and python-oracledb). All three are either pure Python or ship their own binaries, so you don't need to install any separate database client software.

Check that everything's installed correctly:
```sh
uv run datahubGetSchema --help
```

### Differences on Windows

Every `uv run datahubGetSchema ...` command in this file works as-is in both PowerShell and Command Prompt, including the ones with wildcards like `extracts/*.csv`. The only thing that differs is how you set the database password for `check`:

| Shell | Command |
| --- | --- |
| Linux and macOS (bash, zsh) | `export DATAHUB_DB_PASSWORD='yourPassword'` |
| Windows PowerShell | `$env:DATAHUB_DB_PASSWORD = 'yourPassword'` |
| Windows Command Prompt | `set DATAHUB_DB_PASSWORD=yourPassword` |

## How it works

The tool has four main commands:

1. **fetch** - Downloads the documentation pages, writes one JSON file per dataset into `schema/`, and lists what changed since the last fetch
2. **generate** - Reads `schema/` and writes SQL files into `sql/mysql/`, `sql/oracle/`, and `sql/postgres/`
3. **check** - Connects to a database, compares its tables and indexes with `schema/`, and writes an upgrade script
4. **verify** - Compares the header row of actual extract files with `schema/` to catch places where the documentation might be wrong

The `schema/` and `sql/` directories hold the results from your last run and should stay with the project. If you need to correct the documentation, those edits go in `schema/overrides/`, which `fetch` never touches. `generate`, `check`, and `verify` all read the schema with the overrides applied.

Run `fetch` and `generate` again when D2L announces a new Brightspace Data Sets version, and read the change list before you upgrade a database.

### fetch

This is your first stop - it grabs all the D2L documentation and converts it into JSON files we can actually work with.

```sh
uv run datahubGetSchema fetch
uv run datahubGetSchema fetch --cached
uv run datahubGetSchema fetch --log-file working/logs/fetch.log
```

**What each flag does:**

- `--cached` - Uses cached HTML from the last `fetch`, avoiding network requests entirely
- `--workers N` - Sets the number of parallel workers for downloading (default is half your CPU cores)
- `--schema-dir DIR` - Where to save the dataset JSON files (default: `schema`)
- `--log-file PATH` - Where to write the log file (default: `working/logs/datahubGetSchema.log`)

**Output:** One `.json` file per dataset in `schema/`. Each file contains all the column details, data types, and relationships.

### generate

Takes your schemas from `fetch` and produces ready-to-run SQL scripts for MySQL, Oracle, and PostgreSQL.

```sh
uv run datahubGetSchema generate
uv run datahubGetSchema generate --db oracle
uv run datahubGetSchema generate --db oracle --prefix D2L_ --name-map examples/tableMap.example.json --out working/sql
uv run datahubGetSchema generate --no-staging --no-indexes
```

Each database gets its own directory holding one file per table plus `create_all.sql`, which contains every table and index and can be run by itself. A main table's file holds its `CREATE TABLE` followed by its `CREATE INDEX` statements. Its staging table has a file of its own.

**What each flag does:**

- `--db DATABASE` - Which database to generate scripts for (default: generates for all three)
  - Accepted values: `mysql`, `oracle`, `postgres`, or `all`
- `--out DIR` - Where to write the SQL files (default: `sql`)
  - Creates `DIR/mysql/`, `DIR/oracle/`, `DIR/postgres/`
- `--schema-dir DIR` - Where the dataset JSON files and `overrides/` are located (default: `schema`)
- `--prefix PREFIX` - Text put in front of every derived table name
- `--name-map PATH` - A JSON file with table names that override the automatically derived ones
- `--no-staging` - Leave out the `_LOAD` staging tables
- `--no-indexes` - Leave out the indexes on foreign key columns

### check

```sh
uv run datahubGetSchema check --url mysql://loader@dbhost:3306/datahub
uv run datahubGetSchema check --url postgresql://loader@dbhost:5432/datahub
uv run datahubGetSchema check --url oracle://loader@dbhost:1521/FREEPDB1 --prefix D2L_ --name-map tableMap.json
```

`check` only reads the database. It writes the upgrade script to `working/upgrade/<database>_upgrade.sql` for you to review and run yourself. For Oracle the last part of the URL is the service name. The tables checked are those in the schema the user logs in to.

The password comes from the first of these that is set: the URL (`user:password@host`), the `DATAHUB_DB_PASSWORD` environment variable, or a prompt. Prefer the environment variable or the prompt, because a password in the URL ends up in your shell history.

Use the same `--prefix`, `--name-map`, `--no-staging` and `--no-indexes` you used with `generate`, so `check` looks for the same tables. With `--no-staging`, staging tables that exist are ignored, not reported.

```
postgres: 3 statements to run, 1 difference left for you.
  users.loadbatch: not in the D2L documentation. It was left in place.
Upgrade script: working/upgrade/postgres_upgrade.sql
```

### verify

```sh
uv run datahubGetSchema verify extracts/Users_2026-11-01.zip
uv run datahubGetSchema verify extracts/*.csv
uv run datahubGetSchema verify report.csv --data-set "ADS All Grades"
```

`verify` reads the first row of each file and compares the column names with the dataset's documented columns. A file can be a CSV directly, or a zip with a CSV inside. A wildcard such as `extracts/*.csv` checks every file it matches. The tool expands wildcards when your shell doesn't, so it works the same in PowerShell and Command Prompt as in bash and zsh. A wildcard that matches no files is an error. Names are compared without regard to case, spaces, or punctuation.

The dataset is the one whose name the filename starts with, so `UserLogins_2026-11-01.zip` is checked against User Logins. When the filename doesn't indicate a dataset, or when both a Brightspace Dataset and an Advanced Dataset share the same name, use the `--data-set` flag.

```
Users.csv: 2 differences from Users:
  DateDeleted is documented but is not in the file.
  Pronouns is in the file but is not documented.
Correct the schema with an override file in schema/overrides, then run generate again.
```

`verify` reports missing columns, extra columns, and when the columns are the same, a different order. It only reads the header row - no data rows are touched.

This command has only been tested with files generated from `schema/`. It hasn't been run against real Data Hub extracts yet, so treat your first run on your actual files as part of testing!

| `files` | One or more `.csv` files, a `.zip` file with a CSV inside, or wildcards that match them. Wildcards are expanded by the tool when your shell doesn't. |
| `--data-set` | The data set to check (from the filename by default). Use this flag when the filename doesn't indicate which data set. |
| `--schema-dir` | Where the data set JSON files and `overrides/` are located. |


### Exit codes

| Code | Meaning |
| --- | --- |
| 0 | Success. For `check` and `verify`, nothing differs. |
| 1 | `check` or `verify` found something to report or fix. |
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

- **Change a type** - Update `dataType` and optionally `size`
- **Remove a column** - Set `"remove": true` (useful for deprecated fields)
- **Correct the name** - Fix D2L's inconsistent field naming
- **Add missing columns** - Specify fields the docs forgot to document

A misspelled data set, column to remove, or setting name stops the command with an error that names the file. Applied overrides are recorded in the log.

The project ships one override, [schema/overrides/ADSImpersonatedSessionHistory.json](schema/overrides/ADSImpersonatedSessionHistory.json), because D2L's page misspells `nvarchar` as `navchar` for two columns. [examples/override.example.json](examples/override.example.json) shows every kind of correction.

Changing a column's type in an override does not convert an existing table. `check` reports the column as a difference for you to convert by hand, because a type conversion can change stored values.

## Logging

Every run adds to `working/logs/datahubGetSchema.log`. Each command records the options it started with, the same lines it prints to the console, and its exit code. `fetch` also records each request it sends to D2L, and `check` records which database it connected to, how many tables it read, and every difference it found, including the ones the console cuts off after the first 20.

When a command fails, the console shows one `Error:` line and the log holds the full Python traceback.

Debug info appears at the end. The fetch command logs one `DEBUG GET /articles...` line per request, and a `DEBUG Downloading N pages with W workers` line where W is your CPU cores minus one. Generate shows `DEBUG Generating <database>: <table count> tables and <index count> indexes`.

A password in the database URL is written as `***`. The log starts a new file at 1 MB and keeps the three before it (`datahubGetSchema.log.1` to `.3`).

To log somewhere else, put `--log-file` before the command name:

```sh
uv run datahubGetSchema --log-file working/logs/nightly.log check --url mysql://loader@dbhost:3306/datahub
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

One MySQL detail to know: `MODIFY COLUMN` replaces a column's whole definition. The script repeats the column's character set, collation, and nullability so those stay the same, but a column default or column comment would be dropped. Tables created by this tool have neither.

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

To use different table names - for example to match tables that already exist, or just because you prefer custom names - pass a JSON file with `--name-map`. It has a section per database, and each section maps a dataset name to a table name. Advanced datasets are named with `ADS` in front. A mapped name is used exactly as written, without adding the prefix, and its staging table is that name plus `_LOAD`. Datasets you leave out keep their automatically derived names.

```json
{
    "mysql": { "Grade Schemes": "GradeScheme" },
    "oracle": { "Grade Schemes": "D2L_GRADE_SCHEME", "ADS All Grades": "D2L_RPT_ALL_GRADES" }
}
```

See [examples/tableMap.example.json](examples/tableMap.example.json) for a real-world example. The tool warns about entries that match no dataset, which usually means a typo.

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

**Some reasons behind the type choices:**

- Strings over 1000 characters become `TEXT` in MySQL because a MySQL row holds at most 65,535 bytes of `VARCHAR` data, and the LTI Launches dataset alone documents more than 20,000 characters of strings.
- The same strings become `CLOB` in Oracle because a `VARCHAR2` holds 4000 bytes by default, and 1000 characters at up to 4 bytes each is the most that's sure to fit.
- Dates are UTC and stored without a time zone. MySQL and PostgreSQL keep 6 fractional digits, one fewer than `datetime2`.
- MySQL tables are created as InnoDB with the `utf8mb4` character set.

A type or size the tool doesn't know stops `generate` with an error that names the column, so a new D2L type can't slip through as a wrong guess. Fix it with an override file or by adding the type to the tool.

## Advanced Data Sets

D2L documents 19 Advanced Data Sets on one page. For 18 of them, the page lists each field's name, description, and whether it can be null, but no type or size. Those columns have the type `text` in the schema JSON and become plain text columns.

That keeps the tool from guessing, and it means these tables aren't much use for sorting or arithmetic until you say what the types are. Set them with an override file as you learn them from your own extracts.

**Things to know about them:**

- In Oracle, a `text` column is `VARCHAR2(4000 CHAR)`, so it can still be joined and filtered. A value over 4000 bytes is rejected when loaded. Give such a column a long `nvarchar` type in an override to make it a `CLOB`.
- CPD Records documents a field named `Answer(1...N)`, which stands for a varying number of answer columns. The table gets one column named `Answer1N`. Run `verify` on a real extract and replace that column with the real ones in an override.
- Impersonated Session History is the one Advanced Dataset with documented types.
- Advanced Datasets have no documented keys, so their tables have no primary key and no indexes.

## Keys, indexes and nullability

Columns D2L marks `PK` become the table's primary key and are `NOT NULL`. Every other column is nullable, even where D2L's description doesn't say "Field can be null." Those notes aren't complete, and a wrong `NOT NULL` would reject rows during a load. The JSON still records what D2L says in `canBeNull`.

If D2L documents a key column as nullable, the table gets no primary key and its script says why. Today that's two datasets: Assignment Submissions (`SubmitterType`) and Survey User Answers (`QuestionVersionId`).

Columns D2L marks `FK` get an index on the main table. Three cases are skipped:

- A foreign key that's the first column of the primary key, because the key's own index already covers it.
- A string too long for the database to index: over 768 characters in MySQL and over 1000 in Oracle. Today that's one column in MySQL, `AlignedObjectId` in Outcomes Demonstrations.
- Staging tables, which are filled and emptied in bulk and aren't joined.

Foreign key constraints aren't created. Extracts arrive one dataset at a time, and differential files can reference rows you haven't loaded yet, so constraints would make loads fail.

## Staging tables

Each dataset gets a second table with `_LOAD` appended to its name. It has the same columns, types, and primary key as the main table. The intent is that a loader fills the staging table from an extract file first, then merges its rows into the main table.

Since the staging table has the primary key, a file containing the same key twice gets rejected when loaded. `check` keeps staging tables in sync with their main tables.

## What's not covered

This tool focuses on building and maintaining tables - here's what it doesn't do:

- Loading extracts into the tables (this tool only creates and maintains the structure)
- Checking the actual data rows in an extract (`verify` only reads the header row)
- Converting a column from one type family to another (e.g., `INT` to `VARCHAR`) - `check` will report these differences for you to decide how to handle
- Oracle versions before 12.2, which limit object names to 30 characters

## Examples

Run these from the project root:

```sh
uv run python examples/printCreateTable.py "Grade Schemes"
uv run python examples/printCreateTable.py "ADS All Grades"
uv run python examples/planUpgradeOffline.py
uv run datahubGetSchema generate --db oracle --prefix D2L_ --name-map examples/tableMap.example.json --out working/examples/sql
```

The first two print one dataset's main table, indexes, and staging table for all three databases. The third builds an upgrade plan for a pretend older schema without needing a database connection.

## Project layout

Here's what you're working with:

```
schema/                          one JSON file per dataset, written by fetch
schema/overrides/                your corrections, never touched by fetch
sql/mysql/                       SQL scripts, generated by generate
sql/oracle/
sql/postgres/
src/datahubGetSchema/            the tool itself
  d2lDocs.py                     downloads the documentation pages
  docParser.py                   turns a page into dataset definitions
  schema.py                      dataset model and JSON file handling
  overrides.py                   applies your override files
  schemaChanges.py               lists what changed between two fetches
  naming.py                      table names and the name map file
  tables.py                      which tables and indexes each dataset needs
  sqlTypes.py                    database-neutral types and how they compare
  dialects/                      type mapping and SQL for each database
  generator.py                   writes the final SQL scripts
  database.py                    handles database URLs and reading existing tables
  upgrade.py                     plans out what needs upgrading
  extractCheck.py                compares an extract's header row with the schema
  runLog.py                      the log file handler
  cli.py                         all the command-line interface logic
examples/                        runnable examples, a sample name map file, sample overrides
tests/                          unit tests, saved D2L pages, end-to-end tests
working/                        downloaded pages, upgrade scripts, logs, other runtime output
```
