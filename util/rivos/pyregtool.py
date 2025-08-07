#!/usr/bin/env python3
# SPDX-FileCopyrightText: Copyright (c) 2025 by Rivos Inc.
# Confidential and proprietary, see LICENSE for details.
# SPDX-License-Identifier: LicenseRef-Rivos-Internal-Only

"""
Command-line tool to generate pyreg/pydump files from register HJSON files.
"""

# Import path setup to ensure we can import modules from util/
import _path_setup

import argparse
import sys
from dataclasses import dataclass, asdict
from typing import Dict, TextIO, Optional, Union, Tuple, List

import hjson
import yaml

from reggen.field import Field
from reggen.gen_md import multireg_is_compact
from reggen.ip_block import IpBlock
from reggen.multi_register import MultiRegister
from reggen.register import Register
from reggen.window import Window
from reggen.clocking import Clocking

SWACCESS_CONVERSION = {
    "wo": "w",
    "r0w1c": "rw1c",
    "rc": "ro",
}

HWACCESS_CONVERSION = {
    "hro": "r",
    "hrw": "r, wen",
}


class FoldedUnicode(str):
    pass


def folded_unicode_representer(dumper, data):
    return dumper.represent_scalar("tag:yaml.org,2002:str", data, style=">")


def remove_none(d):
    """Recursively remove keys with None values."""
    if isinstance(d, dict):
        return {k: remove_none(v) for k, v in d.items() if v is not None}
    elif isinstance(d, list):
        return [remove_none(i) for i in d]
    else:
        return d


class Racl:
    """Manages RACL policies from different sources."""

    @dataclass
    class RaclMapping:
        """Represents a RACL mapping."""

        registers: Dict[str, str]
        windows: Dict[str, str]

        @staticmethod
        def from_dict(d: Dict[str, Dict[str, str]]) -> "Racl.RaclMapping":
            """Creates a RaclMapping object from a dictionary."""
            return Racl.RaclMapping(registers=d.get("registers", {}), windows=d.get("windows", {}))

    def __init__(
        self,
        mapping: Optional[RaclMapping] = None,
        predefined_racl: Optional[str] = None,
        racl_ctrl: Optional[str] = None,
    ):
        self.mapping = mapping
        self.racl_ctrl = racl_ctrl
        self.predefined_racl = predefined_racl

    def regblock_entry_to_racl_policy(
        self, entry: Union[Register, MultiRegister, Window]
    ) -> Tuple[str, Optional[str]]:
        """Returns the RACL policy for a register entry."""
        if self.mapping:
            if isinstance(entry, MultiRegister) and len(entry.pregs) > 1:
                entry_name = f"{entry.name}_0"
            else:
                entry_name = entry.name

            if isinstance(entry, Window):
                racl_policy = self.mapping.windows.get(
                    entry_name, self.mapping.windows.get("*", None)
                )
            else:
                racl_policy = self.mapping.registers.get(
                    entry_name, self.mapping.registers.get("*", None)
                )

            if racl_policy is None:
                raise ValueError(f"No RACL policy found for register {entry_name}")
        elif self.predefined_racl:
            racl_policy = self.predefined_racl
        else:
            raise ValueError("Neither mapping nor predefined RACL policy specified")

        return racl_policy, self.racl_ctrl

    @staticmethod
    def from_mapping_hjson(
        mapping: Optional[Dict[str, Dict[str, Dict[str, str]]]] = None,
    ) -> "Racl":
        """
        Creates a Racl object from a mapping HJSON file.

        The HJSON file is expected to have the following structure:
        ```json
        {
          racl_ctrl: {
            registers: {
              "*": "some_policy",
              ...
            }
            windows: {
              "*": "some_policy",
              ...
            }
          }
        }
        ```
        """
        if len(mapping) == 0:
            raise ValueError("Mapping HJSON file is empty")
        elif len(mapping) > 1:
            raise ValueError("Mapping HJSON file contains more than one block")

        racl_ctrl = list(mapping.keys())[0]
        mapping = mapping[racl_ctrl]

        return Racl(
            mapping=Racl.RaclMapping.from_dict(mapping),
            racl_ctrl=racl_ctrl,
        )

    @staticmethod
    def from_predefined(racl: str, racl_ctrl: Optional[str]) -> "Racl":
        """Creates a Racl object from a hard-coded RACL policy."""
        return Racl(predefined_racl=racl, racl_ctrl=racl_ctrl)


