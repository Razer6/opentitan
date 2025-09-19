#!/usr/bin/env python3

import git
import os
import sys
from datetime import datetime


def find_missing_commits_in_branch(repo, branch_A, branch_B, start_date, ignore):
    commits_A = repo.iter_commits(branch_A, since=start_date)
    commits_B = repo.iter_commits(branch_B, since=start_date)

    commits_B_info = {(commit_B.summary, commit_B.author.name) for commit_B in commits_B}
    missing_commits = []
    for commit_A in commits_A:
        if commit_A.hexsha in ignore:
            continue
        identifier = (commit_A.summary, commit_A.author.name)
        if identifier not in commits_B_info:
            # print(f"missing: {identifier}")
            missing_commits.append(commit_A)
    return missing_commits


if __name__ == "__main__":
    LAST_OPENTITAN_SYNC = open("LAST_OPENTITAN_SYNC", 'r').read().strip()
    branch_A = 'OT/master'
    # branch_B = 'origin/rivos/main'
    branch_B = "HEAD"
    ignore = [
        "5a0764a1d3030643a0af03be51a5f5ed7757250d",  # already applied
        "22d2c3dd1813309dcdcd209755a41e3446f05819",  # already applied
    ]
    repo = git.Repo(os.getcwd())
    commit_of_last_sync = repo.commit(LAST_OPENTITAN_SYNC)
    start_date = datetime(2024, 1, 1)

    missing = find_missing_commits_in_branch(repo, branch_A, branch_B, start_date, ignore)
    missing.sort(key=lambda c: c.committed_date)
    # ignore upstream commits after the last sync:
    missing = [c for c in missing if c.committed_datetime <= commit_of_last_sync.committed_datetime]

    if len(missing) > 0:
        print("Missing commits:")
        for c in missing:
            print(f"{c.hexsha} {c.committed_datetime} {c.summary}")
        sys.exit(1)
