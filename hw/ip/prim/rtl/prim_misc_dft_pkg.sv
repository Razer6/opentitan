// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//############################################################################
// *Name: prim_misc_dft_pkg
// *Module Description: misc DFT Package
//############################################################################
`ifdef __MISC_DFT_PKG_SV
`else
`define __MISC_DFT_PKG_SV

package prim_misc_dft_pkg;

  // sram test cfg
  typedef struct packed {
    logic consistency_check2; // lsb: 19
    logic disable_ls; // lsb: 18
    logic disable_clock_gating; // lsb: 17
    logic [1:0] ra; // lsb: 15
    logic [2:0] wpulse; // lsb: 12
    logic [2:0] wa; // lsb: 9
    logic testrwm; // lsb: 8
    logic test1; // lsb: 7
    logic rme; // lsb: 6
    logic test_rnm; // lsb: 5
    logic consistency_check1; // lsb: 4
    logic [3:0] rm; // lsb: 0
  } sram_test_cfg_t;

  // spi sram test cfg
  typedef struct packed {
    logic consistency_check2; // lsb: 25
    logic disable_ls; // lsb: 24
    logic disable_clock_gating; // lsb: 23
    logic [1:0] ra; // lsb: 21
    logic [2:0] wpulse; // lsb: 18
    logic [2:0] wa; // lsb: 15
    logic testrwm; // lsb: 14
    logic test1b; // lsb: 13
    logic test1a; // lsb: 12
    logic rmeb; // lsb: 11
    logic rmea; // lsb: 10
    logic test_rnm; // lsb: 9
    logic [3:0] rmb; // lsb: 5
    logic consistency_check1; // lsb: 4
    logic [3:0] rma; // lsb: 0
  } spi_sram_test_cfg_t;

  // sram error injection inputs
  typedef struct packed {
    logic [7:0] tie__sram_loc;
    logic       err_inj_en;
    logic [1:0] err_inj_type;
    logic [1:0] err_inj_count;
    logic [7:0] err_inj_loc;
  } sram_err_inj_in_t;

  // sram dft in
  typedef struct packed {
    logic tston; // lsb: 2
    logic bist_mode; // lsb: 1
    logic DFD_StopWE; // lsb: 0
  } sram_dft_in_t;

  // sram dft
  typedef struct packed {
    logic [0:0]  DFT_TME;
    logic [0:0]  DFT_TRE;
    logic [38:0] DFT_RDATA;
  } sram_dft_t;

  typedef struct packed {
    logic [0:0]  DFT_TME;
    logic [0:0]  DFT_TRE;
    logic [31:0] DFT_RDATA;
  } i3c_sram_dft_t;

  typedef struct packed {
    logic [0:0]  DFT_TME;
    logic [0:0]  DFT_TRE;
    logic [35:0] DFT_RDATA;
  } spi_sram_dft_t;

  // rom test cfg
  typedef struct packed {
    logic       unused;  // leaving to not touch rdplib
  } rom_test_cfg_t;

  // sms server cfg
  typedef struct packed {
    logic [4:0] smart_assert_cycles;
    logic [4:0] result_strobe_cycles;
    logic       vl_srv_par_algo_mode_srv;
    logic [4:0] vl_srv_par_algo_sel_srv;
    logic       vl_srv_sfp_dft_mode;
    logic [4:0] vl_srv_read_strobe;
    logic [9:0] spare;
  } sms_server_cfg_t;

  // TODO (neal) need to fix this
  typedef struct packed { // Total width: 26
    logic consistency_check2; // lsb: 25
    logic disable_ls; // lsb: 24
    logic disable_clock_gating; // lsb: 23
    logic [1:0] ra; // lsb: 21
    logic [2:0] wpulse; // lsb: 18
    logic [2:0] wa; // lsb: 15
    logic testrwm; // lsb: 14
    logic test1b; // lsb: 13
    logic test1a; // lsb: 12
    logic rmeb; // lsb: 11
    logic rmea; // lsb: 10
    logic test_rnm; // lsb: 9
    logic [3:0] rmb; // lsb: 5
    logic consistency_check1; // lsb: 4
    logic [3:0] rma; // lsb: 0
  } copy_ram_control_dp_t;

  // TODO (neal) need to fix this
  typedef struct packed { // Total width: 3
    logic tston; // lsb: 2
    logic bist_mode; // lsb: 1
    logic DFD_StopWE; // lsb: 0
  } copy_ram_dft_signals_t;

  // TODO (neal) need to fix this
  typedef struct packed { // Total width: 14
    logic [7:0] err_inj_loc; // lsb: 6
    logic [1:0] err_inj_count; // lsb: 4
    logic [1:0] err_inj_type; // lsb: 2
    logic err_inj_en_wpulse; // lsb: 1 // not actually used in sram macros
    logic err_inj_en; // lsb: 0
  } copy_ram_error_inject_t;

  // TODO (neal) need to fix this
  typedef struct packed { // Total width: 12
      logic consistency_check2; // lsb: 11
      logic disable_ls; // lsb: 10
      logic disable_clock_gating; // lsb: 9
      logic [1:0] ra; // lsb: 7
      logic test1; // lsb: 6
      logic rme; // lsb: 5
      logic consistency_check1; // lsb: 4
      logic [3:0] rm; // lsb: 0
  } copy_ram_control_genrom_t;

endpackage  // of prim_misc_dft_pkg
`endif  // of __MISC_DFT_PKG_SV