@dataclass
class PyregParameters:
    """Represents the parameters of a pyreg entry."""

    array: Optional[int]
    array_offset: Optional[int]
    swaccess: Optional[str]
    hwaccess: Optional[str]
    ot_shadowed: Optional[bool]
    racl_group: Optional[str]
    racl_ctrl_policy_name: Optional[str]
    racl_ctrl: Optional[str]
    reset_sig: str
    bytes_per_reg: int

    @staticmethod
    def from_regblock_entry(
        entry: Union[Register, MultiRegister, Window],
        clocking: Clocking,
        regwidth: int,
        racl: Optional[Racl],
        swaccess: Optional[str],
        hwaccess: Optional[str],
    ) -> "PyregParameters":
        """Creates a PyregParameters object from a register entry."""
        if isinstance(entry, MultiRegister) and multireg_is_compact(entry, regwidth):
            raise ValueError(
                "Cannot handle compact multiregs directly. Please pass the individual register instance definitions instead."
            )

        # Array count
        array = None
        array_offset = None

        if isinstance(entry, MultiRegister):
            array = len(entry.pregs)
            array_offset = entry.stride
        elif isinstance(entry, Window) and entry.items > 1:
            array = entry.items
            array_offset = regwidth // 8

        # Shadowed
        if isinstance(entry, MultiRegister):
            reg_def = entry.pregs[0]
        else:
            reg_def = entry

        ot_shadowed = None
        if isinstance(reg_def, Register) and reg_def.shadowed:
            ot_shadowed = True

        # RACL
        racl_policy = None
        racl_ctrl_policy_name = None
        racl_ctrl_group = None

        if racl is not None:
            racl_policy, racl_ctrl_group = racl.regblock_entry_to_racl_policy(entry)

        if isinstance(reg_def, Register):
            for tag in reg_def.tags:
                if tag.startswith("racl_ctrl_policy_name"):
                    _, tag_racl_group, tag_racl_policy_name = tag.split(":")
                    if tag_racl_group != "Null":
                        racl_ctrl_group = tag_racl_group
                        racl_ctrl_policy_name = tag_racl_policy_name
                        break

        # Reset
        reset_sig = clocking.primary.reset

        if isinstance(reg_def, Register):
            if reg_def.async_clk:
                reset_sig = reg_def.async_clk[1].reset
            elif reg_def.sync_clk:
                reset_sig = reg_def.sync_clk[1].reset

        return PyregParameters(
            array,
            array_offset,
            swaccess,
            hwaccess,
            ot_shadowed,
            racl_policy,
            racl_ctrl_policy_name,
            racl_ctrl_group,
            reset_sig,
            regwidth // 8,
        )


