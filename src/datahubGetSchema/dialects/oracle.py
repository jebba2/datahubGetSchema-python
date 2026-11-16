"""Oracle rules: type mapping, statements, and reading existing tables from the USER_ views."""

from typing import Any

from datahubGetSchema.dialects.base import (
    MAX_VARCHAR_LENGTH,
    UUID_TEXT_LENGTH,
    ConnectionTarget,
    Dialect,
    ExistingColumn,
)
from datahubGetSchema.sqlTypes import UNBOUNDED, SqlType

# A NUMBER declared without precision holds 38 digits with a floating decimal point.
# Treating it as 38 digits on each side of the point makes it wide enough for any expected type.
UNCONSTRAINED_NUMBER = (76, 38)
# Worst-case bytes per character in AL32UTF8, used for columns declared in bytes.
BYTES_PER_CHARACTER = 4
# The longest VARCHAR2 a database with standard string sizes accepts.
MAX_VARCHAR2_LENGTH = 4000


class OracleDialect(Dialect):
    """SQL rules for Oracle Database 12.2 and later."""

    name = "oracle"
    maxIdentifierLength = 128
    columnsQuery = (
        "SELECT TABLE_NAME, COLUMN_NAME, DATA_TYPE, CHAR_LENGTH, CHAR_USED, DATA_PRECISION, DATA_SCALE, NULLABLE "
        "FROM USER_TAB_COLUMNS ORDER BY TABLE_NAME, COLUMN_ID"
    )
    primaryKeyQuery = (
        "SELECT keys.TABLE_NAME, keys.COLUMN_NAME "
        "FROM USER_CONSTRAINTS constraints "
        "JOIN USER_CONS_COLUMNS keys ON keys.CONSTRAINT_NAME = constraints.CONSTRAINT_NAME "
        "WHERE constraints.CONSTRAINT_TYPE = 'P'"
    )
    indexedColumnsQuery = "SELECT TABLE_NAME, COLUMN_NAME FROM USER_IND_COLUMNS WHERE COLUMN_POSITION = 1"
    # An index key must fit in about three quarters of an 8K block. A VARCHAR2 of 1000
    # characters is at most 4000 bytes, which fits. CLOB columns cannot be indexed at all.
    maxIndexedStringLength = MAX_VARCHAR_LENGTH

    def foldCase(self, identifier: str) -> str:
        """Return the identifier in uppercase, as Oracle stores unquoted names."""
        return identifier.upper()

    def integerType(self, digits: int) -> SqlType:
        """Return NUMBER with the given digits and no decimals."""
        return SqlType(kind="number", native=f"NUMBER({digits})", precision=digits)

    def booleanType(self) -> SqlType:
        """Return NUMBER(1), holding 0 or 1."""
        return SqlType(kind="number", native="NUMBER(1)", precision=1)

    def stringType(self, length: int) -> SqlType:
        """Return VARCHAR2 counted in characters for short strings and CLOB for long ones.

        VARCHAR2 holds 4000 bytes unless the database has extended string sizes turned
        on. Any string of up to 1000 characters fits in that, whatever the characters.
        """
        if length <= MAX_VARCHAR_LENGTH:
            return SqlType(kind="string", native=f"VARCHAR2({length} CHAR)", length=length)
        return SqlType(kind="string", native="CLOB", length=UNBOUNDED)

    def timestampType(self) -> SqlType:
        """Return TIMESTAMP(7), the same seven fractional digits as D2L's datetime2. Values are UTC."""
        return SqlType(kind="timestamp", native="TIMESTAMP(7)")

    def uuidType(self) -> SqlType:
        """Return VARCHAR2(36 CHAR), the GUID in its text form."""
        return SqlType(kind="string", native=f"VARCHAR2({UUID_TEXT_LENGTH} CHAR)", length=UUID_TEXT_LENGTH)

    def decimalType(self, precision: int, scale: int) -> SqlType:
        """Return NUMBER(precision,scale)."""
        return SqlType(kind="number", native=f"NUMBER({precision},{scale})", precision=precision, scale=scale)

    def doubleType(self) -> SqlType:
        """Return BINARY_DOUBLE."""
        return SqlType(kind="double", native="BINARY_DOUBLE")

    def textType(self) -> SqlType:
        """Return the largest VARCHAR2, which keeps the column usable in joins and filters where a CLOB is not.

        A value over 4000 bytes is rejected at load time. Give such a column a
        long nvarchar type in an override file to make it a CLOB.
        """
        return SqlType(kind="string", native=f"VARCHAR2({MAX_VARCHAR2_LENGTH} CHAR)", length=MAX_VARCHAR2_LENGTH)

    def addColumn(self, tableName: str, columnName: str, sqlType: SqlType) -> str:
        """Return the ADD statement in Oracle's form, which has no COLUMN keyword."""
        return f"ALTER TABLE {self.quote(tableName)} ADD ({self.quote(columnName)} {sqlType.native})"

    def alterColumnType(self, tableName: str, column: ExistingColumn, expected: SqlType) -> str | None:
        """Return a MODIFY statement for the changes Oracle makes in place.

        Oracle widens VARCHAR2 and NUMBER columns that hold data. It refuses to turn a
        column into a CLOB or to switch between VARCHAR2 and the national types, so
        those return None.
        """
        canModifyInPlace = column.sqlType.native.startswith(("VARCHAR2", "NUMBER"))
        if expected.native == "CLOB" or not canModifyInPlace:
            return None
        return f"ALTER TABLE {self.quote(tableName)} MODIFY ({self.quote(column.name)} {expected.native})"

    def connect(self, target: ConnectionTarget) -> Any:
        """Open a connection with python-oracledb in thin mode. The database part of the URL is the service name."""
        import oracledb

        return oracledb.connect(
            user=target.user,
            password=target.password,
            host=target.host,
            port=target.port or 1521,
            service_name=target.database,
        )

    def parseColumnRow(self, row: tuple[Any, ...]) -> ExistingColumn:
        """Turn a USER_TAB_COLUMNS row into a column."""
        name, dataType, characterLength, characterUnit, precision, scale, nullable = row
        return ExistingColumn(
            name=name,
            sqlType=existingType(dataType, characterLength, characterUnit, precision, scale),
            isNullable=nullable == "Y",
        )


