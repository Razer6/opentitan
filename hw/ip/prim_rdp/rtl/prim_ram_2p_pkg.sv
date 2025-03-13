// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//

package prim_ram_2p_pkg;

  typedef struct packed {
    prim_misc_dft_pkg::spi_sram_test_cfg_t sram_test_cfg;
    prim_misc_dft_pkg::sram_err_inj_in_t   sram_err_inj;
  } ram_2p_cfg_t;

  parameter ram_2p_cfg_t RAM_2P_CFG_DEFAULT = '0;

  typedef struct packed {
    logic           err_inj_done;
    prim_misc_dft_pkg::spi_sram_dft_t  sram_dft;
  } ram_2p_cfg_rsp_t;

endpackage // prim_ram_2p_pkg