@dataclass
class PyregField:
    """Represents a pyreg field."""

    expl: Optional[str]
    reset: str
    width: int
    lsb: int
    swaccess: Optional[str]
    hwaccess: Optional[str]

    @staticmethod
    def from_field(field: Field) -> "PyregField":
        # Explanation
        expl = ""

        if field.desc:
            expl = ". ".join(field.desc.split("\n"))
            expl = FoldedUnicode(expl)

        # Reset value
        if field.resval is not None:
            reset = f"{field.bits.width()}'h{field.resval:X}"
        else:
            reset = f"{field.bits.width()}'h0"
            expl += "; reset default is x in hjson"

        # Software/hardware access
        swaccess = PyregField._convert_swaccess(field.swaccess.key, field.tags)
        hwaccess = PyregField._convert_hwaccess(field.hwaccess.key, field.swaccess.key, field.hwqe)

        if field.swaccess.key == "rc":
            expl += "; SW read clears this field"

        return PyregField(
            FoldedUnicode(expl), reset, field.bits.width(), field.bits.lsb, swaccess, hwaccess
        )

    @staticmethod
    def from_window(window: Window) -> "PyregField":
        # Reset value
        reset = f"{window.validbits}'h0"

        # Software access
        swaccess = PyregField._convert_swaccess(window.swaccess.key, [])

        return PyregField(FoldedUnicode("data"), reset, window.validbits, 0, swaccess, "r")

    @staticmethod
    def _convert_swaccess(ot_swaccess: str, tags: List[str]) -> str:
        """Converts an OT swaccess to a pyreg swaccess."""
        if "rivos_access:uro" in tags:
            swaccess = "uro"
        else:
            swaccess = SWACCESS_CONVERSION.get(ot_swaccess, ot_swaccess)

        return swaccess

    @staticmethod
    def _convert_hwaccess(ot_hwaccess: str, ot_swaccess: str, hwqe: bool) -> str:
        """Converts an OT hwaccess to a pyreg hwaccess."""
        if hwqe:
            # If hw uses q enable signal (latched signal of software write pulse) we need to add the corresponding pyreg attribute
            hwaccess = "r, wpulse"
        else:
            if ot_hwaccess == "hwo":
                if "rw" in ot_swaccess:
                    hwaccess = "wen"
                else:
                    hwaccess = "w"
            else:
                hwaccess = HWACCESS_CONVERSION.get(ot_hwaccess, "none")

        return hwaccess


@dataclass
class PyregFieldParameters:
    """Represents the parameters of a pyreg field."""

    expl: Optional[str]
    reset: str
    width: int
    lsb: int
    swaccess: Optional[str]
    hwaccess: Optional[str]

    @staticmethod
    def from_pyreg_field(field: PyregField) -> "PyregFieldParameters":
        return PyregFieldParameters(
            field.expl, field.reset, field.width, field.lsb, field.swaccess, field.hwaccess
        )


@dataclass
class PyregEntry:
    """Represents a pyreg file entry."""

    name: str
    expl: str
    parameters: PyregParameters
    fields: Dict[str, PyregField]
    field_parameters: Dict[str, PyregFieldParameters]
    array: int

    @staticmethod
    def from_regblock_entry(
        entry: Union[Register, MultiRegister, Window],
        clocking: Clocking,
        regwidth: int,
        racl: Optional[Racl],
    ) -> "PyregEntry":
        """Creates a PyregEntry object from a register entry."""
        if isinstance(entry, MultiRegister) and multireg_is_compact(entry, regwidth):
            raise ValueError(
                "Cannot handle compact multiregs directly. Please pass the individual register instance definitions instead."
            )

        # Explanation
        if isinstance(entry, MultiRegister):
            reg_def = entry.pregs[0]
        else:
            reg_def = entry

        expl = ". ".join(reg_def.desc.split("\n"))
        expl = FoldedUnicode(expl)

        if isinstance(reg_def, Register) and reg_def.regwen:
            expl += f"; regwen = {reg_def.regwen}"

        # Fields
        if isinstance(entry, Window):
            fields = {"data": PyregField.from_window(entry)}
        else:
            fields = {field.name: PyregField.from_field(field) for field in reg_def.fields}
            fields = dict(sorted(fields.items(), key=lambda item: item[1].lsb))

        field_parameters = {
            name: PyregFieldParameters.from_pyreg_field(field) for name, field in fields.items()
        }

        # Software/hardware access
        swaccesses = {field.swaccess for field in fields.values()}
        hwaccesses = {field.hwaccess for field in fields.values()}

        swaccess = None
        hwaccess = None

        if len(swaccesses) == 1:
            swaccess = swaccesses.pop()

        if len(hwaccesses) == 1:
            hwaccess = hwaccesses.pop()

        # Parameters
        pyreg_params = PyregParameters.from_regblock_entry(
            entry, clocking, regwidth, racl, swaccess, hwaccess
        )

        # Array size
        if pyreg_params.array is not None:
            array = pyreg_params.array
        else:
            array = 1

        return PyregEntry(entry.name, expl, pyreg_params, fields, field_parameters, array)


