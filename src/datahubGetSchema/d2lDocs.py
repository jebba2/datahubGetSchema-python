"""Downloads the Data Hub documentation pages from the D2L community site.

D2L publishes the column definitions in its Knowledge Base: one page per group of
Brightspace Data Sets, and one page listing the Advanced Data Sets. The site's
public JSON API returns each page's HTML without a login.
"""

import json
import logging
import time
import urllib.request
from collections.abc import Callable
from pathlib import Path
from typing import Any

log = logging.getLogger(__name__)

API_URL = "https://community.d2l.com/brightspace/api/v2"
# The Knowledge Base category that holds one article per group of Brightspace Data Sets.
BDS_CATEGORY_ID = 1229
# The Knowledge Base category whose articles describe the Advanced Data Sets.
ADS_CATEGORY_ID = 1230
DOCUMENTATION_CATEGORY_IDS = (BDS_CATEGORY_ID, ADS_CATEGORY_ID)
PAGE_SIZE = 100
REQUEST_TIMEOUT_SECONDS = 60
PAUSE_BETWEEN_REQUESTS_SECONDS = 0.2
USER_AGENT = "datahubGetSchema"


def getJson(path: str) -> Any:
    """Return the decoded JSON response for one API path."""
    log.debug("GET %s", path)
    request = urllib.request.Request(f"{API_URL}{path}", headers={"User-Agent": USER_AGENT})
    with urllib.request.urlopen(request, timeout=REQUEST_TIMEOUT_SECONDS) as response:
        return json.loads(response.read().decode("utf-8"))


def listArticles(categoryId: int) -> list[dict[str, Any]]:
    """Return the summary of every documentation page in one Knowledge Base category."""
    articles: list[dict[str, Any]] = []
    page = 1
    while True:
        batch = getJson(f"/articles?knowledgeCategoryID={categoryId}&limit={PAGE_SIZE}&page={page}")
        articles.extend(batch)
        if len(batch) < PAGE_SIZE:
            return articles
        page += 1


def fetchArticle(articleId: int) -> dict[str, Any]:
    """Return one documentation page, including its HTML body."""
    return getJson(f"/articles/{articleId}")


def downloadArticles(cacheDirectory: Path, report: Callable[[str], None]) -> list[dict[str, Any]]:
    """Download every documentation page, save each one in the cache directory, and return them.

    The saved copies let the data set definitions be rebuilt later without the network.
    """
    cacheDirectory.mkdir(parents=True, exist_ok=True)
    summaries = [summary for categoryId in DOCUMENTATION_CATEGORY_IDS for summary in listArticles(categoryId)]
    articles = []
    for position, summary in enumerate(summaries, start=1):
        report(f"[{position}/{len(summaries)}] {summary['name']}")
        article = fetchArticle(summary["articleID"])
        (cacheDirectory / f"{summary['articleID']}.json").write_text(json.dumps(article), encoding="utf-8")
        articles.append(article)
        time.sleep(PAUSE_BETWEEN_REQUESTS_SECONDS)
    return articles


def loadCachedArticles(cacheDirectory: Path) -> list[dict[str, Any]]:
    """Return the documentation pages saved by an earlier download."""
    paths = sorted(cacheDirectory.glob("*.json"))
    if not paths:
        raise FileNotFoundError(f"No saved documentation pages in {cacheDirectory}. Run 'datahubGetSchema fetch' first.")
    return [json.loads(path.read_text(encoding="utf-8")) for path in paths]
