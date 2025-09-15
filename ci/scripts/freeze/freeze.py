#!/usr/bin/env python3

# SPDX-FileCopyrightText: Copyright (c) 2022 by Rivos Inc.
# Confidential and proprietary, see LICENSE for details.
# SPDX-License-Identifier: LicenseRef-Rivos-Internal-Only


"""
Script to look at changed files, and if any hits a path in the
gitignore-style configuration files,  shoot off a request to
an API to see whether there is a Jira in the appropriate state
for these frozen paths
"""

import json
import logging
import os
import smtplib
import sys
from argparse import ArgumentParser
from email.message import EmailMessage
from pathlib import Path
from typing import Callable

import git
import requests
from gitignore_parser import parse_gitignore

from mrinfo import MergeRequest
from mrinfo.gql import GraphqlMergeRequest

# REST endpoint to give thumbs-up/-down on this MR (response.json["success"] == "YES")
API = os.getenv("FREEZE_API_SERVER_URL", "http://localhost:8000")
DEFAULT_CONFIG = Path(__file__).parent / "cfg" / "freeze"

# used for bypassing ECO control
ECO_CONTACTS = ["acb", "filippo", "bcampbell"]
BYPASS_MARKER = "bypass-eco"
MR_URL_TEMPLATE = "{os.environ['CI_MERGE_REQUEST_PROJECT_URL']}/-/merge_requests/{mrid}"

logger = logging.getLogger(__name__)


def send_bypass_mail(mrid: str) -> None:
    "send mail to folks that would be concerned about an end-around an ECO"
    user = os.environ["GITLAB_USER_LOGIN"]
    url = MR_URL_TEMPLATE.format(mrid=mrid)
    body = f"""
Merge request {mrid} submitted by {user} is bypassing ECO control.<br/>
Please look <a href="{url}">here</a>.
"""
    msg = EmailMessage()
    msg["From"] = "gitlab-ci"
    msg["To"] = ", ".join(ECO_CONTACTS)
    msg["Cc"] = user
    msg["Subject"] = "Gitlab ECO bypass"
    msg.add_alternative(body, subtype="html")

    server = smtplib.SMTP("localhost")
    server.send_message(msg)
    server.quit()


def merge_authorized(merge_request_id: str, head: str) -> dict:
    "call the API to get a go/no-go on this MR"
    response: requests.Response | None = None
    logger.debug("Calling API at %s", API)
    try:
        response = requests.get(
            API,
            params={"mrid": merge_request_id, "ot":true, "head": head},
            headers={"Accept": "application/json"},
            timeout=10,
        )
    except requests.exceptions.RequestException:
        logger.critical("Problem communicating with API server at %s", API)
        raise
    data: dict = response.json()
    logger.debug("Response body: %s", json.dumps(data, indent=2))
    return data


def freeze_callables(
    freeze_dir: Path, repo_root: str | None = None
) -> dict[str, Callable[[str], bool]]:
    """
    given a dir with gitignore-style files, return a dict mapping the name
    of each file to a callable that says whether an input file matches
    """
    logger.debug("Looking for freeze files in %s", freeze_dir)
    if repo_root is None:
        repo_root = str(git.Repo(search_parent_directories=True).working_dir)
    freeze_files: dict[str, Callable[[str], bool]] = {}
    for freeze_file in freeze_dir.iterdir():
        if not freeze_file.is_file():
            continue
        freeze_files[freeze_file.name] = parse_gitignore(freeze_file, base_dir=repo_root)
    logger.debug("Found freeze files: %s", list(freeze_files))
    return freeze_files


def apply_freezes_to_diffs(
    diffs: list[str], freezes: dict[str, Callable[[str], bool]]
) -> dict[str, list[str]]:
    """
    given a list of paths and a mapping of freeze file to lambda, return
    a list of mappings of which freeze file matched (froze) which diff
    """
    freeze_info: dict[str, list[str]] = {}
    for freeze, func in freezes.items():
        if frozen_diffs := list(filter(func, diffs)):
            freeze_info[freeze] = frozen_diffs
    return freeze_info


def bypass_check(mr: MergeRequest) -> bool:
    """
    Check whether this MR should bypass ECO checking.
    This is true if the source branch name contains the BYPASS_MARKER.
    """
    return BYPASS_MARKER in os.getenv("CI_MERGE_REQUEST_SOURCE_BRANCH_NAME", "")


def find_frozen_paths_from_file(freeze_file: Path, mr: MergeRequest) -> dict[str, list[str]]:
    """
    given a freeze file and a merge request, return
    a mapping of which freeze file matched (froze) which diff
    """
    repo_root = str(git.Repo(search_parent_directories=True).working_dir)
    freezes: dict[str, Callable[[str], bool]] = {}
    freezes[freeze_file.name] = parse_gitignore(freeze_file, base_dir=repo_root)
    diffs = mr.changed_files
    logger.debug("Changed files in MR: %s", diffs)
    frozen_paths = apply_freezes_to_diffs(list(diffs), freezes)
    return frozen_paths


def find_frozen_paths(freeze_spec_dir: Path, mr: MergeRequest) -> dict[str, list[str]]:
    """
    given a dir with freeze files and a merge request, return
    a mapping of which freeze file matched (froze) which diff
    """
    repo_root = str(git.Repo(search_parent_directories=True).working_dir)
    freezes = freeze_callables(freeze_spec_dir, repo_root=repo_root)
    diffs = mr.changed_files
    logger.debug("Changed files in MR: %s", diffs)
    frozen_paths = apply_freezes_to_diffs(list(diffs), freezes)
    return frozen_paths


if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO, format="freeze_ci: -%(levelname).1s- %(message)s")
    logger = logging.getLogger()

    # set up parser
    parser = ArgumentParser(
        description="CI to verify there is an appropriate Jira open \
        for any merge request modifying frozen paths"
    )
    parser.add_argument("-d", "--debug", action="store_true", help="print debugging information")
    parser.add_argument(
        "--freeze-dir", default=DEFAULT_CONFIG, help="location of freeze files", type=Path
    )
    parser.add_argument(
        "--freeze-file", default=DEFAULT_CONFIG, help="location of freeze file", type=Path
    )
    args = parser.parse_args()

    if args.debug:
        logger.setLevel(logging.DEBUG)
    else:
        # This logger is noisy AF at the INFO level
        logging.getLogger("gql.transport.requests").setLevel(logging.WARNING)

    mrid = os.environ["CI_MERGE_REQUEST_IID"]
    mr = GraphqlMergeRequest(mrid)

    # check whether this MR gets a free pass
    if bypass_check(mr=mr):
        send_bypass_mail(mrid=mrid)
        logger.warning("ECO checking bypassed due to magic branch name")
        sys.exit(0)

    if args.freeze_file:
        frozen_paths = find_frozen_paths_from_file(args.freeze_file, mr)
    else:
        # get the frozen paths touched by this MR
        frozen_paths = find_frozen_paths(args.freeze_dir, mr)

    if not frozen_paths:
        logger.info("No frozen files changed")
        sys.exit(0)

    logger.info("Frozen files in this MR:\n%s", json.dumps(frozen_paths, indent=2))

    # call the API to find out whether there's an open Jira matching this MR
    response = merge_authorized(mrid, mr.head)
    if response["success"] != "YES":
        logger.error("Jira/MR API denied merge privileges")
        logger.error("Error: %s", response.get("error", "none"))
        logger.error("Details: %s", response.get("details", "none"))
        sys.exit(1)
