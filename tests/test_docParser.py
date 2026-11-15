"""Tests for turning D2L documentation pages into data set definitions."""

import pytest

from datahubtable.docParser import DocFormatError, parseArticle

from .conftest import (
    ADS_ARTICLE_ID,
    ASSIGNMENTS_ARTICLE_ID,
    CREATOR_ARTICLE_ID,
    USERS_ARTICLE_ID,
    loadArticle,
)


def dataSetNamed(articleId: int, name: str):
    """Parse a fixture page and return the data set with the given name."""
    return next(dataSet for dataSet in parseArticle(loadArticle(articleId)) if dataSet.name == name)


def test_findsEveryDataSetOnThePage():
    names = [dataSet.name for dataSet in parseArticle(loadArticle(USERS_ARTICLE_ID))]
    assert names == [
        "Auditor Relationships Log",
        "Course Access",
        "Course Access Log",
        "Enrollments and Withdrawals",
        "User Attribute Definitions",
        "User Attribute Values",
        "User Enrollments",
        "User Logins",
        "Users",
    ]


def test_readsColumnNamesTypesAndSizes():
    auditorLog = dataSetNamed(USERS_ARTICLE_ID, "Auditor Relationships Log")
    assert [(column.name, column.dataType, column.size) for column in auditorLog.columns] == [
        ("AuditorId", "int", "4"),
        ("UserToAuditId", "int", "4"),
        ("OrgUnitId", "int", "4"),
        ("Action", "nvarchar", "16"),
        ("ModifiedBy", "int", "4"),
        ("ModifiedDate", "datetime2", "8"),
    ]


def test_readsPrimaryAndForeignKeys():
    columns = {column.name: column for column in dataSetNamed(USERS_ARTICLE_ID, "Auditor Relationships Log").columns}
    assert (columns["AuditorId"].isPrimaryKey, columns["AuditorId"].isForeignKey) == (True, True)
    assert (columns["ModifiedDate"].isPrimaryKey, columns["ModifiedDate"].isForeignKey) == (True, False)
    assert (columns["ModifiedBy"].isPrimaryKey, columns["ModifiedBy"].isForeignKey) == (False, True)
    assert (columns["Action"].isPrimaryKey, columns["Action"].isForeignKey) == (False, False)


def test_keepsDescriptionAndVersionHistory():
    columns = {column.name: column for column in dataSetNamed(USERS_ARTICLE_ID, "Auditor Relationships Log").columns}
    assert columns["OrgUnitId"].description == "Org Unit identifier where the auditor relationship exists."
    assert columns["OrgUnitId"].versionHistory == "6.15 / 7.3 - Updated description"


def test_sourceUrlPointsAtTheDataSetHeading():
    auditorLog = dataSetNamed(USERS_ARTICLE_ID, "Auditor Relationships Log")
    assert auditorLog.sourceUrl == (
        "https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#auditor-relationships-log"
    )


def test_nullabilityComesFromTheDescriptionText():
    users = dataSetNamed(USERS_ARTICLE_ID, "Users")
    nullable = {column.name for column in users.columns if column.canBeNull}
    assert "UserId" not in nullable
    assert all("can be null" in column.description.lower() for column in users.columns if column.canBeNull)
    assert nullable


def test_nullabilityComesFromTheCanBeNullColumnWhenPresent():
    details = dataSetNamed(ASSIGNMENTS_ARTICLE_ID, "Assignment Submission Details")
    assert len(details.columns) == 13
    assert sum(column.canBeNull for column in details.columns) == 7


def test_readsTablesWhoseColumnsAreInADifferentOrder():
    submissions = dataSetNamed(ASSIGNMENTS_ARTICLE_ID, "Assignment Submissions")
    assert len(submissions.columns) == 17
    assert sum(column.canBeNull for column in submissions.columns) == 10
    submitterType = next(column for column in submissions.columns if column.name == "SubmitterType")
    assert (submitterType.dataType, submitterType.size, submitterType.isPrimaryKey) == ("varchar", "5", True)


