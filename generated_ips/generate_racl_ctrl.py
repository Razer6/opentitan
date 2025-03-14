#!/usr/bin/env python3


import argparse
import hjson
import sys

sys.path.append('../util')
from raclgen.lib import parse_racl_config


def main():
    parser = argparse.ArgumentParser()

    parser.add_argument('--racl-config',
                        '-r',
                        required=True,
                        help='Path to RACL config hjson file.')

    parser.add_argument('--racl-group',
                        '-g',
                        required=True,
                        help='RACL group.')
    
    parser.add_argument('--top-name',
                        '-t',
                        required=True,
                        help='Top name.')

    parser.add_argument('--instance-name',
                        '-n',
                        required=True,
                        help='Module instance name.')

    parser.add_argument('--output',
                        '-o',
                        required=True,
                        help='Output filename for ipconfig hjson file.')

    args = parser.parse_args()

    try:
        racl_config = parse_racl_config(args.racl_config)
    except ValueError as err:
        raise SystemExit(f'Failed to parse RACL config "{args.racl_config}". Error: {err}')

    racl_policies = racl_config['policies'].get(args.racl_group)
    if racl_policies is None:
        raise SystemExit(f'RACL group {args.racl_group} not defined in RACL config')

    params = {
        "topname":              args.top_name,
        "module_instance_name": args.instance_name,
        "nr_role_bits":         racl_config["nr_role_bits"],
        "nr_ctn_uid_bits":      racl_config["nr_ctn_uid_bits"],
        "nr_policies":          len(racl_policies),
        'nr_subscribing_ips':   1,
        "policies":             racl_policies,
    }
    ipconfig = {
        "instance_name":        args.instance_name,
        "param_values":         params,
    }

    with open(args.output, "w") as f:
        f.write(hjson.dumps(ipconfig))


if __name__ == '__main__':
    main()
