"abstract class to get information about merge requests"

import os
from abc import ABC, abstractmethod

GITLAB_URL = "https://gitlab.ba.rivosinc.com"
GITLAB_PROJECT_ID = 1170
GITLAB_API_TOKEN = os.getenv("GITLAB_API_TOKEN", "")


class MergeRequest(ABC):
    "container for interesting info about merge requests"

    mrid: int | None

    def __init__(self, mrid: int | None = None):
        self.mrid = mrid

    @property
    @abstractmethod
    def changed_files(self) -> set[str]:
        "list of changed files from the merge-base until HEAD"

    @property
    @abstractmethod
    def touched_files(self) -> set[str]:
        """
        list of files touched by any commit in the MR.
        should be a superset of changed_files; consider the case
        of a change to a file followed by a revert
        """

    @property
    @abstractmethod
    def description(self) -> str:
        "description field of the merge request"

    @property
    @abstractmethod
    def title(self) -> str:
        "title of the merge request"

    @property
    @abstractmethod
    def commits(self) -> list[str]:
        "a list of commits contained in this MR"

    @property
    def head(self) -> str:
        "an identifier of the most recent change to this MR"
        return self.commits[0]