def test_ignoresNoteAndLookupTables():
    names = [dataSet.name for dataSet in parseArticle(loadArticle(ASSIGNMENTS_ARTICLE_ID))]
    assert "Entity Relationship Diagram" not in names
    assert len(names) == len(set(names))


def test_subHeadingsDoNotRenameTheDataSet():
    names = [dataSet.name for dataSet in parseArticle(loadArticle(CREATOR_ARTICLE_ID))]
    assert names == ["Creator+ Practices Adoption", "Creator+ Practices Engagement"]


def test_rowWithMissingCellsIsAnError():
    article = {
        "name": "Broken data sets",
        "url": "https://example.test/broken",
        "body": (
            "<h2>Broken</h2><table>"
            "<tr><th>Version History</th><th>Field</th><th>Description</th><th>Type</th><th>Size</th><th>Key</th></tr>"
            "<tr><td>1.0</td><td>OnlyField</td><td>int</td></tr>"
            "</table>"
        ),
    }
    with pytest.raises(DocFormatError, match="Broken data sets.*Broken.*3 cells"):
        parseArticle(article)


def test_columnTableWithoutAHeadingIsAnError():
    article = {
        "name": "Headless data sets",
        "url": "https://example.test/headless",
        "body": (
            "<table>"
            "<tr><th>Version History</th><th>Field</th><th>Description</th><th>Type</th><th>Size</th><th>Key</th></tr>"
            "<tr><td>1.0</td><td>UserId</td><td>User</td><td>int</td><td>4</td><td>PK</td></tr>"
            "</table>"
        ),
    }
    with pytest.raises(DocFormatError, match="Headless data sets.*no heading"):
        parseArticle(article)


def test_brightspaceDataSetsAreMarkedBds():
    assert {dataSet.kind for dataSet in parseArticle(loadArticle(USERS_ARTICLE_ID))} == {"BDS"}


def test_advancedDataSetPageYieldsOneDataSetPerSection():
    dataSets = parseArticle(loadArticle(ADS_ARTICLE_ID))
    assert len(dataSets) == 19
    assert {dataSet.kind for dataSet in dataSets} == {"ADS"}
    assert dataSets[0].name == "All Grades"
    assert dataSets[0].qualifiedName == "ADS All Grades"


def test_advancedDataSetColumnsWithoutADocumentedTypeAreText():
    allGrades = dataSetNamed(ADS_ARTICLE_ID, "All Grades")
    assert len(allGrades.columns) == 33
    assert sum(column.canBeNull for column in allGrades.columns) == 19
    userId = allGrades.columns[0]
    assert (userId.name, userId.dataType, userId.size) == ("User Id", "text", "")
    assert (userId.isPrimaryKey, userId.isForeignKey, userId.versionHistory) == (False, False, "10.7.0")


def test_theOneAdvancedDataSetWithDocumentedTypesKeepsThem():
    dataSets = parseArticle(loadArticle(ADS_ARTICLE_ID))
    typed = [dataSet for dataSet in dataSets if any(column.dataType != "text" for column in dataSet.columns)]
    assert len(typed) == 1
    assert all(column.dataType != "text" and column.size for column in typed[0].columns)


def test_filterTablesOnAdvancedDataSetPagesAreNotDataSets():
    dataSets = parseArticle(loadArticle(ADS_ARTICLE_ID))
    assert len({dataSet.name for dataSet in dataSets}) == 19
    assert all(dataSet.columns[0].versionHistory for dataSet in dataSets)


def test_untypedColumnTableOnABrightspaceDataSetsPageIsAnError():
    article = {
        "name": "Untyped data sets",
        "url": "https://example.test/untyped",
        "body": (
            "<h2>Untyped</h2><table>"
            "<tr><th>Version History</th><th>Field</th><th>Description</th></tr>"
            "<tr><td>1.0</td><td>UserId</td><td>User</td></tr>"
            "</table>"
        ),
    }
    with pytest.raises(DocFormatError, match="Untyped data sets.*Untyped.*Type, Size and Key"):
        parseArticle(article)
