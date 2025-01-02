// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//

package prim_ram_1p_pkg;

  typedef struct packed {
    prim_misc_dft_pkg::sram_test_cfg_t   sram_test_cfg;
    prim_misc_dft_pkg::sram_err_inj_in_t sram_err_inj;
  } ram_1p_cfg_t;

  typedef struct packed {
    prim_misc_dft_pkg::sram_dft_t  sram_dft;
    logic       err_inj_done;
  } ram_1p_cfg_rsp_t;

  parameter ram_1p_cfg_t RAM_1P_CFG_DEFAULT = '0;

endpackage // prim_ram_1p_pkg
