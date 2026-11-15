"""What every database dialect shares: type mapping rules, CREATE TABLE layout, and reading existing tables."""

import hashlib
import re
from abc import ABC, abstractmethod
from dataclasses import dataclass, field
from typing import Any

from datahubtable.schema import Column, DataSet
from datahubtable.sqlTypes import SqlType

# Decimal digits each D2L integer type can hold.
INTEGER_DIGITS = {"smallint": 5, "int": 10, "bigint": 19}
# Other SQL Server names D2L uses for types this tool already maps.
TYPE_SYNONYMS = {"integer": "int", "datetime": "datetime2"}
# Strings up to this many characters stay VARCHAR in MySQL and Oracle. At 4 bytes per
# character that is 4000 bytes, the most an Oracle VARCHAR2 holds by default.
MAX_VARCHAR_LENGTH = 1000
UUID_TEXT_LENGTH = 36
# Hex digits of a name's hash that stand in for the part cut off an over-long index name.
HASH_LENGTH = 8
SAFE_IDENTIFIER = re.compile(r"[A-Za-z0-9_$#]+")


def sqlComment(text: str) -> str:
    """Return the text as a one-line SQL comment, so text from a web page or database cannot start a statement."""
    return "-- " + " ".join(text.split())


class UnsupportedTypeError(ValueError):
    """A column has a type or size this tool has no mapping for."""


@dataclass(frozen=True)
class ConnectionTarget:
    """Where a database lives and who to log in as."""

    host: str
    port: int | None
    user: str
    password: str
    database: str


@dataclass(frozen=True)
class ExistingColumn:
    """A column as it exists in a database.

    collationClause is the text MySQL needs to keep a column's character set when
    its type changes. It is empty for other databases and for non-text columns.
    """

    name: str
    sqlType: SqlType
    isNullable: bool
    collationClause: str = ""


@dataclass
class ExistingTable:
    """A table as it exists in a database. Columns and key names are stored by lowercase name.

    indexedColumns holds every column that is the first column of some index,
    including the primary key's index.
    """

    name: str
    columns: dict[str, ExistingColumn] = field(default_factory=dict)
    primaryKey: set[str] = field(default_factory=set)
    indexedColumns: set[str] = field(default_factory=set)


