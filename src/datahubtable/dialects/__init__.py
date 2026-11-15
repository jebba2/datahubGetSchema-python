"""The supported databases."""

from datahubtable.dialects.base import Dialect
from datahubtable.dialects.mysql import MySqlDialect
from datahubtable.dialects.oracle import OracleDialect
from datahubtable.dialects.postgres import PostgresDialect

DIALECTS: dict[str, Dialect] = {
    dialect.name: dialect for dialect in (MySqlDialect(), OracleDialect(), PostgresDialect())
}


def dialectNamed(name: str) -> Dialect:
    """Return the dialect for a database name: mysql, oracle or postgres."""
    if name not in DIALECTS:
        raise ValueError(f"Unknown database '{name}'. Choose one of: {', '.join(sorted(DIALECTS))}.")
    return DIALECTS[name]
