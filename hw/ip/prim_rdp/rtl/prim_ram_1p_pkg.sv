// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//

package prim_ram_1p_pkg;

  // sram test cfg
  typedef struct packed {
    logic [2:0] wa;
    logic [2:0] wpulse;
    logic [3:0] rm;
    logic       rme;
    logic       ls;
    logic       test_rnm;
    logic       test1;
    logic       testrwm;
    // this doesn't fit the struct logically, but easiest to not change OT interfaces
    logic       DFD_StopWE;
  } sram_test_cfg_t;

  // sram error injection inputs
  typedef struct packed {
    logic [7:0] tie__sram_loc;
    logic       err_inj_en;
    logic [1:0] err_inj_type;
    logic [1:0] err_inj_count;
    logic [7:0] err_inj_loc;
  } sram_err_inj_in_t;

  // sram dft
  typedef struct packed {
    logic [0:0]  DFT_TME;
    logic [0:0]  DFT_TRE;
    logic [38:0] DFT_RDATA;
  } sram_dft_t;

  typedef struct packed {
    sram_test_cfg_t     sram_test_cfg;
    sram_err_inj_in_t   sram_err_inj;
    sram_dft_t          sram_dft;
  } ram_1p_cfg_t;

  typedef struct packed {
    logic err_inj_done;
  } ram_1p_cfg_rsp_t;

  parameter ram_1p_cfg_t RAM_1P_CFG_DEFAULT = '0;

endpackage // prim_ram_1p_pkg
