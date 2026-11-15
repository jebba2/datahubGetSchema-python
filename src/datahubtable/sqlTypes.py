"""A database-neutral description of a column type, used to compare what exists with what is expected."""

from dataclasses import dataclass
from enum import Enum

# Character capacity of column types with no practical limit, such as CLOB and LONGTEXT.
UNBOUNDED = 2**31 - 1


@dataclass(frozen=True)
class SqlType:
    """A column type in one database.

    kind groups types that can be compared: number, string, boolean, timestamp,
    uuid, double. native is the type as the database writes it. length is the
    character capacity of a string. precision and scale are the total and
    fractional digits of a number, with scale 0 for integers.
    """

    kind: str
    native: str
    length: int = 0
    precision: int = 0
    scale: int = 0


class TypeChange(Enum):
    """What an existing column needs so it can hold the expected type."""

    NONE = "none"
    WIDEN = "widen"
    MANUAL = "manual"


def compareTypes(existing: SqlType, expected: SqlType) -> TypeChange:
    """Decide whether the existing column already fits, can be widened, or needs a person.

    A column that is wider than expected is left alone. Widening covers a longer
    string and more digits at the same scale. Anything else, such as a different
    kind of type or a different scale, could change stored values and is MANUAL.
    """
    if existing.kind != expected.kind:
        return TypeChange.MANUAL
    if existing.kind == "string":
        return TypeChange.WIDEN if expected.length > existing.length else TypeChange.NONE
    if existing.kind == "number":
        return compareNumbers(existing, expected)
    return TypeChange.NONE


def compareNumbers(existing: SqlType, expected: SqlType) -> TypeChange:
    """Compare two numeric types by the digits they hold before and after the decimal point."""
    existingWholeDigits = existing.precision - existing.scale
    expectedWholeDigits = expected.precision - expected.scale
    if existing.scale >= expected.scale and existingWholeDigits >= expectedWholeDigits:
        return TypeChange.NONE
    if existing.scale == expected.scale:
        return TypeChange.WIDEN
    return TypeChange.MANUAL
