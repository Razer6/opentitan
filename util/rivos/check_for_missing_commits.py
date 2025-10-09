#!/usr/bin/env python3

# Disable line length check for this file
# ruff: noqa: E501

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
        "3dcf5b2346500738e73819063ef6cfac525666ed",  # CSRNG-Refactoring [csrng/rtl] Refactor csrng_ctr_drbg_upd (1/2)
        "492b896e30d1f404a6b00e4a73a8f276ab7f26dc",  # CSRNG-Refactoring [csrng] More thorough renaming of FIFO control signals
        "495e1d26c23ab76f0da7feda1a4bb86cc1e9fa00",  # CSRNG-Refactoring [csrng/rtl] Refactor csrng_ctr_drbg_upd (2/2)
        "251b77427ed9ae64b18a0c2c80cd3f249c4ae8a9",  # CSRNG-Refactoring [csrng/rtl] Refactor csrng_block_encrypt
        "79ae735abb1016e093997ae68372c1d4e4f15757",  # CSRNG-Refactoring [csrng/rtl] Refactor csrng_ctr_drbg_gen (1/2)
        "69bea3a2981ac016577355fe92ab2b57945eeacf",  # CSRNG-Refactoring [csrng/rtl] Refactor csrng_ctr_drbg_gen (2/2)
        "add768a09e4c2f08b19205ea454602142a43d62b",  # CSRNG-Refactoring [csrng/rtl] Refactor csrng_state_db
        "1485517d8582509fd6ea023e56c8ae27dbddbc57",  # CSRNG-Refactoring [csrng] Cleanup csrng_pkg: Merge redundant parameters
        "c2d3fdbc18a7580b0f627729b14c3478bfc5b885",  # CSRNG-Refactoring [csrng/rtl] Harmonize port names in data path modules
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
