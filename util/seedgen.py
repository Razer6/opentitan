#!/usr/bin/env python3
# SPDX-FileCopyrightText: Copyright (c) 2025 by Rivos Inc.
# SPDX-License-Identifier: LicenseRef-Rivos-Internal-Only
import secrets
import argparse
from jinja2 import Environment
from pathlib import Path
from typing import List

# This file is under $REPO_TOP/util/, so parents[1] gets back to the top.
REPO_TOP = Path(__file__).resolve().parents[1]


HJSON_TEMPLATE = """\
// SPDX-FileCopyrightText: Copyright (c) 2025 by Rivos Inc.
// SPDX-License-Identifier: LicenseRef-Rivos-Internal-Only
{% if is_dev %}
//////////////////////////////////////////////////////////////////////////////////////
// Seed configuration for topgen and subsequent flows                               //
// 256 bit seeds for compile-time random constants. All seeds must be different     //
// NOTE: REPLACE THIS FILE WITH A PRODUCTION SEED CONFIGURATION BEFORE THE TAPEOUT  //
//////////////////////////////////////////////////////////////////////////////////////
{% endif %}
{
  name: {{ name }}
{% for seed, value in seeds.items() %}
  {{ seed }}: {{ value }}
{% endfor %}
}
"""


def _get_256_bit_seed(is_production: bool) -> int:
    """Generates a cryptographically secure 256-bit random integer.

    For development builds (is_production=False), this function uses
    Python's 'secrets' module for entropy.

    For production builds (is_production=True), it is intended to source
    high quality entropy from a Hardware Security Module (HSM).

    Args:
        is_production: Flag to determine the source of entropy.

    Returns:
        A 256-bit random integer.
    """
    if is_production:
        # FIXME: Use HSM API when available
        assert 0
    else:
        return secrets.randbits(256)


def create_seed_hjson(
    name: str,
    is_production: bool,
    output_path: Path,
    seeds_to_include: List[str]
) -> None:
    """
    Generates and writes an HJSON seed file using a Jinja template.
    """
    env = Environment(trim_blocks=True, lstrip_blocks=True)
    template = env.from_string(HJSON_TEMPLATE)

    context = {
        "name": name,
        "is_dev": not is_production
    }

    context["seeds"] = {}
    for seed in seeds_to_include:
        context["seeds"][seed + "_seed"] = _get_256_bit_seed(is_production)

    hjson_content = template.render(context)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(hjson_content)

    print(f"Successfully created HJSON file at: {output_path}")


def main():
    parser = argparse.ArgumentParser(
        description="Generate an HJSON seed file for a specific top-level module."
    )
    parser.add_argument(
        "type",
        choices=["dev", "prod"],
        help="The type of seed to generate."
    )
    parser.add_argument(
        "-t", "--top",
        required=True,
        help="The name of the top-level module (e.g., 'darjeeling')."
    )
    parser.add_argument(
        "--include-seeds",
        nargs='*',
        choices=['lc_ctrl', 'otp_ctrl'],
        default=[],
        help="Optionally include specific seeds. Can be 'lc_ctrl', 'otp_ctrl', or both."
    )
    args = parser.parse_args()

    top_name = args.top
    seed_type = args.type
    is_production = (seed_type == "prod")

    seeds_to_include = ["topgen_seed", *args.include_seeds]

    output_dir = Path(f"{REPO_TOP}/hw/top_{top_name}/data")
    filename = f"top_{top_name}_seed.{seed_type}.hjson"
    full_output_path = output_dir / filename

    create_seed_hjson(
        name=seed_type,
        is_production=is_production,
        output_path=full_output_path,
        seeds_to_include=seeds_to_include
    )


if __name__ == "__main__":
    main()
