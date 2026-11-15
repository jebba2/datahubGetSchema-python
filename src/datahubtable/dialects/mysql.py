"""MySQL rules: type mapping, statements, and reading existing tables from information_schema."""

from typing import Any

from datahubtable.dialects.base import (
    INTEGER_DIGITS,
    MAX_VARCHAR_LENGTH,
    UUID_TEXT_LENGTH,
    ConnectionTarget,
    Dialect,
    ExistingColumn,
)
from datahubtable.sqlTypes import UNBOUNDED, SqlType

INTEGER_NAMES = {5: "SMALLINT", 10: "INT", 19: "BIGINT"}
# A TEXT column holds 65,535 bytes, which is 16,383 characters at 4 bytes each.
TEXT_LENGTH = 16383
EXISTING_STRING_LENGTHS = {"tinytext": 63, "text": TEXT_LENGTH, "mediumtext": UNBOUNDED, "longtext": UNBOUNDED}
EXISTING_INTEGER_DIGITS = {"tinyint": 3, "mediumint": 7, **INTEGER_DIGITS}


class MySqlDialect(Dialect):
    """SQL rules for MySQL 8 with InnoDB tables in utf8mb4."""

    name = "mysql"
    maxIdentifierLength = 64
    quoteCharacter = "`"
    tableOptions = " ENGINE=InnoDB DEFAULT CHARSET=utf8mb4"
    columnsQuery = (
        "SELECT TABLE_NAME, COLUMN_NAME, DATA_TYPE, COLUMN_TYPE, CHARACTER_MAXIMUM_LENGTH, "
        "NUMERIC_PRECISION, NUMERIC_SCALE, IS_NULLABLE, CHARACTER_SET_NAME, COLLATION_NAME "
        "FROM information_schema.COLUMNS WHERE TABLE_SCHEMA = DATABASE() "
        "ORDER BY TABLE_NAME, ORDINAL_POSITION"
    )
    primaryKeyQuery = (
        "SELECT TABLE_NAME, COLUMN_NAME FROM information_schema.KEY_COLUMN_USAGE "
        "WHERE TABLE_SCHEMA = DATABASE() AND CONSTRAINT_NAME = 'PRIMARY'"
    )
    indexedColumnsQuery = (
        "SELECT TABLE_NAME, COLUMN_NAME FROM information_schema.STATISTICS "
        "WHERE TABLE_SCHEMA = DATABASE() AND SEQ_IN_INDEX = 1"
    )
    # An InnoDB index key holds 3072 bytes, which is 768 characters at 4 bytes each.
    maxIndexedStringLength = 768

    def joinWords(self, words: list[str]) -> str:
        """Join words as PascalCase, keeping acronyms such as SCORM as written."""
        return "".join(word[0].upper() + word[1:] for word in words)

    def integerType(self, digits: int) -> SqlType:
        """Return SMALLINT, INT or BIGINT."""
        return SqlType(kind="number", native=INTEGER_NAMES[digits], precision=digits)

    def booleanType(self) -> SqlType:
        """Return TINYINT(1), the type MySQL itself uses for BOOLEAN."""
        return SqlType(kind="number", native="TINYINT(1)", precision=3)

    def stringType(self, length: int) -> SqlType:
        """Return VARCHAR for short strings and TEXT or LONGTEXT for long ones.

        A MySQL row holds at most 65,535 bytes of VARCHAR data. Long strings go in
        TEXT columns, which are stored outside that limit.
        """
        if length <= MAX_VARCHAR_LENGTH:
            return SqlType(kind="string", native=f"VARCHAR({length})", length=length)
        if length <= TEXT_LENGTH:
            return SqlType(kind="string", native="TEXT", length=TEXT_LENGTH)
        return SqlType(kind="string", native="LONGTEXT", length=UNBOUNDED)

    def timestampType(self) -> SqlType:
        """Return DATETIME with microseconds, the finest MySQL stores."""
        return SqlType(kind="timestamp", native="DATETIME(6)")

    def uuidType(self) -> SqlType:
        """Return CHAR(36), the GUID in its text form."""
        return SqlType(kind="string", native=f"CHAR({UUID_TEXT_LENGTH})", length=UUID_TEXT_LENGTH)

    def decimalType(self, precision: int, scale: int) -> SqlType:
        """Return DECIMAL(precision,scale)."""
        return SqlType(kind="number", native=f"DECIMAL({precision},{scale})", precision=precision, scale=scale)

    def doubleType(self) -> SqlType:
        """Return DOUBLE."""
        return SqlType(kind="double", native="DOUBLE")

    def textType(self) -> SqlType:
        """Return TEXT, which holds values of any likely length without counting toward the row size limit."""
        return SqlType(kind="string", native="TEXT", length=TEXT_LENGTH)

    def alterColumnType(self, tableName: str, column: ExistingColumn, expected: SqlType) -> str:
        """Return a MODIFY COLUMN statement.

        MODIFY COLUMN replaces the whole column definition, so the statement repeats
        the column's character set, collation and nullability to leave them as they are.
        """
        nullability = "NULL" if column.isNullable else "NOT NULL"
        return (
            f"ALTER TABLE {self.quote(tableName)} MODIFY COLUMN {self.quote(column.name)} "
            f"{expected.native}{column.collationClause} {nullability}"
        )

    def connect(self, target: ConnectionTarget) -> Any:
        """Open a connection with PyMySQL."""
        import pymysql

        return pymysql.connect(
            host=target.host,
            port=target.port or 3306,
            user=target.user,
            password=target.password,
            database=target.database,
        )

    def parseColumnRow(self, row: tuple[Any, ...]) -> ExistingColumn:
        """Turn an information_schema.COLUMNS row into a column."""
        name, dataType, columnType, characterLength, precision, scale, isNullable, characterSet, collation = row
        dataType = dataType.lower()
        collationClause = f" CHARACTER SET {characterSet} COLLATE {collation}" if collation else ""
        return ExistingColumn(
            name=name,
            sqlType=existingType(dataType, columnType, characterLength, precision, scale),
            isNullable=isNullable == "YES",
            collationClause=collationClause,
        )


def existingType(dataType: str, columnType: str, characterLength: int | None, precision: int | None, scale: int | None) -> SqlType:
    """Describe an existing MySQL column type in database-neutral terms."""
    if dataType in EXISTING_INTEGER_DIGITS:
        return SqlType(kind="number", native=columnType, precision=EXISTING_INTEGER_DIGITS[dataType])
    if dataType == "decimal":
        return SqlType(kind="number", native=columnType, precision=precision or 0, scale=scale or 0)
    if dataType in ("char", "varchar"):
        return SqlType(kind="string", native=columnType, length=characterLength or 0)
    if dataType in EXISTING_STRING_LENGTHS:
        return SqlType(kind="string", native=columnType, length=EXISTING_STRING_LENGTHS[dataType])
    if dataType in ("datetime", "timestamp"):
        return SqlType(kind="timestamp", native=columnType)
    if dataType in ("double", "float"):
        return SqlType(kind="double", native=columnType)
    return SqlType(kind=dataType, native=columnType)
