#!/usr/bin/env python3
# SPDX-FileCopyrightText: Copyright (c) 2025 by Rivos Inc.
# Confidential and proprietary, see LICENSE for details.
# SPDX-License-Identifier: LicenseRef-Rivos-Internal-Only
#
# HJSON Structure Comparator
#
# This script compares the structure of two HJSON files, focusing on keys and
# the shape of the data, rather than the values themselves. Used to compare the
# structure of the secret and non-secret generated HJSON files.

import hjson
import argparse
import sys
from pathlib import Path
from typing import Any, List


def load_hjson_file(file_path: Path) -> Any:
    if not file_path.is_file():
        print(f"Error: File not found at '{file_path}'")
        sys.exit(1)
    try:
        with file_path.open('r', encoding='utf-8') as f:
            return hjson.load(f)
    except Exception as e:
        print(f"Error parsing '{file_path}': {e}")
        sys.exit(1)


def compare_structures(obj1: Any, obj2: Any, differences: List[str], path: str = "root") -> None:
    """
    Recursively compares the structure of two Python objects (from HJSON).

    Args:
        obj1: The first object to compare.
        obj2: The second object to compare.
        differences: A list to append found differences to.
        path: The current path in the object tree for logging.
    """
    # 1. Compare types
    if type(obj1) is not type(obj2):
        diff = f"Type mismatch at '{path}': {type(obj1).__name__} vs {type(obj2).__name__}"
        differences.append(diff)
        return

    # 2. If they are dictionaries, compare keys
    if isinstance(obj1, dict):
        keys1 = set(obj1.keys())
        keys2 = set(obj2.keys())

        missing_in_2 = keys1 - keys2
        if missing_in_2:
            diff = f"Keys missing in second file at '{path}': {sorted(list(missing_in_2))}"
            differences.append(diff)

        added_in_2 = keys2 - keys1
        if added_in_2:
            diff = f"Keys added in second file at '{path}': {sorted(list(added_in_2))}"
            differences.append(diff)

        # Recurse into common keys
        common_keys = keys1.intersection(keys2)
        for key in sorted(list(common_keys)):
            new_path = f"{path}.{key}"
            compare_structures(obj1[key], obj2[key], differences, new_path)

    # 3. If they are lists, compare lengths and recurse
    elif isinstance(obj1, list):
        if len(obj1) != len(obj2):
            diff = f"List length mismatch at '{path}': {len(obj1)} vs {len(obj2)}"
            differences.append(diff)

        # Compare items up to the length of the shorter list
        for i, (item1, item2) in enumerate(zip(obj1, obj2)):
            new_path = f"{path}[{i}]"
            compare_structures(item1, item2, differences, new_path)


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Compare the structure of two HJSON files.",
        formatter_class=argparse.RawTextHelpFormatter
    )
    parser.add_argument("file1", type=Path, help="Path to the first HJSON file.")
    parser.add_argument("file2", type=Path, help="Path to the second HJSON file.")
    args = parser.parse_args()

    data1 = load_hjson_file(args.file1)
    data2 = load_hjson_file(args.file2)

    differences: List[str] = []
    compare_structures(data1, data2, differences)

    if not differences:
        print("The structures of the two HJSON files are identical.")
    else:
        print(f"Found {len(differences)} structural difference(s):")
        for diff in differences:
            print(f"  - {diff}")
        sys.exit(1)


if __name__ == "__main__":
    main()
