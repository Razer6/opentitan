#!/usr/bin/env python3
# SPDX-FileCopyrightText: Copyright (c) 2025 by Rivos Inc.
# Confidential and proprietary, see LICENSE for details.
# SPDX-License-Identifier: LicenseRef-Rivos-Internal-Only

"""
Path setup utility for scripts in util/rivos/.
This module ensures that scripts can import modules from the parent util/ directory.
"""

import sys
from pathlib import Path


def setup_util_path():
    """Add the parent directory (util/) to the Python path so
    scripts can import modules from util/.
    """
    util_path = str(Path(__file__).parent.parent)
    if util_path not in sys.path:
        sys.path.insert(0, util_path)


# Automatically set up the path when this module is imported
setup_util_path()
