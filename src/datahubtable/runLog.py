"""The run log: a file that records what each command did, including the traceback of any failure.

Modules write to it through the standard logging module, using a logger named
after themselves. Those loggers all sit under the "datahubtable" logger, which is
where the file is attached for the length of one command.
"""

import logging
from logging.handlers import RotatingFileHandler
from pathlib import Path

LOGGER_NAME = "datahubtable"
DEFAULT_LOG_FILE = Path("working/logs/datahubtable.log")
LOG_FORMAT = "%(asctime)s %(levelname)s %(message)s"
# The log starts a new file at this size and keeps a few old ones, so it cannot grow without limit.
MAX_LOG_BYTES = 1_000_000
OLD_LOG_FILES_KEPT = 3


def openRunLog(path: Path) -> logging.Handler:
    """Start writing log records to the file, creating its directory, and return the handler to close later."""
    path.parent.mkdir(parents=True, exist_ok=True)
    handler = RotatingFileHandler(path, maxBytes=MAX_LOG_BYTES, backupCount=OLD_LOG_FILES_KEPT, encoding="utf-8")
    handler.setFormatter(logging.Formatter(LOG_FORMAT))
    logger = logging.getLogger(LOGGER_NAME)
    logger.setLevel(logging.DEBUG)
    logger.addHandler(handler)
    return handler


def closeRunLog(handler: logging.Handler) -> None:
    """Stop writing to the log file and release it."""
    logging.getLogger(LOGGER_NAME).removeHandler(handler)
    handler.close()
