"""Shared test helpers: real D2L documentation pages and small hand-built data sets."""

import json
from pathlib import Path
from typing import Any

import pytest

from datahubGetSchema.schema import Column, DataSet

FIXTURE_ARTICLES = Path(__file__).parent / "fixtures" / "articles"

USERS_ARTICLE_ID = 4740
ASSIGNMENTS_ARTICLE_ID = 4767
CREATOR_ARTICLE_ID = 26161
QUIZZES_ARTICLE_ID = 4532
SURVEYS_ARTICLE_ID = 4538
ADS_ARTICLE_ID = 4539


def loadArticle(articleId: int) -> dict[str, Any]:
    """Return one D2L documentation page as downloaded from the community API."""
    return json.loads((FIXTURE_ARTICLES / f"{articleId}.json").read_text(encoding="utf-8"))


def makeColumn(name: str, dataType: str, size: str, key: str = "", canBeNull: bool = False) -> Column:
    """Build a column the way the documentation parser would, from the Type, Size and Key cells."""
    return Column(
        name=name,
        description=f"{name} description",
        dataType=dataType,
        size=size,
        isPrimaryKey="PK" in key,
        isForeignKey="FK" in key,
        canBeNull=canBeNull,
        versionHistory="1.0",
    )


@pytest.fixture
def gradeSchemes() -> DataSet:
    """A small data set that uses a key, a string, a date, and a nullable column."""
    return DataSet(
        name="Grade Schemes",
        sourceUrl="https://example.test/grades#grade-schemes",
        columns=(
            makeColumn("GradeSchemeId", "bigint", "8", "PK"),
            makeColumn("OrgUnitId", "int", "4", "FK", canBeNull=True),
            makeColumn("SchemeName", "nvarchar", "128"),
            makeColumn("DeletedDate", "datetime2", "8", canBeNull=True),
        ),
    )
