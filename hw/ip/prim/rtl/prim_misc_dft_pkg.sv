// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

`ifdef __MISC_DFT_PKG_SV
`else
`define __MISC_DFT_PKG_SV

package prim_misc_dft_pkg;

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
    logic       DFD_StopWE;  // this doesn't fit the struct logically, but easiest to not change OT interfaces
    } sram_test_cfg_t;

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
    logic       DFD_StopWE;  // this doesn't fit the struct logically, but easiest to not change OT interfaces
    logic       tstrst;      // this doesn't fit the struct logically, but easiest to not change OT interfaces
    logic       tstrstsel;   // this doesn't fit the struct logically, but easiest to not change OT interfaces
    } spi_sram_test_cfg_t;

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
    logic [3:0] rm;
    logic       rme;
    logic       ls;
    logic       test1;
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
endpackage  // of prim_misc_dft_pkg
`endif  // of __MISC_DFT_PKG_SV
