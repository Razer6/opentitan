#!/usr/bin/env python3
# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
r"""RACL Generator.
This utility computes the policy selection vector for a given ip, RACL config, and RACL mapping.
"""

# Import path setup to ensure we can import modules from util/
import _path_setup  # noqa: F401

import argparse
import sys
from mako.template import Template
from mako import exceptions
from raclgen.lib import _read_hjson
from reggen.ip_block import IpBlock
from repo_top import repo_top
import topgen.lib as topgen_lib


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--top')
    parser.add_argument('--data')
    parser.add_argument('--template')
    parser.add_argument('--replace')
    args = parser.parse_args()

    top = _read_hjson(args.top)
    data = _read_hjson(args.data) if args.data else {}
    replace = _read_hjson(args.replace) if args.replace else {}
    ip_blocks = {}
    for module in top['module']:
        ip_name = module['type']
        if ip_name not in ip_blocks:
            try:
                ip_path = topgen_lib.get_ip_hjson_path(ip_name, top, repo_top())
                if ip_name in replace:
                    ip_path = replace[ip_name]
                ip_blocks[ip_name] = IpBlock.from_path(path=ip_path, param_defaults=[])
            except ValueError as err:
                raise SystemExit(f'Failed to parse IP block "{ip_name}". Error: {err}')
    try:
        print(Template(filename=args.template).render(
            ip_blocks=ip_blocks,
            top=top,
            data=data,
        ).rstrip())
    except Exception:
        print(exceptions.text_error_template().render(), file=sys.stderr)


if __name__ == '__main__':
    main()