@dataclass
class PydumpInfos:
    """Represents information to generate a pydump/pyreg file."""

    name: str
    desc: str
    package: str
    regblocks: Dict[str, Dict[str, PyregEntry]]
    reg_map: Dict[str, Dict[str, int]]

    def dump_pyreg(self, interface: Optional[str], stream: TextIO):
        """
        Dumps the register block specified by its interface to a pyreg stream.

        If the interface is not specified, and the IP only has one that is non-empty,
        then it is used.

        If the IP does not have interfaces, the specified interface is ignored.
        """
        stream.write(
            yaml.dump(self._get_pyreg(self._determine_interface(interface)), sort_keys=False)
        )

    def dump_pydump(self, interface: Optional[str], stream: TextIO):
        """
        Dumps the IP to a pydump stream.

        The specified interface is used to select the register block to dump.

        If the interface is not specified, and the IP only has one that is non-empty,
        then it is used.

        If the IP does not have interfaces, the specified interface is ignored.
        """
        interface = self._determine_interface(interface)
        pyreg = self._get_pyreg(interface)
        pydump = {
            "addr_map": {value: key for key, value in self.reg_map[interface].items()},
            "expl": FoldedUnicode(self.desc),
            "name": self.name,
            "package": self.package,
            "reg_map": self.reg_map[interface],
            "registers": pyreg,
        }

        stream.write(yaml.dump(pydump, sort_keys=False))

    def _determine_interface(self, interface: Optional[str]) -> str:
        """
        Determines the interface to use according to certain rules.

        If an interface is not specified, and the IP only has one that is non-empty,
        then it is returned.

        If the IP does not have interfaces, the specified interface is ignored.
        """
        if interface is None:
            non_empty_regblocks = {k: v for k, v in self.regblocks.items() if v}

            if len(non_empty_regblocks) == 1:
                interface = list(non_empty_regblocks.keys())[0]
            elif len(non_empty_regblocks) == 0 and len(self.regblocks) == 1:
                interface = list(self.regblocks.keys())[0]
            else:
                raise ValueError("Interface must be specified when there are multiple of them")
        elif len(self.regblocks) == 1 and list(self.regblocks.keys())[0] == "":
            # Ignore the specified interface if the IP does not have any
            interface = ""

        return interface

    def _get_pyreg(self, interface: str) -> Dict[str, Dict[str, PyregEntry]]:
        """Prepares the register block to be dumped as pyreg."""
        pyreg = {k: asdict(v) for k, v in self.regblocks[interface].items()}
        pyreg = remove_none(pyreg)

        return pyreg

    @staticmethod
    def from_ipblock(
        ip_block: IpBlock, racl: Optional[Racl], pydump_package: str, pydump_name: Optional[str]
    ) -> "PydumpInfos":
        """Creates a PydumpInfos object from an IP block."""

        # Collect registers and their offsets
        regblock_pyregs: Dict[str, Dict[str, PyregEntry]] = {}
        reg_map: Dict[str, Dict[str, int]] = {}

        for rb in ip_block.reg_blocks.values():
            regblock_pyregs[rb.name] = {}
            reg_map[rb.name] = {}

            for regblock_entry in rb.entries:
                if isinstance(regblock_entry, MultiRegister) and multireg_is_compact(
                    regblock_entry, ip_block.regwidth
                ):
                    # We need to handle compact multiregs separately because the definition
                    # of one register instance may vary from the next.
                    #
                    # We don't treat compact multiregs as arrayed registers if all compacted
                    # definitions are the same to avoid adding a source of breaking changes in
                    # case the register count or the compacted definition changes.
                    for creg in regblock_entry.cregs:
                        regblock_pyregs[rb.name][creg.name] = PyregEntry.from_regblock_entry(
                            creg, ip_block.clocking, ip_block.regwidth, racl
                        )

                        reg_map[rb.name][creg.name] = creg.offset
                else:
                    regblock_pyregs[rb.name][regblock_entry.name] = PyregEntry.from_regblock_entry(
                        regblock_entry, ip_block.clocking, ip_block.regwidth, racl
                    )

                    reg_map[rb.name][regblock_entry.name] = regblock_entry.offset

        if pydump_name is None:
            pydump_name = ip_block.name

        return PydumpInfos(pydump_name, ip_block.name, pydump_package, regblock_pyregs, reg_map)


