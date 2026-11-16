"""Finds the database a URL points at and reads its tables."""

import logging
from urllib.parse import unquote, urlsplit, urlunsplit

from datahubGetSchema.dialects import dialectNamed
from datahubGetSchema.dialects.base import ConnectionTarget, Dialect, ExistingTable

log = logging.getLogger(__name__)

URL_SCHEMES = {"mysql": "mysql", "oracle": "oracle", "postgres": "postgres", "postgresql": "postgres"}


def parseDatabaseUrl(url: str, password: str) -> tuple[Dialect, ConnectionTarget]:
    """Split a database URL into the dialect to use and where to connect.

    The URL looks like scheme://user@host:port/database. For Oracle the database
    part is the service name. A password inside the URL is used when present.
    Otherwise the password argument is used.
    """
    parts = urlsplit(url)
    if parts.scheme not in URL_SCHEMES:
        raise ValueError(
            f"Unknown database URL scheme '{parts.scheme}'. Use one of: {', '.join(sorted(URL_SCHEMES))}."
        )
    database = parts.path.lstrip("/")
    if not parts.username or not parts.hostname or not database:
        raise ValueError(f"Database URL must look like {parts.scheme}://user@host:port/database.")
    target = ConnectionTarget(
        host=parts.hostname,
        port=parts.port,
        user=unquote(parts.username),
        password=unquote(parts.password) if parts.password else password,
        database=database,
    )
    return dialectNamed(URL_SCHEMES[parts.scheme]), target


def redactUrl(url: str) -> str:
    """Return the URL with any password replaced by ***, so it is safe to log."""
    parts = urlsplit(url)
    if parts.password is None:
        return url
    userAndPassword, _, hostAndPort = parts.netloc.rpartition("@")
    user = userAndPassword.split(":", 1)[0]
    return urlunsplit(parts._replace(netloc=f"{user}:***@{hostAndPort}"))


def readExistingTables(dialect: Dialect, target: ConnectionTarget) -> dict[str, ExistingTable]:
    """Connect to the database, read its tables, and close the connection."""
    port = f":{target.port}" if target.port else ""
    log.info("Connecting to %s at %s@%s%s/%s", dialect.name, target.user, target.host, port, target.database)
    connection = dialect.connect(target)
    try:
        tables = dialect.readTables(connection)
    finally:
        connection.close()
    log.info("Read %d tables from the database", len(tables))
    return tables
