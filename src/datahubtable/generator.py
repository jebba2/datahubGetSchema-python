"""Writes the SQL scripts: one file per table and one file with every table, per database."""

from pathlib import Path

from datahubtable.dialects.base import Dialect, sqlComment
from datahubtable.tables import TableSpec, createStatements

CREATE_ALL_FILE_NAME = "create_all.sql"


def tableScript(dialect: Dialect, spec: TableSpec) -> str:
    """Return the contents of one table's script: where it came from, then its statements."""
    dataSet = spec.dataSet
    label = f"{dataSet.qualifiedName} (staging table)" if spec.isStaging else dataSet.qualifiedName
    lines = [sqlComment(f"Data set: {label}"), sqlComment(f"Source: {dataSet.sourceUrl}")]
    nullableKeys = [column.name for column in dataSet.columns if column.isPrimaryKey and column.canBeNull]
    if nullableKeys:
        lines.append(sqlComment(f"No primary key: D2L documents key column {', '.join(nullableKeys)} as nullable."))
    lines += [statement + ";" for statement in createStatements(dialect, spec)]
    return "\n".join(lines) + "\n"


def writeSql(specs: list[TableSpec], dialect: Dialect, outputDirectory: Path) -> list[Path]:
    """Write the scripts for one database into a directory named after it, and return the paths.

    The directory gets a file per table, named for the table, and create_all.sql,
    which holds every table and index and can be run on its own.
    """
    directory = outputDirectory / dialect.name
    directory.mkdir(parents=True, exist_ok=True)
    paths = []
    scripts = []
    for spec in specs:
        script = tableScript(dialect, spec)
        path = directory / f"{spec.name}.sql"
        path.write_text(script, encoding="utf-8")
        paths.append(path)
        scripts.append(script)
    createAllPath = directory / CREATE_ALL_FILE_NAME
    createAllPath.write_text("\n".join(scripts), encoding="utf-8")
    return paths + [createAllPath]