def existingType(dataType: str, characterLength: int, characterUnit: str | None, precision: int | None, scale: int | None) -> SqlType:
    """Describe an existing Oracle column type in database-neutral terms."""
    if dataType == "NUMBER":
        if precision is None:
            return SqlType(kind="number", native=dataType, precision=UNCONSTRAINED_NUMBER[0], scale=UNCONSTRAINED_NUMBER[1])
        return SqlType(kind="number", native=f"NUMBER({precision},{scale or 0})", precision=precision, scale=scale or 0)
    if dataType in ("VARCHAR2", "CHAR"):
        if characterUnit == "C":
            return SqlType(kind="string", native=f"{dataType}({characterLength} CHAR)", length=characterLength)
        # A column sized in bytes is only sure to hold a quarter as many characters.
        return SqlType(
            kind="string", native=f"{dataType}({characterLength} BYTE)", length=characterLength // BYTES_PER_CHARACTER
        )
    if dataType in ("NVARCHAR2", "NCHAR"):
        return SqlType(kind="string", native=f"{dataType}({characterLength})", length=characterLength)
    if dataType in ("CLOB", "NCLOB"):
        return SqlType(kind="string", native=dataType, length=UNBOUNDED)
    if dataType.startswith("TIMESTAMP"):
        return SqlType(kind="timestamp", native=dataType)
    if dataType in ("BINARY_DOUBLE", "BINARY_FLOAT", "FLOAT"):
        return SqlType(kind="double", native=dataType)
    return SqlType(kind=dataType.lower(), native=dataType)
