"""PostgreSQL rules: type mapping, statements, and reading existing tables from information_schema."""

from typing import Any

from datahubtable.dialects.base import ConnectionTarget, Dialect, ExistingColumn
from datahubtable.sqlTypes import UNBOUNDED, SqlType

INTEGER_NAMES = {5: "SMALLINT", 10: "INTEGER", 19: "BIGINT"}
EXISTING_INTEGER_DIGITS = {"smallint": 5, "integer": 10, "bigint": 19}
# An unconstrained NUMERIC holds up to 131,072 digits before the decimal point and 16,383 after.
UNCONSTRAINED_NUMERIC = (147455, 16383)


class PostgresDialect(Dialect):
    """SQL rules for PostgreSQL."""

    name = "postgres"
    maxIdentifierLength = 63
    columnsQuery = (
        "SELECT table_name, column_name, data_type, character_maximum_length, "
        "numeric_precision, numeric_scale, is_nullable "
        "FROM information_schema.columns WHERE table_schema = current_schema() "
        "ORDER BY table_name, ordinal_position"
    )
    primaryKeyQuery = (
        "SELECT keys.table_name, keys.column_name "
        "FROM information_schema.table_constraints constraints "
        "JOIN information_schema.key_column_usage keys "
        "ON keys.constraint_schema = constraints.constraint_schema "
        "AND keys.constraint_name = constraints.constraint_name "
        "AND keys.table_name = constraints.table_name "
        "WHERE constraints.constraint_type = 'PRIMARY KEY' AND constraints.table_schema = current_schema()"
    )
    indexedColumnsQuery = (
        "SELECT tables.relname, columns.attname "
        "FROM pg_index indexes "
        "JOIN pg_class tables ON tables.oid = indexes.indrelid "
        "JOIN pg_namespace schemas ON schemas.oid = tables.relnamespace "
        "JOIN pg_attribute columns ON columns.attrelid = tables.oid AND columns.attnum = indexes.indkey[0] "
        "WHERE schemas.nspname = current_schema()"
    )

    def foldCase(self, identifier: str) -> str:
        """Return the identifier in lowercase, as PostgreSQL stores unquoted names."""
        return identifier.lower()

    def integerType(self, digits: int) -> SqlType:
        """Return SMALLINT, INTEGER or BIGINT."""
        return SqlType(kind="number", native=INTEGER_NAMES[digits], precision=digits)

    def booleanType(self) -> SqlType:
        """Return BOOLEAN."""
        return SqlType(kind="boolean", native="BOOLEAN")

    def stringType(self, length: int) -> SqlType:
        """Return VARCHAR(length). PostgreSQL has no row size limit that long strings would hit."""
        return SqlType(kind="string", native=f"VARCHAR({length})", length=length)

    def timestampType(self) -> SqlType:
        """Return TIMESTAMP with microseconds, the finest PostgreSQL stores. Values are UTC."""
        return SqlType(kind="timestamp", native="TIMESTAMP(6)")

    def uuidType(self) -> SqlType:
        """Return UUID."""
        return SqlType(kind="uuid", native="UUID")

    def decimalType(self, precision: int, scale: int) -> SqlType:
        """Return NUMERIC(precision,scale)."""
        return SqlType(kind="number", native=f"NUMERIC({precision},{scale})", precision=precision, scale=scale)

    def doubleType(self) -> SqlType:
        """Return DOUBLE PRECISION."""
        return SqlType(kind="double", native="DOUBLE PRECISION")

    def textType(self) -> SqlType:
        """Return TEXT, which has no length limit."""
        return SqlType(kind="string", native="TEXT", length=UNBOUNDED)

    def alterColumnType(self, tableName: str, column: ExistingColumn, expected: SqlType) -> str:
        """Return an ALTER COLUMN TYPE statement, which keeps the column's data and nullability."""
        return f"ALTER TABLE {self.quote(tableName)} ALTER COLUMN {self.quote(column.name)} TYPE {expected.native}"

    def connect(self, target: ConnectionTarget) -> Any:
        """Open a connection with psycopg."""
        import psycopg

        return psycopg.connect(
            host=target.host,
            port=target.port or 5432,
            user=target.user,
            password=target.password,
            dbname=target.database,
        )

    def parseColumnRow(self, row: tuple[Any, ...]) -> ExistingColumn:
        """Turn an information_schema.columns row into a column."""
        name, dataType, characterLength, precision, scale, isNullable = row
        return ExistingColumn(
            name=name,
            sqlType=existingType(dataType, characterLength, precision, scale),
            isNullable=isNullable == "YES",
        )


def existingType(dataType: str, characterLength: int | None, precision: int | None, scale: int | None) -> SqlType:
    """Describe an existing PostgreSQL column type in database-neutral terms."""
    if dataType in EXISTING_INTEGER_DIGITS:
        return SqlType(kind="number", native=dataType, precision=EXISTING_INTEGER_DIGITS[dataType])
    if dataType == "numeric":
        if precision is None:
            return SqlType(kind="number", native=dataType, precision=UNCONSTRAINED_NUMERIC[0], scale=UNCONSTRAINED_NUMERIC[1])
        return SqlType(kind="number", native=f"numeric({precision},{scale or 0})", precision=precision, scale=scale or 0)
    if dataType in ("character varying", "character"):
        if characterLength is None:
            return SqlType(kind="string", native=dataType, length=UNBOUNDED)
        return SqlType(kind="string", native=f"{dataType}({characterLength})", length=characterLength)
    if dataType == "text":
        return SqlType(kind="string", native=dataType, length=UNBOUNDED)
    if dataType.startswith("timestamp"):
        return SqlType(kind="timestamp", native=dataType)
    if dataType in ("double precision", "real"):
        return SqlType(kind="double", native=dataType)
    return SqlType(kind=dataType, native=dataType)
