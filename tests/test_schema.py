"""Tests for data set definitions and their JSON files."""

import dataclasses

import pytest

from datahubtable.docParser import parseArticle
from datahubtable.schema import (
    DataSet,
    SchemaError,
    dataSetFileName,
    loadDataSets,
    mergeDataSets,
    saveDataSets,
)

from .conftest import QUIZZES_ARTICLE_ID, SURVEYS_ARTICLE_ID, loadArticle, makeColumn


def test_fileNameDropsSpacesAndPunctuation():
    assert dataSetFileName("Grade Schemes") == "GradeSchemes.json"
    assert dataSetFileName("Creator+ Practices Adoption") == "CreatorPracticesAdoption.json"


def test_savedDataSetsLoadBackUnchanged(tmp_path, gradeSchemes):
    paths = saveDataSets([gradeSchemes], tmp_path)
    assert [path.name for path in paths] == ["GradeSchemes.json"]
    assert loadDataSets(tmp_path) == [gradeSchemes]


def test_loadingAnEmptyDirectoryIsAnError(tmp_path):
    with pytest.raises(SchemaError, match="No data set files"):
        loadDataSets(tmp_path)


def test_primaryKeyListsKeyColumnsInOrder(gradeSchemes):
    assert [column.name for column in gradeSchemes.primaryKey()] == ["GradeSchemeId"]


def test_primaryKeyIsEmptyWhenAKeyColumnCanBeNull():
    dataSet = DataSet(
        name="Survey User Answers",
        sourceUrl="https://example.test/surveys",
        columns=(
            makeColumn("AttemptId", "bigint", "8", "PK"),
            makeColumn("QuestionVersionId", "bigint", "8", "PK", canBeNull=True),
        ),
    )
    assert dataSet.primaryKey() == ()


def test_mergeKeepsOneCopyOfADataSetDocumentedOnTwoPages():
    quizzes = parseArticle(loadArticle(QUIZZES_ARTICLE_ID))
    surveys = parseArticle(loadArticle(SURVEYS_ARTICLE_ID))
    merged = mergeDataSets(quizzes + surveys)
    names = [dataSet.name for dataSet in merged]
    assert names.count("Quiz Survey Sections") == 1
    assert len(merged) == len(quizzes) + len(surveys) - 1
    assert names == sorted(names)


def test_mergeRejectsTwoDifferentDefinitionsOfOneName(gradeSchemes):
    changed = dataclasses.replace(gradeSchemes, columns=gradeSchemes.columns[:2])
    with pytest.raises(SchemaError, match="Grade Schemes.*different columns"):
        mergeDataSets([gradeSchemes, changed])


def test_advancedDataSetsAreQualifiedSoTheyCannotCollideWithBrightspaceDataSets(tmp_path, gradeSchemes):
    advanced = dataclasses.replace(gradeSchemes, kind="ADS")
    assert (gradeSchemes.qualifiedName, advanced.qualifiedName) == ("Grade Schemes", "ADS Grade Schemes")
    paths = saveDataSets([gradeSchemes, advanced], tmp_path)
    assert sorted(path.name for path in paths) == ["ADSGradeSchemes.json", "GradeSchemes.json"]
    assert loadDataSets(tmp_path) == [advanced, gradeSchemes]
    assert mergeDataSets([gradeSchemes, advanced]) == [advanced, gradeSchemes]
