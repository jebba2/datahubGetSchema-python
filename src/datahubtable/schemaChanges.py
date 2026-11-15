"""Describes what changed in the documented data sets between two fetches."""

from datahubtable.schema import Column, DataSet

# The column settings that decide a table's definition, with the words used to report a change.
REPORTED_FLAGS = {"isPrimaryKey": "primary key", "isForeignKey": "foreign key", "canBeNull": "can be null"}


def describeChanges(previous: list[DataSet], current: list[DataSet]) -> list[str]:
    """Return one line per difference between the previous and the current data sets.

    Removed data sets come first, then new ones, then column changes by data set.
    Changes to descriptions and version notes are left out, because they do not
    affect any table.
    """
    before = {dataSet.qualifiedName: dataSet for dataSet in previous}
    after = {dataSet.qualifiedName: dataSet for dataSet in current}
    lines = [f"Removed data set: {name}" for name in sorted(before.keys() - after.keys())]
    for name in sorted(after.keys() - before.keys()):
        count = len(after[name].columns)
        lines.append(f"New data set: {name} ({count} column{'' if count == 1 else 's'})")
    for name in sorted(before.keys() & after.keys()):
        lines += describeColumnChanges(name, before[name], after[name])
    return lines


def describeColumnChanges(name: str, previous: DataSet, current: DataSet) -> list[str]:
    """Return the removed, new and changed columns of one data set."""
    before = {column.name: column for column in previous.columns}
    after = {column.name: column for column in current.columns}
    lines = [f"{name}: removed column {column}" for column in before if column not in after]
    lines += [
        f"{name}: new column {column.name} ({typeOf(column)})" for column in current.columns if column.name not in before
    ]
    for column in current.columns:
        if column.name in before:
            lines += describeColumnChange(f"{name}.{column.name}", before[column.name], column)
    return lines


def typeOf(column: Column) -> str:
    """Return a column's documented type and size as one phrase, such as 'nvarchar 128'."""
    return f"{column.dataType} {column.size}".strip()


def describeColumnChange(label: str, previous: Column, current: Column) -> list[str]:
    """Return the differences between two versions of one column."""
    lines = []
    if typeOf(previous) != typeOf(current):
        lines.append(f"{label}: type changed from {typeOf(previous)} to {typeOf(current)}")
    for flag, words in REPORTED_FLAGS.items():
        was, now = getattr(previous, flag), getattr(current, flag)
        if was != now:
            lines.append(f"{label}: {words} changed from {'yes' if was else 'no'} to {'yes' if now else 'no'}")
    return lines
