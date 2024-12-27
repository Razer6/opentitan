// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//

package prim_ram_2p_pkg;

  // spi sram test cfg
  typedef struct packed {
    logic [3:0] rmb;
    logic [3:0] rma;
    logic       rmeb;
    logic       rmea;
    logic       ls;
    logic       test_rnm;
    logic       test1b;
    logic       test1a;
    // this doesn't fit the struct logically, but easiest to not change OT interfaces
    logic       DFD_StopWE;
    // this doesn't fit the struct logically, but easiest to not change OT interfaces
    logic       tstrst;
    // this doesn't fit the struct logically, but easiest to not change OT interfaces
    logic       tstrstsel;
  } spi_sram_test_cfg_t;

  // sram error injection inputs
  typedef struct packed {
    logic [7:0] tie__sram_loc;
    logic       err_inj_en;
    logic [1:0] err_inj_type;
    logic [1:0] err_inj_count;
    logic [7:0] err_inj_loc;
  } spi_sram_err_inj_in_t;

  typedef struct packed {
    logic [0:0]  DFT_TME;
    logic [0:0]  DFT_TRE;
    logic [35:0] DFT_RDATA;
  } spi_sram_dft_t;

  typedef struct packed {
    spi_sram_test_cfg_t    sram_test_cfg;
    spi_sram_dft_t         sram_dft;
    spi_sram_err_inj_in_t  sram_err_inj;
  } ram_2p_cfg_t;

  parameter ram_2p_cfg_t RAM_2P_CFG_DEFAULT = '0;

  typedef struct packed {
    logic err_inj_done;
  } ram_2p_cfg_rsp_t;

endpackage // prim_ram_2p_pkg
