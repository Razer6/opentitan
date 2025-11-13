// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//

package prim_rom_pkg;

  typedef struct packed {
    prim_misc_dft_pkg::copy_ram_control_genrom_t test_cfg;
    prim_misc_dft_pkg::copy_ram_dft_signals_t dft_cfg;
  } rom_cfg_t;

  parameter rom_cfg_t ROM_CFG_DEFAULT = '0;

endpackage // prim_rom_pkg
