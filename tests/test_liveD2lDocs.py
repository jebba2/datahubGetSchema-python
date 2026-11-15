"""End-to-end tests against the real D2L community site. They need network access."""

import logging

from datahubtable.d2lDocs import ADS_CATEGORY_ID, BDS_CATEGORY_ID, fetchArticle, listArticles
from datahubtable.docParser import parseArticle

from .conftest import ADS_ARTICLE_ID, USERS_ARTICLE_ID


def test_categoryListsTheBrightspaceDataSetPages():
    summaries = listArticles(BDS_CATEGORY_ID)
    names = [summary["name"] for summary in summaries]
    assert len(summaries) >= 40
    assert "Users data sets" in names
    assert all(isinstance(summary["articleID"], int) for summary in summaries)


def test_categoryListsTheAdvancedDataSetsPage():
    summaries = listArticles(ADS_CATEGORY_ID)
    assert ADS_ARTICLE_ID in [summary["articleID"] for summary in summaries]


def test_downloadedPageParsesIntoBrightspaceDataSets():
    article = fetchArticle(USERS_ARTICLE_ID)
    users = next(dataSet for dataSet in parseArticle(article) if dataSet.name == "Users")
    userId = users.columns[0]
    assert (users.kind, userId.name, userId.dataType, userId.isPrimaryKey) == ("BDS", "UserId", "int", True)


def test_downloadedPageParsesIntoAdvancedDataSets():
    dataSets = parseArticle(fetchArticle(ADS_ARTICLE_ID))
    allGrades = next(dataSet for dataSet in dataSets if dataSet.name == "All Grades")
    assert len(dataSets) >= 19
    assert (allGrades.kind, allGrades.columns[0].name, allGrades.columns[0].dataType) == ("ADS", "User Id", "text")


def test_eachRequestIsLoggedInDebugDetail(caplog):
    caplog.set_level(logging.DEBUG, logger="datahubtable")
    listArticles(BDS_CATEGORY_ID)
    assert "GET /articles?knowledgeCategoryID=1229&limit=100&page=1" in caplog.text
