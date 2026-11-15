"""Tests for deciding whether an existing column can hold what the documentation describes."""

import pytest

from datahubtable.sqlTypes import UNBOUNDED, SqlType, TypeChange, compareTypes


def string(length: int) -> SqlType:
    return SqlType(kind="string", native=f"VARCHAR({length})", length=length)


def number(precision: int, scale: int = 0) -> SqlType:
    return SqlType(kind="number", native=f"NUMBER({precision},{scale})", precision=precision, scale=scale)


@pytest.mark.parametrize(
    ("existing", "expected", "change"),
    [
        (string(128), string(128), TypeChange.NONE),
        (string(128), string(256), TypeChange.WIDEN),
        (string(256), string(128), TypeChange.NONE),
        (string(UNBOUNDED), string(4000), TypeChange.NONE),
        (string(1000), string(UNBOUNDED), TypeChange.WIDEN),
        (number(10), number(10), TypeChange.NONE),
        (number(10), number(19), TypeChange.WIDEN),
        (number(20), number(19), TypeChange.NONE),
        (number(19, 9), number(36, 9), TypeChange.WIDEN),
        (number(38, 10), number(19, 9), TypeChange.NONE),
        (number(19, 2), number(19, 9), TypeChange.MANUAL),
        (number(10), number(19, 9), TypeChange.MANUAL),
        (string(36), number(10), TypeChange.MANUAL),
        (SqlType(kind="timestamp", native="DATETIME"), SqlType(kind="timestamp", native="DATETIME(6)"), TypeChange.NONE),
        (SqlType(kind="boolean", native="BOOLEAN"), number(1), TypeChange.MANUAL),
    ],
)
def test_compareTypes(existing, expected, change):
    assert compareTypes(existing, expected) is change