class Dialect(ABC):
    """The SQL rules of one database."""

    name: str
    maxIdentifierLength: int
    quoteCharacter = '"'
    tableOptions = ""
    # The longest string column, in characters, that the database can index in full. None means no limit.
    maxIndexedStringLength: int | None = None
    columnsQuery: str
    primaryKeyQuery: str
    # Returns a table name and a column name for the first column of every index.
    indexedColumnsQuery: str

    # Naming

    def quote(self, identifier: str) -> str:
        """Return the identifier quoted for this database, refusing names that are unsafe or too long.

        Column names come from a web page and end up in SQL someone will run. Allowing
        only letters, digits, _, $ and # means no name can close the quotes around it.
        """
        if not SAFE_IDENTIFIER.fullmatch(identifier):
            raise ValueError(
                f"'{identifier}' cannot be used as a table or column name. "
                "Names may hold only letters, digits, _, $ and #."
            )
        if len(identifier) > self.maxIdentifierLength:
            raise ValueError(
                f"'{identifier}' is longer than the {self.maxIdentifierLength} characters {self.name} allows. "
                "Give the data set a shorter name in the table name map file."
            )
        return f"{self.quoteCharacter}{identifier}{self.quoteCharacter}"

    def foldCase(self, identifier: str) -> str:
        """Return the identifier in the case this database gives unquoted names."""
        return identifier

    def joinWords(self, words: list[str]) -> str:
        """Join the words of a data set name into a table name."""
        return "_".join(words)

    def tableName(self, dataSetName: str, prefix: str = "") -> str:
        """Derive the table name for a data set from the words of its D2L name."""
        words = re.findall(r"[A-Za-z0-9]+", dataSetName)
        return self.foldCase(prefix + self.joinWords(words))

    def columnName(self, fieldName: str) -> str:
        """Return the column name for a D2L field.

        The name keeps D2L's spelling so it still matches the CSV header when
        compared without regard to case. Advanced Data Set fields are written with
        spaces and punctuation, such as "Org Defined Id", and those are dropped.
        """
        return self.foldCase(re.sub(r"[^A-Za-z0-9_]", "", fieldName))

    # Column types

    def sqlType(self, column: Column) -> SqlType:
        """Return this database's type for a column as D2L documents it."""
        dataType = TYPE_SYNONYMS.get(column.dataType, column.dataType)
        if dataType in INTEGER_DIGITS:
            # A few int columns are documented with a size of 8 bytes. BIGINT holds either reading.
            digits = INTEGER_DIGITS["bigint"] if column.size == "8" else INTEGER_DIGITS[dataType]
            return self.integerType(digits)
        if dataType == "bit":
            return self.booleanType()
        if dataType in ("nvarchar", "varchar") and column.size.isdigit():
            return self.stringType(int(column.size))
        if dataType == "datetime2":
            return self.timestampType()
        if dataType == "uniqueidentifier":
            return self.uuidType()
        if dataType == "float":
            return self.doubleType()
        if dataType == "text":
            return self.textType()
        precisionAndScale = re.fullmatch(r"(\d+),\s*(\d+)", column.size)
        if dataType == "decimal" and precisionAndScale:
            return self.decimalType(int(precisionAndScale[1]), int(precisionAndScale[2]))
        raise UnsupportedTypeError(
            f"Column '{column.name}' has type '{column.dataType}' with size '{column.size}', "
            f"which has no {self.name} mapping."
        )

    @abstractmethod
    def integerType(self, digits: int) -> SqlType:
        """Return the integer type that holds the given number of decimal digits."""

    @abstractmethod
    def booleanType(self) -> SqlType:
        """Return the type for a true or false value."""

    @abstractmethod
    def stringType(self, length: int) -> SqlType:
        """Return the text type that holds the given number of characters."""

    @abstractmethod
    def timestampType(self) -> SqlType:
        """Return the type for a UTC date and time with fractional seconds."""

    @abstractmethod
    def uuidType(self) -> SqlType:
        """Return the type for a GUID."""

    @abstractmethod
    def decimalType(self, precision: int, scale: int) -> SqlType:
        """Return the fixed-point type with the given total and fractional digits."""

    @abstractmethod
    def doubleType(self) -> SqlType:
        """Return the floating-point type."""

    @abstractmethod
    def textType(self) -> SqlType:
        """Return the type for a column whose type and length D2L does not document."""

    # Statements. None of them end with a semicolon, because database drivers reject one.

    def createTable(self, tableName: str, dataSet: DataSet) -> str:
        """Return the CREATE TABLE statement for a data set.

        Only primary key columns are NOT NULL. D2L's notes on which other fields can
        be null are incomplete, and a wrong NOT NULL would reject rows during a load.
        """
        keyNames = [column.name for column in dataSet.primaryKey()]
        columnNames = [self.columnName(column.name) for column in dataSet.columns]
        repeated = sorted({name for name in columnNames if columnNames.count(name) > 1})
        if repeated:
            raise ValueError(
                f"Data set '{dataSet.qualifiedName}' has more than one column that would be named "
                f"{', '.join(repeated)}. Rename or remove one with an override file."
            )
        lines = []
        for column in dataSet.columns:
            notNull = " NOT NULL" if column.name in keyNames else ""
            lines.append(f"    {self.quote(self.columnName(column.name))} {self.sqlType(column).native}{notNull}")
        if keyNames:
            quotedKeys = ", ".join(self.quote(self.columnName(name)) for name in keyNames)
            lines.append(f"    PRIMARY KEY ({quotedKeys})")
        body = ",\n".join(lines)
        return f"CREATE TABLE {self.quote(tableName)} (\n{body}\n){self.tableOptions}"

    def addColumn(self, tableName: str, columnName: str, sqlType: SqlType) -> str:
        """Return the statement that adds a nullable column to an existing table."""
        return f"ALTER TABLE {self.quote(tableName)} ADD COLUMN {self.quote(columnName)} {sqlType.native}"

    @abstractmethod
    def alterColumnType(self, tableName: str, column: ExistingColumn, expected: SqlType) -> str | None:
        """Return the statement that widens a column in place, or None when the database cannot do that."""

    # Indexes

    def canIndex(self, sqlType: SqlType) -> bool:
        """Say whether this database can index a column of the given type in full."""
        if sqlType.kind != "string" or self.maxIndexedStringLength is None:
            return True
        return sqlType.length <= self.maxIndexedStringLength

    def foreignKeysToIndex(self, dataSet: DataSet) -> tuple[Column, ...]:
        """Return the foreign key columns that need an index of their own.

        The first column of the primary key is left out, because the key's own
        index already serves lookups on it.
        """
        key = dataSet.primaryKey()
        leadingKeyName = key[0].name if key else None
        return tuple(
            column
            for column in dataSet.columns
            if column.isForeignKey and column.name != leadingKeyName and self.canIndex(self.sqlType(column))
        )

    def indexName(self, tableName: str, columnName: str) -> str:
        """Return the index name for a column: IX_table_column, shortened with a hash when too long."""
        name = self.foldCase(f"IX_{tableName}_{columnName}")
        if len(name) <= self.maxIdentifierLength:
            return name
        digest = self.foldCase(hashlib.sha1(name.encode("utf-8")).hexdigest()[:HASH_LENGTH])
        return f"{name[: self.maxIdentifierLength - HASH_LENGTH - 1]}_{digest}"

    def createIndex(self, tableName: str, columnName: str) -> str:
        """Return the statement that indexes one column of a table."""
        indexName = self.indexName(tableName, columnName)
        return f"CREATE INDEX {self.quote(indexName)} ON {self.quote(tableName)} ({self.quote(columnName)})"

    # Existing tables

    @abstractmethod
    def connect(self, target: ConnectionTarget) -> Any:
        """Open a DB-API connection to the database."""

    @abstractmethod
    def parseColumnRow(self, row: tuple[Any, ...]) -> ExistingColumn:
        """Turn one row of columnsQuery, without its leading table name, into a column."""

    def readTables(self, connection: Any) -> dict[str, ExistingTable]:
        """Read every table of the connected schema, keyed by lowercase table name."""
        tables: dict[str, ExistingTable] = {}
        cursor = connection.cursor()
        cursor.execute(self.columnsQuery)
        for row in cursor.fetchall():
            column = self.parseColumnRow(tuple(row[1:]))
            table = tables.setdefault(row[0].lower(), ExistingTable(name=row[0]))
            table.columns[column.name.lower()] = column
        cursor.execute(self.primaryKeyQuery)
        for tableName, columnName in cursor.fetchall():
            tables[tableName.lower()].primaryKey.add(columnName.lower())
        cursor.execute(self.indexedColumnsQuery)
        for tableName, columnName in cursor.fetchall():
            if tableName.lower() in tables:
                tables[tableName.lower()].indexedColumns.add(columnName.lower())
        cursor.close()
        return tables
