"""Tests for downloading the documentation pages, run against a small HTTP server on this machine.

The server answers the two API paths the tool uses, so the real request and threading code runs
without calling the D2L community site.
"""

import json
import threading
import urllib.error
from collections.abc import Iterator
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
from urllib.parse import parse_qs, urlparse

import pytest

from datahubGetSchema import d2lDocs
from datahubGetSchema.d2lDocs import BDS_CATEGORY_ID, downloadArticles, workerCount

ARTICLE_IDS = [101, 102, 103, 104]
MISSING_ARTICLE_ID = 999
SECONDS_TO_WAIT_FOR_A_SECOND_REQUEST = 5


class DocumentationServer(ThreadingHTTPServer):
    """A stand-in for the D2L Knowledge Base API that lists and serves a fixed set of pages."""

    def __init__(self, articleIds: list[int], requestsThatMustOverlap: int) -> None:
        super().__init__(("127.0.0.1", 0), DocumentationHandler)
        self.articleIds = articleIds
        # Each page request waits here until this many are in flight, so pages only arrive
        # when the client really downloads them at the same time.
        self.overlap = threading.Barrier(requestsThatMustOverlap, timeout=SECONDS_TO_WAIT_FOR_A_SECOND_REQUEST)


class DocumentationHandler(BaseHTTPRequestHandler):
    """Answers /articles?knowledgeCategoryID=N with page summaries and /articles/N with one page."""

    def do_GET(self) -> None:
        """Answer one API request."""
        server = self.server
        assert isinstance(server, DocumentationServer)
        url = urlparse(self.path)
        if url.path.endswith("/articles"):
            isFirstCategory = parse_qs(url.query)["knowledgeCategoryID"] == [str(BDS_CATEGORY_ID)]
            articleIds = server.articleIds if isFirstCategory else []
            self.sendJson([{"articleID": articleId, "name": f"Page {articleId}"} for articleId in articleIds])
            return
        articleId = int(url.path.rsplit("/", 1)[1])
        if articleId == MISSING_ARTICLE_ID:
            self.send_error(404)
            return
        try:
            server.overlap.wait()
        except threading.BrokenBarrierError:
            self.send_error(500, "No second request arrived while this one was waiting")
            return
        self.sendJson({"articleID": articleId, "body": f"<p>Page {articleId}</p>"})

    def sendJson(self, payload: object) -> None:
        """Send a 200 response with a JSON body."""
        body = json.dumps(payload).encode("utf-8")
        self.send_response(200)
        self.send_header("Content-Type", "application/json")
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        self.wfile.write(body)

    def log_message(self, format: str, *args: object) -> None:
        """Keep the server's request lines out of the test output."""


def serve(monkeypatch: pytest.MonkeyPatch, articleIds: list[int], requestsThatMustOverlap: int) -> Iterator[None]:
    """Run a documentation server for one test and point the tool at it."""
    server = DocumentationServer(articleIds, requestsThatMustOverlap)
    thread = threading.Thread(target=server.serve_forever)
    thread.start()
    monkeypatch.setattr(d2lDocs, "API_URL", f"http://127.0.0.1:{server.server_port}")
    try:
        yield
    finally:
        server.shutdown()
        thread.join()
        server.server_close()


@pytest.fixture
def pagesServedOnlyTwoAtATime(monkeypatch) -> Iterator[None]:
    yield from serve(monkeypatch, ARTICLE_IDS, requestsThatMustOverlap=2)


@pytest.fixture
def serverWithAMissingPage(monkeypatch) -> Iterator[None]:
    yield from serve(monkeypatch, [MISSING_ARTICLE_ID], requestsThatMustOverlap=1)


def coreCountOf(monkeypatch: pytest.MonkeyPatch, cores: int | None) -> None:
    """Make the computer report the given number of cores."""
    monkeypatch.setattr(d2lDocs.os, "cpu_count", lambda: cores)


@pytest.mark.parametrize(("cores", "workers"), [(8, 7), (2, 1), (1, 1), (None, 1)])
def test_oneWorkerPerCoreButOneAndNeverFewerThanOne(monkeypatch, cores, workers):
    coreCountOf(monkeypatch, cores)
    assert workerCount() == workers


def test_pagesAreDownloadedAtTheSameTimeAndReturnedInListedOrder(pagesServedOnlyTwoAtATime, monkeypatch, tmp_path):
    coreCountOf(monkeypatch, 5)
    progress: list[str] = []
    articles = downloadArticles(tmp_path / "docs", progress.append)
    assert [article["articleID"] for article in articles] == ARTICLE_IDS
    assert progress == ["[1/4] Page 101", "[2/4] Page 102", "[3/4] Page 103", "[4/4] Page 104"]


def test_eachDownloadedPageIsSavedInTheCacheDirectory(pagesServedOnlyTwoAtATime, monkeypatch, tmp_path):
    coreCountOf(monkeypatch, 5)
    downloadArticles(tmp_path / "docs", lambda message: None)
    saved = {path.name: json.loads(path.read_text(encoding="utf-8")) for path in Path(tmp_path / "docs").iterdir()}
    assert saved == {f"{articleId}.json": {"articleID": articleId, "body": f"<p>Page {articleId}</p>"} for articleId in ARTICLE_IDS}


def test_pageThatFailsToDownloadStopsTheFetch(serverWithAMissingPage, tmp_path):
    with pytest.raises(urllib.error.HTTPError, match="404"):
        downloadArticles(tmp_path / "docs", lambda message: None)
