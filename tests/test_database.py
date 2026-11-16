"""Tests for reading a database URL."""

import pytest

from datahubGetSchema.database import parseDatabaseUrl, redactUrl
from datahubGetSchema.dialects.base import ConnectionTarget


def test_urlSchemePicksTheDatabase():
    assert parseDatabaseUrl("mysql://loader@db.example.test/datahub", "secret")[0].name == "mysql"
    assert parseDatabaseUrl("postgresql://loader@db.example.test/datahub", "secret")[0].name == "postgres"
    assert parseDatabaseUrl("postgres://loader@db.example.test/datahub", "secret")[0].name == "postgres"
    assert parseDatabaseUrl("oracle://loader@db.example.test/FREEPDB1", "secret")[0].name == "oracle"


def test_urlPartsBecomeTheConnectionTarget():
    target = parseDatabaseUrl("oracle://loader@db.example.test:1522/FREEPDB1", "secret")[1]
    assert target == ConnectionTarget(
        host="db.example.test", port=1522, user="loader", password="secret", database="FREEPDB1"
    )


def test_portIsOptional():
    assert parseDatabaseUrl("mysql://loader@db.example.test/datahub", "secret")[1].port is None


def test_passwordInTheUrlWinsAndIsDecoded():
    target = parseDatabaseUrl("mysql://load%40er:p%40ss%2Fword@db.example.test/datahub", "ignored")[1]
    assert (target.user, target.password) == ("load@er", "p@ss/word")


def test_unknownSchemeIsAnError():
    with pytest.raises(ValueError, match="sqlite.*mysql, oracle, postgres, postgresql"):
        parseDatabaseUrl("sqlite:///datahub.db", "secret")


@pytest.mark.parametrize("url", ["mysql://db.example.test/datahub", "mysql://loader@/datahub", "mysql://loader@db.example.test"])
def test_urlMissingUserHostOrDatabaseIsAnError(url):
    with pytest.raises(ValueError, match="user@host"):
        parseDatabaseUrl(url, "secret")


def test_redactedUrlHidesOnlyThePassword():
    assert redactUrl("mysql://loader:p%40ss@db.example.test:3306/datahub") == "mysql://loader:***@db.example.test:3306/datahub"
    assert redactUrl("mysql://loader@db.example.test/datahub") == "mysql://loader@db.example.test/datahub"


def test_redactedUrlHidesAPasswordThatContainsAnAtSign():
    assert redactUrl("oracle://loader:p@ss@db.example.test/FREEPDB1") == "oracle://loader:***@db.example.test/FREEPDB1"
