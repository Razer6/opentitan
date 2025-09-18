#!/usr/bin/env python3
# SPDX-FileCopyrightText: Copyright (c) 2025 by Rivos Inc.
# SPDX-License-Identifier: LicenseRef-Rivos-Internal-Only

# Import path setup to ensure we can import modules from util/
import _path_setup  # noqa: F401

from repo_top import repo_top
from topgen.lib import write_file_secure
import secrets
import argparse
from jinja2 import Environment
from pathlib import Path
from typing import List
import subprocess
import base64
import sys


HJSON_TEMPLATE = """\
// SPDX-FileCopyrightText: Copyright (c) 2025 by Rivos Inc.
// SPDX-License-Identifier: LicenseRef-Rivos-Internal-Only
{% if is_tapeout %}
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

    For development builds (is_tapeout=False), this function uses
    Python's 'secrets' module for entropy.

    For production builds (is_tapeout=True), it is intended to source
    high quality entropy from a Hardware Security Module (HSM).

    Args:
        is_production: Flag to determine the source of entropy.

    Returns:
        A 256-bit random integer.
    """
    if is_production:
        # Request entropy from the AWS KMS API
        command = [
            "aws", "kms", "generate-random",
            "--number-of-bytes", "32",
            "--query", "Plaintext",
            "--output", "text"
        ]
        try:
            # Run the command
            # - capture_output=True: Captures stdout and stderr
            # - text=True: Decodes stdout/stderr as text
            # - check=True: Raises an exception if the command returns a non-zero exit code
            result = subprocess.run(
                command,
                capture_output=True,
                text=True,
                check=True
            )

            # 1. Get the Base64 string from the command's standard output
            base64_string = result.stdout.strip()

            # 2. Decode the Base64 string into a 'bytes' object
            random_bytes = base64.b64decode(base64_string)

            # 3. Convert the bytes into an integer
            # The 'big' argument means it treats the first byte as the most significant one.
            random_integer = int.from_bytes(random_bytes, 'big')

            return random_integer
        except FileNotFoundError:
            print("Error: The 'aws' command was not found.", file=sys.stderr)
            print("Please ensure the AWS CLI is installed and in your system's PATH.",
                  file=sys.stderr)
            sys.exit(1)
        except subprocess.CalledProcessError as e:
            print("Error executing AWS CLI command:", file=sys.stderr)
            print(f"Stderr: {e.stderr.strip()}", file=sys.stderr)
            sys.exit(1)

    else:
        return secrets.randbits(256)


def create_seed_hjson(
    name: str,
    is_tapeout: bool,
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
        "is_tapeout": is_tapeout
    }

    context["seeds"] = {}
    for seed in seeds_to_include:
        context["seeds"][seed + "_seed"] = _get_256_bit_seed(is_tapeout)

    hjson_content = template.render(context)
    write_file_secure(output_path, hjson_content)

    print(f"Successfully created HJSON file at: {output_path}")


def main():
    parser = argparse.ArgumentParser(
        description="Generate an HJSON seed file for a specific top-level module."
    )
    parser.add_argument(
        "type",
        choices=["testing", "tapeout"],
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
        choices=["lc_ctrl", "otp_img"],
        default=[],
        help="Optionally include specific seeds. Can be 'lc_ctrl', 'otp_img', or both."
    )
    args = parser.parse_args()

    top_name = args.top
    seed_type = args.type
    is_tapeout = (seed_type == "tapeout")

    seeds_to_include = ["topgen", *args.include_seeds]

    output_dir = Path(f"{repo_top()}/hw/top_{top_name}/data")
    filename = f"top_{top_name}_seed.{seed_type}.hjson"
    full_output_path = output_dir / filename

    create_seed_hjson(
        name=seed_type,
        is_tapeout=is_tapeout,
        output_path=full_output_path,
        seeds_to_include=seeds_to_include
    )


if __name__ == "__main__":
    main()
