# SPDX-FileCopyrightText: Copyright (c) 2022 by Rivos Inc.
# Confidential and proprietary, see LICENSE for details.
# SPDX-License-Identifier: LicenseRef-Rivos-Internal-Only

"""
Implementation of merge request class using no API calls to get information,
only git operations on the rvsys clone (potentially shallow) that CI uses
"""

import logging
import os
from functools import cached_property

import git
from git.exc import GitCommandError

from mrinfo import MergeRequest

DEFAULT_FIRST_REF = "origin/rivos/main"

logger = logging.getLogger(__name__)


class GitMergeRequest(MergeRequest):
    "Get merge request information using raw git/gitpython"

    repo: git.Repo
    first_ref: str

    def __init__(self, mrid: int | None = None):
        super().__init__(mrid)
        self.repo = git.Repo(search_parent_directories=True)
        self.first_ref = os.getenv("CI_MERGE_REQUEST_DIFF_BASE_SHA", DEFAULT_FIRST_REF)

    @cached_property
    def changed_files(self, second_ref: str = "HEAD") -> set[str]:
        "Return a list of files changed in the current git repo as compared with the CI branch"
        logger.debug("Getting diffs from %s to %s", self.first_ref, second_ref)
        try:
            diffs = self.repo.git.diff(
                "--name-only", "--no-ext-diff", f"{self.first_ref}...{second_ref}"
            ).split()
        except GitCommandError:
            diffs = self.repo.git.diff(
                "--name-only", "--no-ext-diff", f"{self.first_ref}..{second_ref}"
            ).split()
        logger.debug("Diffs: %s", diffs)
        return diffs

    @cached_property
    def touched_files(self, second_ref: str = "HEAD") -> set[str]:
        """
        Return a list of changed files as seen by the log command. This should capture
        things like a set of changes that resulted in no content change, but are
        nevertheless forbidden to happen
        """
        logger.debug("Getting diffs from %s to %s", self.first_ref, second_ref)
        try:
            diffs = self.repo.git.log(
                "-m", "--pretty=tformat:", "--name-only", f"{self.first_ref}...{second_ref}"
            ).split()
        except GitCommandError:
            diffs = self.repo.git.log(
                "-m", "--pretty=tformat:", "--name-only", f"{self.first_ref}..{second_ref}"
            ).split()
        diffs_set = set(diffs)
        logger.debug("Touches: %s", diffs_set)
        return diffs_set

    @cached_property
    def commits(self, second_ref: str = "HEAD") -> list[str]:
        "Get the list of commits contained in this MR"
        logger.debug("Getting commits from %s to %s", self.first_ref, second_ref)
        try:
            commits = [c.hexsha for c in self.repo.iter_commits(f"{self.first_ref}...{second_ref}")]
        except GitCommandError:
            commits = [c.hexsha for c in self.repo.iter_commits(f"{self.first_ref}..{second_ref}")]
        logger.debug("Commits: %s", commits)
        return commits

    @cached_property
    def description(self) -> str:
        "Return the MR description from pre-defined env vars in gitlab CI pipelines"
        if os.getenv("CI_MERGE_REQUEST_DESCRIPTION_IS_TRUNCATED"):
            logger.warning("Description of merge request %d has been truncated", self.mrid)
        return os.environ["CI_MERGE_REQUEST_DESCRIPTION"]

    @property
    def title(self) -> str:
        "Return the MR title from pre-defined env vars in gitlab CI pipelines"
        return os.environ["CI_MERGE_REQUEST_TITLE"]
