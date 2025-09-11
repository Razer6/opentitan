# SPDX-FileCopyrightText: Copyright (c) 2022 by Rivos Inc.
# Confidential and proprietary, see LICENSE for details.
# SPDX-License-Identifier: LicenseRef-Rivos-Internal-Only

"Merge request information as gathered by calls to the gitlab GraphQL API"

import json
import logging
from functools import cached_property
from typing import Any

from gql import Client, gql
from gql.transport.requests import RequestsHTTPTransport

from mrinfo import GITLAB_API_TOKEN, GITLAB_URL, MergeRequest

logger = logging.getLogger(__name__)

GITLAB_PROJECT_PATH = "rv/si/ext/opentitan-integrated"

GITLAB_HEADERS = {
    "Authorization": f"Bearer {GITLAB_API_TOKEN}",
    "Content-Type": "application/json",
    "Accept": "application/json",
}

GRAPHQL_DOC = gql(
    """
query mrInfoFirst($iid: String!, $project: ID!) {
    project(fullPath: $project) {
        mergeRequest(iid: $iid) {
            title
            description
            commitsWithoutMergeCommits(first: 10) {
                nodes {
                    sha
                    diffs {
                        oldPath
                    }
                }
                pageInfo {
                    endCursor
                    hasNextPage
                }
            }
            diffStats {
                path
            }
        }
    }
}

query mrInfoNext($iid: String!, $project: ID!, $cursor: String!) {
    project(fullPath: $project) {
        mergeRequest(iid: $iid) {
            commitsWithoutMergeCommits(first: 10, after: $cursor) {
                nodes {
                    sha
                    diffs {
                        oldPath
                    }
                }
                pageInfo {
                    endCursor
                    hasNextPage
                }
            }
        }
    }
}
"""
)


class GraphqlMergeRequest(MergeRequest):
    "Use gitlab's GraphQL endpoint to get information about MRs"

    _client: Client

    def __init__(self, mrid: int):
        super().__init__(mrid)
        transport = RequestsHTTPTransport(
            url=GITLAB_URL + "/api/graphql",
            headers=GITLAB_HEADERS,
        )
        self._client = Client(transport=transport, fetch_schema_from_transport=True)

    @cached_property
    def _graphql_info(self) -> list[dict[str, Any]]:
        "Run whatever queries are needed to populate properties of this object"
        result = self._client.execute(
            GRAPHQL_DOC,
            operation_name="mrInfoFirst",
            variable_values={"iid": str(self.mrid), "project": GITLAB_PROJECT_PATH},
        )
        results = [result]
        while result["project"]["mergeRequest"]["commitsWithoutMergeCommits"]["pageInfo"][
            "hasNextPage"
        ]:
            cursor = result["project"]["mergeRequest"]["commitsWithoutMergeCommits"]["pageInfo"][
                "endCursor"
            ]
            result = self._client.execute(
                GRAPHQL_DOC,
                operation_name="mrInfoNext",
                variable_values={
                    "iid": str(self.mrid),
                    "project": GITLAB_PROJECT_PATH,
                    "cursor": cursor,
                },
            )
            results.append(result)
        logger.debug("GraphQL query returned:\n%s", json.dumps(result, indent=2))
        return results

    @cached_property
    def changed_files(self) -> set[str]:
        "list of changed files from the merge-base until HEAD"
        return {r["path"] for r in self._graphql_info[0]["project"]["mergeRequest"]["diffStats"]}

    @cached_property
    def touched_files(self) -> set[str]:
        """
        list of files touched by any commit in the MR.
        should be a superset of changed_files; consider the case
        of a change to a file followed by a revert

        FIXME: Note that the endpoint "commits" seems to return all commits since the beginning
        of time, and not just the commits involved in a merge request. I worry that
        using the commitsWithoutMergeCommits endpoint will skip merge conflict resolutions
        that change files they shouldn't....
        """
        touches = set()
        for result in self._graphql_info:
            touches.update(
                [
                    d["oldPath"]
                    for n in result["project"]["mergeRequest"]["commitsWithoutMergeCommits"][
                        "nodes"
                    ]
                    for d in n["diffs"]
                ]
            )
        return touches

    @cached_property
    def commits(self) -> list[str]:
        "Return commit SHAs as gathered by the graphql query"
        shas = []
        for result in self._graphql_info:
            shas.extend(
                [
                    n["sha"]
                    for n in result["project"]["mergeRequest"]["commitsWithoutMergeCommits"][
                        "nodes"
                    ]
                ]
            )
        return shas

    @cached_property
    def description(self) -> str:
        "description field of the merge request"
        return self._graphql_info[0]["project"]["mergeRequest"]["description"] or ""

    @cached_property
    def title(self) -> str:
        "title of the merge request"
        return self._graphql_info[0]["project"]["mergeRequest"]["title"] or ""
