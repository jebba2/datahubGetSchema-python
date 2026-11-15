"""Compares existing tables with the documented data sets and plans changes that keep every row.

The plan only creates missing tables and indexes, adds missing columns as nullable,
and widens columns. It never drops, shrinks, renames, or converts anything.
Differences that would need one of those are written down as notes for a person
to handle.
"""

from dataclasses import dataclass, field

from datahubtable.dialects.base import Dialect, ExistingColumn, ExistingTable, sqlComment
from datahubtable.schema import Column, DataSet
from datahubtable.sqlTypes import TypeChange, compareTypes
from datahubtable.tables import TableSpec, createStatements


@dataclass
class UpgradePlan:
    """Statements that are safe to run, and notes about differences left untouched."""

    statements: list[str] = field(default_factory=list)
    notes: list[str] = field(default_factory=list)


def planUpgrade(specs: list[TableSpec], dialect: Dialect, existingTables: dict[str, ExistingTable]) -> UpgradePlan:
    """Plan the changes that bring a database's tables and indexes up to the wanted ones.

    existingTables is keyed by lowercase table name, as Dialect.readTables returns it.
    Tables in the database that belong to no data set are ignored.
    """
    plan = UpgradePlan()
    for spec in specs:
        existing = existingTables.get(spec.name.lower())
        if existing is None:
            plan.statements += createStatements(dialect, spec)
        else:
            planTable(plan, dialect, spec.dataSet, existing)
            planIndexes(plan, dialect, spec, existing)
    return plan


def planIndexes(plan: UpgradePlan, dialect: Dialect, spec: TableSpec, existing: ExistingTable) -> None:
    """Add to the plan an index for each wanted column that no existing index starts with."""
    for column in spec.indexColumns:
        columnName = dialect.columnName(column.name)
        if columnName.lower() not in existing.indexedColumns:
            actualName = existing.columns[columnName.lower()].name if columnName.lower() in existing.columns else columnName
            plan.statements.append(dialect.createIndex(existing.name, actualName))


def planTable(plan: UpgradePlan, dialect: Dialect, dataSet: DataSet, existing: ExistingTable) -> None:
    """Add to the plan whatever one existing table needs."""
    expectedNames = set()
    for column in dataSet.columns:
        columnName = dialect.columnName(column.name)
        expectedNames.add(columnName.lower())
        existingColumn = existing.columns.get(columnName.lower())
        if existingColumn is None:
            plan.statements.append(dialect.addColumn(existing.name, columnName, dialect.sqlType(column)))
        else:
            planColumn(plan, dialect, column, existing.name, existingColumn)
    for name, existingColumn in existing.columns.items():
        if name not in expectedNames:
            plan.notes.append(
                f"{existing.name}.{existingColumn.name}: not in the D2L documentation. It was left in place."
            )
    notePrimaryKeyDifference(plan, dialect, dataSet, existing)


def planColumn(plan: UpgradePlan, dialect: Dialect, column: Column, tableName: str, existing: ExistingColumn) -> None:
    """Add to the plan whatever one existing column needs to hold the documented type."""
    expected = dialect.sqlType(column)
    change = compareTypes(existing.sqlType, expected)
    label = f"{tableName}.{existing.name}"
    if change is TypeChange.MANUAL:
        plan.notes.append(
            f"{label}: the database has {existing.sqlType.native} and the documentation calls for {expected.native}. "
            "Converting it could change stored values, so it was left alone."
        )
    elif change is TypeChange.WIDEN:
        statement = dialect.alterColumnType(tableName, existing, expected)
        if statement is None:
            plan.notes.append(
                f"{label}: needs {expected.native}, and {dialect.name} cannot change "
                f"{existing.sqlType.native} to it in place."
            )
        else:
            plan.statements.append(statement)


def notePrimaryKeyDifference(plan: UpgradePlan, dialect: Dialect, dataSet: DataSet, existing: ExistingTable) -> None:
    """Note a primary key that differs from the documented one. Changing a key can fail or reject rows."""
    expectedKey = [dialect.columnName(column.name) for column in dataSet.primaryKey()]
    if {name.lower() for name in expectedKey} == existing.primaryKey:
        return
    existingKey = [column.name for name, column in existing.columns.items() if name in existing.primaryKey]
    plan.notes.append(
        f"{existing.name}: the primary key is ({', '.join(existingKey) or 'none'}) in the database and "
        f"({', '.join(expectedKey) or 'none'}) in the documentation. Keys are never changed."
    )


def renderUpgradeScript(plan: UpgradePlan, dialect: Dialect) -> str:
    """Return the upgrade plan as a SQL script, with the notes as comments at the end."""
    if not plan.statements and not plan.notes:
        return sqlComment(f"{dialect.name} tables match the D2L documentation. Nothing to do.") + "\n"
    lines = [
        sqlComment(f"Upgrade script for {dialect.name}. Review it before running."),
        sqlComment("It only creates tables and indexes, adds columns, and widens columns."),
    ]
    for statement in plan.statements:
        lines += ["", statement + ";"]
    if plan.notes:
        lines += ["", sqlComment("Differences left for you to handle:")]
        lines += [sqlComment(note) for note in plan.notes]
    return "\n".join(lines) + "\n"