def _parse_cli_args():
    """Parses and returns the arguments passed in the command line."""
    parser = argparse.ArgumentParser(
        formatter_class=argparse.RawTextHelpFormatter,
        description="Generates pyreg/pydump files from register HJSON files.",
    )

    parser.add_argument(
        "input",
        nargs="?",
        type=argparse.FileType("r"),
        default=sys.stdin,
        help="HJSON input file. If not specified, reads from stdin.",
    )

    parser.add_argument(
        "output",
        nargs="?",
        type=argparse.FileType("w"),
        default=sys.stdout,
        help="Output file. If not specified, writes to stdout.",
    )

    output_type_group = parser.add_mutually_exclusive_group(required=True)

    output_type_group.add_argument(
        "--pyreg",
        action="store_true",
        help="Generate pyreg file.",
    )

    output_type_group.add_argument(
        "--pydump",
        action="store_true",
        help="Generate pydump file.",
    )

    racl_group = parser.add_mutually_exclusive_group(required=True)

    racl_group.add_argument(
        "--racl",
        help="RACL policy to set on the registers.",
    )

    racl_group.add_argument(
        "--racl-mapping-hjson",
        type=argparse.FileType("r"),
        help="HJSON file containing the RACL mapping for registers.",
    )

    racl_group.add_argument(
        "--no-racl",
        action="store_true",
        help="Do not generate RACL information in the output file.",
    )

    parser.add_argument(
        "--racl-ctrl",
        help="RACL control group to set on the registers. Used with the --racl option.",
    )

    parser.add_argument(
        "--interface",
        "-f",
        type=str,
        default=None,
        help="Only process registers belonging to the named `interface`.",
    )

    parser.add_argument(
        "--pydump-package",
        type=str,
        default="ot_ip_reg_pkg",
        help="Package set in the generated file (pydump gen only).",
    )

    parser.add_argument(
        "--pydump-name",
        type=str,
        help="Name set in the generated file (pydump gen only).",
    )

    args = parser.parse_args()
    return args


def _main():
    """Program entry point."""

    # Get CLI arguments
    args = _parse_cli_args()

    # Read the HJSON file
    srcfull = args.input.read()
    ip_block_obj = hjson.loads(srcfull, use_decimal=True)

    ip_block = IpBlock.from_raw([], ip_block_obj, args.input.name)

    # Process the RACL arguments
    racl = None
    if args.racl_mapping_hjson:
        racl = Racl.from_mapping_hjson(hjson.load(args.racl_mapping_hjson, use_decimal=True))
    elif args.racl:
        racl = Racl.from_predefined(args.racl, args.racl_ctrl)

    if racl is None and not args.no_racl:
        raise ValueError("No RACL information could be determined from the arguments")

    # Generate the pydump contents
    pydump_infos = PydumpInfos.from_ipblock(ip_block, racl, args.pydump_package, args.pydump_name)

    # Dump to the output
    yaml.add_representer(FoldedUnicode, folded_unicode_representer)

    if args.pyreg:
        pydump_infos.dump_pyreg(args.interface, args.output)
    elif args.pydump:
        pydump_infos.dump_pydump(args.interface, args.output)
    else:
        raise ValueError("No output type specified")


if __name__ == "__main__":
    _main()
