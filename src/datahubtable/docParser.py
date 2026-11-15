"""Turns a D2L documentation page into data set definitions.

Each page documents several data sets. A data set is an h2 heading followed by a
table whose header row has version, field and description cells. Brightspace Data
Sets tables also have Type, Size and Key cells. Most Advanced Data Sets tables do
not, because D2L does not document those types, and their columns become text.
Pages also hold note boxes, filter lists and lookup tables built with the table
tag. Those lack the column headers and are skipped.
"""

from dataclasses import dataclass, field
from html.parser import HTMLParser
from typing import Any

from datahubtable.d2lDocs import ADS_CATEGORY_ID
from datahubtable.schema import Column, DataSet

COLUMN_TABLE_HEADERS = {"Version History", "Field", "Description"}
TYPE_HEADERS = {"Type", "Size", "Key"}
HEADER_ALIASES = {
    "VersionHistory": "Version History",
    "Version Added": "Version History",
    "Column Size": "Size",
    "Field Name": "Field",
    "Field name": "Field",
}
# The type given to a column whose type D2L does not document.
UNDOCUMENTED_TYPE = "text"


class DocFormatError(ValueError):
    """A documentation page does not have the layout the parser understands."""


@dataclass
class Heading:
    """An h2 heading and the anchor D2L gives it."""

    text: str = ""
    anchor: str = ""


@dataclass
class Table:
    """A table's cell text, row by row, with the heading it appeared under."""

    heading: Heading | None
    rows: list[list[str]] = field(default_factory=list)


class PageOutline(HTMLParser):
    """Collects the top-level tables of a page along with their h2 headings."""

    def __init__(self) -> None:
        super().__init__()
        self.tables: list[Table] = []
        self.heading: Heading | None = None
        self.insideHeading = False
        self.tableDepth = 0
        self.row: list[str] | None = None
        self.cell: list[str] | None = None

    def handle_starttag(self, tag: str, attrs: list[tuple[str, str | None]]) -> None:
        """Track the start of headings, tables, rows and cells."""
        if tag == "h2" and self.tableDepth == 0:
            self.heading = Heading(anchor=dict(attrs).get("data-id") or "")
            self.insideHeading = True
        elif tag == "table":
            self.tableDepth += 1
            if self.tableDepth == 1:
                self.tables.append(Table(heading=self.heading))
        elif tag == "tr" and self.tableDepth == 1:
            self.row = []
        elif tag in ("td", "th") and self.tableDepth == 1 and self.row is not None:
            self.cell = []

    def handle_endtag(self, tag: str) -> None:
        """Close headings, tables, rows and cells, storing finished rows."""
        if tag == "h2":
            self.insideHeading = False
        elif tag == "table":
            self.tableDepth -= 1
        elif tag == "tr" and self.tableDepth == 1 and self.row is not None:
            self.tables[-1].rows.append(self.row)
            self.row = None
        elif tag in ("td", "th") and self.tableDepth == 1 and self.row is not None and self.cell is not None:
            self.row.append(cleanText("".join(self.cell)))
            self.cell = None

    def handle_data(self, data: str) -> None:
        """Add text to the heading or cell being read."""
        if self.insideHeading and self.heading is not None:
            self.heading.text = cleanText(self.heading.text + data)
        elif self.cell is not None:
            self.cell.append(data)


def cleanText(text: str) -> str:
    """Collapse runs of whitespace, including non-breaking spaces, into single spaces."""
    return " ".join(text.replace("\xa0", " ").split())


def parseArticle(article: dict[str, Any]) -> list[DataSet]:
    """Return the data sets documented on one page, in page order.

    The article is the JSON object the D2L community API returns for a page. Its
    name, url, body and knowledgeCategoryID fields are used.
    """
    kind = "ADS" if article.get("knowledgeCategoryID") == ADS_CATEGORY_ID else "BDS"
    outline = PageOutline()
    outline.feed(article["body"])
    dataSets = []
    for table in outline.tables:
        if not table.rows:
            continue
        headers = [HEADER_ALIASES.get(cell, cell) for cell in table.rows[0]]
        if not COLUMN_TABLE_HEADERS.issubset(headers):
            continue
        if table.heading is None:
            raise DocFormatError(f"{article['name']}: found a column table with no heading above it.")
        if kind == "BDS" and not TYPE_HEADERS.issubset(headers):
            raise DocFormatError(
                f"{article['name']}: data set '{table.heading.text}' has a column table without Type, Size and Key."
            )
        columns = tuple(
            parseColumn(article["name"], table.heading.text, headers, row)
            for row in table.rows[1:]
            if any(row)
        )
        sourceUrl = f"{article['url']}#{table.heading.anchor}" if table.heading.anchor else article["url"]
        dataSets.append(DataSet(name=table.heading.text, sourceUrl=sourceUrl, columns=columns, kind=kind))
    return dataSets


def parseColumn(articleName: str, dataSetName: str, headers: list[str], row: list[str]) -> Column:
    """Build a column from one table row, using the header row to find each cell."""
    if len(row) != len(headers):
        raise DocFormatError(
            f"{articleName}: data set '{dataSetName}' has a row with {len(row)} cells "
            f"where the header has {len(headers)}: {row}"
        )
    cells = dict(zip(headers, row))
    dataType = cells.get("Type", UNDOCUMENTED_TYPE).lower()
    if not cells["Field"] or not dataType:
        raise DocFormatError(f"{articleName}: data set '{dataSetName}' has a row without a field name or type: {row}")
    if "Can be null?" in cells:
        canBeNull = cells["Can be null?"].lower() == "yes"
    else:
        canBeNull = "can be null" in cells["Description"].lower()
    return Column(
        name=cells["Field"],
        description=cells["Description"],
        dataType=dataType,
        size=cells.get("Size", ""),
        isPrimaryKey="PK" in cells.get("Key", ""),
        isForeignKey="FK" in cells.get("Key", ""),
        canBeNull=canBeNull,
        versionHistory=cells["Version History"],
    )
