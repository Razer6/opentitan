
// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

`include "prim_assert.sv"

module prim_otp_mem
  import otp_ctrl_macro_pkg::*;
  import otp_macro_reg_pkg::*;
#(
        parameter  int Width                             = 16,
        parameter  int EccWidth                          = 6,
        parameter  int Depth                             = 512,
        parameter  int FUSE_NUM_ARRAYS                   = 16,   // (neal) default is the value we want for otp fuses
        parameter  int FUSE_NUM_MBIST_ARRAYS             = 3,   // (neal) default is the value we want for otp fuses
        parameter  int FUSE_MBIST_EN                     = 0,
        parameter  int FUSE_MBIST_ARRAY_BASE             = 0,
        parameter  int FUSE_MBIST_ARRAY_SIZE             = 0,
        parameter  int FUSE_MBIST_ECC_ARRAY_BASE         = 0,
        parameter  int FUSE_MBIST_ECC_ARRAY_SIZE         = 0,
        parameter int FUSE_ADDR_WIDTH                   = 13,
        parameter int FUSE_TEST_ADDR_WIDTH              = 2,
        parameter int FUSE_DATA_WIDTH                   = 32,
        parameter int FUSE_RF_DATA_WIDTH                = 8,
        localparam int Aw       = prim_util_pkg::vbits(Depth),
        localparam int FUSE_ARRAY_SEL_WIDTH     = (FUSE_NUM_ARRAYS > 1) ? $clog2(FUSE_NUM_ARRAYS) : 1,
        localparam int FUSE_NUM_ECC_ARRAYS      = (FUSE_NUM_ARRAYS > 1) ? (FUSE_NUM_ARRAYS >> 1) : 1,
        localparam int FUSE_ECC_ARRAY_SEL_WIDTH = (FUSE_NUM_ECC_ARRAYS > 1) ? $clog2(FUSE_NUM_ECC_ARRAYS) : 1
    ) (
        input logic                         clk_i,
        input logic                         rst_ni,
        input logic                         clk_efuse_i,
        input logic                         rst_efuse_ni, // unused to solve RDC violation
        input logic                         req_i,
        input logic                         write_i,
        input logic [(Aw-1):0]              addr_i,
        input logic [(Width+EccWidth-1):0]  wdata_i,
        input logic [1:0]                   mode_i,
        input logic                         ecc_sel_i,
        input logic                         margin_i,
        input logic [1:0]                   test_row_col_sel_i,
        // Response channel
        output logic                        rvalid_o,
        output logic [(Width+EccWidth-1):0] rdata_o,
        output err_e                        err_o,
 
        output logic                        wrapper_ready_o,

        input  otp_macro_reg_pkg::otp_macro_prim_reg2hw_t reg2hw,

        input  logic                        sel_wr_timing_i,

        input  logic                        scan_en_i,
        input  logic                        tstrst_i,
        input  logic                        tstrstsel_i,

        input  logic                                                         mbist_sel_i,
        input  logic [(FUSE_NUM_MBIST_ARRAYS-1):0]                           mbist_fuse_csb_i,
        input  logic [(FUSE_NUM_MBIST_ARRAYS-1):0]                           mbist_fuse_load_i,
        input  logic [(FUSE_NUM_MBIST_ARRAYS-1):0]                           mbist_fuse_pgenb_i,
        input  logic [(FUSE_NUM_MBIST_ARRAYS-1):0]                           mbist_fuse_ps_i,
        input  logic [(FUSE_NUM_MBIST_ARRAYS-1):0]                           mbist_fuse_pd_i,
        input  logic                                                         mbist_fuse_mr_i,
        input  logic                                                         mbist_fuse_rwl_i,
        input  logic                                                         mbist_fuse_rsb_i,
        input  logic [(FUSE_NUM_MBIST_ARRAYS-1):0]                           mbist_fuse_strobe_array_i,
        input  logic [(FUSE_NUM_MBIST_ARRAYS-1):0][(FUSE_ADDR_WIDTH-1):0]    mbist_fuse_address_i,
        output wire  [(FUSE_NUM_MBIST_ARRAYS-1):0][(FUSE_RF_DATA_WIDTH-1):0] mbist_fuse_rf_data_o,
        output wire  [(FUSE_NUM_MBIST_ARRAYS-1):0][(FUSE_DATA_WIDTH-1):0]    mbist_fuse_data_o,
        output logic                                                         reset_allowed_o,

        //trace visibility signals
        output logic                                                         trace_fuse_csb_o,
        output logic                                                         trace_fuse_strobe_o,
        output [(FUSE_ARRAY_SEL_WIDTH-1):0]                                  trace_fuse_array_sel_o,
        output logic                                                         trace_fuse_load_o,
        output logic                                                         trace_fuse_pgenb_o,
        output logic                                                         trace_fuse_ps_o,
        output logic                                                         trace_fuse_pd_o,
        output logic                                                         trace_final_fuse_mr_o,
        output [(FUSE_ADDR_WIDTH-1):0]                                       trace_fuse_address_o,
        output logic                                                         trace_final_fuse_tcrs_o,
        output [(FUSE_TEST_ADDR_WIDTH-1):0]                                  trace_fuse_test_address_o,
        output logic                                                         trace_final_fuse_rsb_o,
        output logic                                                         trace_final_fuse_rwl_o,
        output logic                                                         trace_fuse_ecc_strobe_o,
        output [(FUSE_ECC_ARRAY_SEL_WIDTH-1):0]                              trace_fuse_ecc_array_sel_o,
        output logic                                                         trace_fuse_ecc_ps_o,
        output [(FUSE_ADDR_WIDTH-1):0]                                       trace_fuse_ecc_address_o,
        output [(FUSE_NUM_ARRAYS-1):0][(FUSE_DATA_WIDTH-1):0]                trace_fuse_data_o,
        output [(FUSE_NUM_ECC_ARRAYS-1):0][(FUSE_DATA_WIDTH-1):0]            trace_fuse_ecc_data_o 



      );
  
  logic [11:0] tsur_pd_ps_cycles, tsur_pd_ps_cycles_sysclk;
  logic        tsur_pd_ps_cycles_sysclk_we;
  logic [9:0]  tsur_ps_cycles, tsur_ps_cycles_sysclk;
  logic        tsur_ps_cycles_sysclk_we;
  logic [8:0]  tsur_ps_cs_cycles, tsur_ps_cs_cycles_sysclk;
  logic        tsur_ps_cs_cycles_sysclk_we;
  
  logic [8:0]  tsup_ps_cs_cycles, tsup_ps_cs_cycles_sysclk;
  logic        tsup_ps_cs_cycles_sysclk_we;
  logic [9:0]  tsup_ps_cycles, tsup_ps_cycles_sysclk;
  logic        tsup_ps_cycles_sysclk_we;
  logic [9:0]  tsq_cycles, tsq_cycles_sysclk;
  logic        tsq_cycles_sysclk_we;
  
  logic [10:0] tsq_m_cycles, tsq_m_cycles_sysclk;
  logic        tsq_m_cycles_sysclk_we;
  logic [13:0] tpgm_cycles, tpgm_cycles_sysclk;
  logic        tpgm_cycles_sysclk_we;
  logic [6:0]  tsur_ld_cycles, tsur_ld_cycles_sysclk;
  logic        tsur_ld_cycles_sysclk_we;
  
  logic [9:0]  thr_ps_cycles, thr_ps_cycles_sysclk;
  logic        thr_ps_cycles_sysclk_we;
  logic [9:0]  thp_ps_cycles, thp_ps_cycles_sysclk;
  logic        thp_ps_cycles_sysclk_we;
  logic [8:0]  thp_cs_cycles, thp_cs_cycles_sysclk;
  logic        thp_cs_cycles_sysclk_we;
  
  logic [8:0]  thr_cs_cycles, thr_cs_cycles_sysclk;
  logic        thr_cs_cycles_sysclk_we;
  logic [8:0]  thp_ps_cs_cycles, thp_ps_cs_cycles_sysclk;
  logic        thp_ps_cs_cycles_sysclk_we;
  logic [8:0]  thr_ps_cs_cycles, thr_ps_cs_cycles_sysclk;
  logic        thr_ps_cs_cycles_sysclk_we;
  
  logic [7:0]  tsur_a_cycles, tsur_a_cycles_sysclk;
  logic        tsur_a_cycles_sysclk_we;
  logic [7:0]  tsup_a_cycles, tsup_a_cycles_sysclk;
  logic        tsup_a_cycles_sysclk_we;
  logic [7:0]  thp_a_cycles, thp_a_cycles_sysclk;
  logic        thp_a_cycles_sysclk_we;
  logic [7:0]  tsup_ld_cycles, tsup_ld_cycles_sysclk;
  logic        tsup_ld_cycles_sysclk_we;
  
  logic [9:0]  trd_cycles, trd_cycles_sysclk;
  logic        trd_cycles_sysclk_we;
  logic [10:0] trd_m_cycles, trd_m_cycles_sysclk;
  logic        trd_m_cycles_sysclk_we;
  logic [7:0]  thr_a_cycles, thr_a_cycles_sysclk;
  logic        thr_a_cycles_sysclk_we;
  
  logic [7:0]  thp_pd_ps_cycles, thp_pd_ps_cycles_sysclk;
  logic        thp_pd_ps_cycles_sysclk_we;
  logic [7:0]  data_capture_cycles, data_capture_cycles_sysclk;
  logic        data_capture_cycles_sysclk_we;
  logic [7:0]  addr_capture_cycles, addr_capture_cycles_sysclk;
  logic        addr_capture_cycles_sysclk_we;
  
  logic [17:0] trigger_power_down_cycles, trigger_power_down_cycles_sysclk;
  logic        trigger_power_down_cycles_sysclk_we;

  logic        redundancy_autoinit_disable;

  logic        rvsds_6595_rst_efuse_n;

  logic SYNC_sel_wr_timing;
  logic SYNC_sel_wr_timing0;
  logic SYNC_sel_wr_timing_changed;

  prim_flop_2sync #(
    .Width(1)
  ) u_alert_nmi_sync (
    .clk_i,
    .rst_ni,
    .d_i(sel_wr_timing_i),
    .q_o(SYNC_sel_wr_timing)
  );

  prim_flop #(
    .Width(1),
    .ResetValue('0)
  ) u_sel_wr_timing_flop (
    .clk_i,
    .rst_ni,

    .d_i(SYNC_sel_wr_timing),
    .q_o(SYNC_sel_wr_timing0)
  );

  assign SYNC_sel_wr_timing_changed = SYNC_sel_wr_timing ^ SYNC_sel_wr_timing0;

  always_comb begin
    tsur_pd_ps_cycles_sysclk         = reg2hw.fuse_wrapper_rd_cfg_0.tsur_pd_ps_cycles.q;
    tsur_pd_ps_cycles_sysclk_we      = reg2hw.fuse_wrapper_rd_cfg_0.tsur_pd_ps_cycles.qe || SYNC_sel_wr_timing_changed;

    tsur_ps_cycles_sysclk            = reg2hw.fuse_wrapper_rd_cfg_0.tsur_ps_cycles.q;
    tsur_ps_cycles_sysclk_we         = reg2hw.fuse_wrapper_rd_cfg_0.tsur_ps_cycles.qe || SYNC_sel_wr_timing_changed;

    tsur_ps_cs_cycles_sysclk         = reg2hw.fuse_wrapper_rd_cfg_0.tsur_ps_cs_cycles.q;
    tsur_ps_cs_cycles_sysclk_we      = reg2hw.fuse_wrapper_rd_cfg_0.tsur_ps_cs_cycles.qe || SYNC_sel_wr_timing_changed;

    
    tsup_ps_cs_cycles_sysclk         = reg2hw.fuse_wrapper_rd_cfg_1.tsup_ps_cs_cycles.q;
    tsup_ps_cs_cycles_sysclk_we      = reg2hw.fuse_wrapper_rd_cfg_1.tsup_ps_cs_cycles.qe || SYNC_sel_wr_timing_changed;

    tsup_ps_cycles_sysclk            = reg2hw.fuse_wrapper_rd_cfg_1.tsup_ps_cycles.q;
    tsup_ps_cycles_sysclk_we         = reg2hw.fuse_wrapper_rd_cfg_1.tsup_ps_cycles.qe || SYNC_sel_wr_timing_changed;

    tsq_cycles_sysclk                = reg2hw.fuse_wrapper_rd_cfg_1.tsq_cycles.q;
    tsq_cycles_sysclk_we             = reg2hw.fuse_wrapper_rd_cfg_1.tsq_cycles.qe || SYNC_sel_wr_timing_changed;

    
    tsq_m_cycles_sysclk              = reg2hw.fuse_wrapper_rd_cfg_2.tsq_m_cycles.q;
    tsq_m_cycles_sysclk_we           = reg2hw.fuse_wrapper_rd_cfg_2.tsq_m_cycles.qe || SYNC_sel_wr_timing_changed;

    tpgm_cycles_sysclk               = reg2hw.fuse_wrapper_rd_cfg_2.tpgm_cycles.q;
    tpgm_cycles_sysclk_we            = reg2hw.fuse_wrapper_rd_cfg_2.tpgm_cycles.qe || SYNC_sel_wr_timing_changed;

    tsur_ld_cycles_sysclk            = reg2hw.fuse_wrapper_rd_cfg_2.tsur_ld_cycles.q;
    tsur_ld_cycles_sysclk_we         = reg2hw.fuse_wrapper_rd_cfg_2.tsur_ld_cycles.qe || SYNC_sel_wr_timing_changed;

    
    thr_ps_cycles_sysclk             = reg2hw.fuse_wrapper_rd_cfg_3.thr_ps_cycles.q;
    thr_ps_cycles_sysclk_we          = reg2hw.fuse_wrapper_rd_cfg_3.thr_ps_cycles.qe || SYNC_sel_wr_timing_changed;

    thp_ps_cycles_sysclk             = reg2hw.fuse_wrapper_rd_cfg_3.thp_ps_cycles.q;
    thp_ps_cycles_sysclk_we          = reg2hw.fuse_wrapper_rd_cfg_3.thp_ps_cycles.qe || SYNC_sel_wr_timing_changed;

    thp_cs_cycles_sysclk             = reg2hw.fuse_wrapper_rd_cfg_3.thp_cs_cycles.q;
    thp_cs_cycles_sysclk_we          = reg2hw.fuse_wrapper_rd_cfg_3.thp_cs_cycles.qe || SYNC_sel_wr_timing_changed;

    
    thr_cs_cycles_sysclk             = reg2hw.fuse_wrapper_rd_cfg_4.thr_cs_cycles.q;
    thr_cs_cycles_sysclk_we          = reg2hw.fuse_wrapper_rd_cfg_4.thr_cs_cycles.qe || SYNC_sel_wr_timing_changed;

    thp_ps_cs_cycles_sysclk          = reg2hw.fuse_wrapper_rd_cfg_4.thp_ps_cs_cycles.q;
    thp_ps_cs_cycles_sysclk_we       = reg2hw.fuse_wrapper_rd_cfg_4.thp_ps_cs_cycles.qe || SYNC_sel_wr_timing_changed;

    thr_ps_cs_cycles_sysclk          = reg2hw.fuse_wrapper_rd_cfg_4.thr_ps_cs_cycles.q;
    thr_ps_cs_cycles_sysclk_we       = reg2hw.fuse_wrapper_rd_cfg_4.thr_ps_cs_cycles.qe || SYNC_sel_wr_timing_changed;

    
    tsur_a_cycles_sysclk             = reg2hw.fuse_wrapper_rd_cfg_5.tsur_a_cycles.q;
    tsur_a_cycles_sysclk_we          = reg2hw.fuse_wrapper_rd_cfg_5.tsur_a_cycles.qe || SYNC_sel_wr_timing_changed;

    tsup_a_cycles_sysclk             = reg2hw.fuse_wrapper_rd_cfg_5.tsup_a_cycles.q;
    tsup_a_cycles_sysclk_we          = reg2hw.fuse_wrapper_rd_cfg_5.tsup_a_cycles.qe || SYNC_sel_wr_timing_changed;

    thp_a_cycles_sysclk              = reg2hw.fuse_wrapper_rd_cfg_5.thp_a_cycles.q;
    thp_a_cycles_sysclk_we           = reg2hw.fuse_wrapper_rd_cfg_5.thp_a_cycles.qe || SYNC_sel_wr_timing_changed;

    tsup_ld_cycles_sysclk            = reg2hw.fuse_wrapper_rd_cfg_5.tsup_ld_cycles.q;
    tsup_ld_cycles_sysclk_we         = reg2hw.fuse_wrapper_rd_cfg_5.tsup_ld_cycles.qe || SYNC_sel_wr_timing_changed;

    
    trd_cycles_sysclk                = reg2hw.fuse_wrapper_rd_cfg_6.trd_cycles.q;
    trd_cycles_sysclk_we             = reg2hw.fuse_wrapper_rd_cfg_6.trd_cycles.qe || SYNC_sel_wr_timing_changed;

    trd_m_cycles_sysclk              = reg2hw.fuse_wrapper_rd_cfg_6.trd_m_cycles.q;
    trd_m_cycles_sysclk_we           = reg2hw.fuse_wrapper_rd_cfg_6.trd_m_cycles.qe || SYNC_sel_wr_timing_changed;

    thr_a_cycles_sysclk              = reg2hw.fuse_wrapper_rd_cfg_6.thr_a_cycles.q;
    thr_a_cycles_sysclk_we           = reg2hw.fuse_wrapper_rd_cfg_6.thr_a_cycles.qe || SYNC_sel_wr_timing_changed;

    
    thp_pd_ps_cycles_sysclk          = reg2hw.fuse_wrapper_rd_cfg_7.thp_pd_ps_cycles.q;
    thp_pd_ps_cycles_sysclk_we       = reg2hw.fuse_wrapper_rd_cfg_7.thp_pd_ps_cycles.qe || SYNC_sel_wr_timing_changed;

    data_capture_cycles_sysclk       = reg2hw.fuse_wrapper_rd_cfg_7.data_capture_cycles.q;
    data_capture_cycles_sysclk_we    = reg2hw.fuse_wrapper_rd_cfg_7.data_capture_cycles.qe || SYNC_sel_wr_timing_changed;

    addr_capture_cycles_sysclk       = reg2hw.fuse_wrapper_rd_cfg_7.addr_capture_cycles.q;
    addr_capture_cycles_sysclk_we    = reg2hw.fuse_wrapper_rd_cfg_7.addr_capture_cycles.qe || SYNC_sel_wr_timing_changed;

    
    trigger_power_down_cycles_sysclk    = reg2hw.fuse_wrapper_rd_cfg_8.q;
    trigger_power_down_cycles_sysclk_we = reg2hw.fuse_wrapper_rd_cfg_8.qe || SYNC_sel_wr_timing_changed;


    if(SYNC_sel_wr_timing) begin
      tsur_pd_ps_cycles_sysclk         = reg2hw.fuse_wrapper_wr_cfg_0.tsur_pd_ps_cycles.q;
      tsur_pd_ps_cycles_sysclk_we      = reg2hw.fuse_wrapper_wr_cfg_0.tsur_pd_ps_cycles.qe || SYNC_sel_wr_timing_changed;

      tsur_ps_cycles_sysclk            = reg2hw.fuse_wrapper_wr_cfg_0.tsur_ps_cycles.q;
      tsur_ps_cycles_sysclk_we         = reg2hw.fuse_wrapper_wr_cfg_0.tsur_ps_cycles.qe || SYNC_sel_wr_timing_changed;

      tsur_ps_cs_cycles_sysclk         = reg2hw.fuse_wrapper_wr_cfg_0.tsur_ps_cs_cycles.q;
      tsur_ps_cs_cycles_sysclk_we      = reg2hw.fuse_wrapper_wr_cfg_0.tsur_ps_cs_cycles.qe || SYNC_sel_wr_timing_changed;

      
      tsup_ps_cs_cycles_sysclk         = reg2hw.fuse_wrapper_wr_cfg_1.tsup_ps_cs_cycles.q;
      tsup_ps_cs_cycles_sysclk_we      = reg2hw.fuse_wrapper_wr_cfg_1.tsup_ps_cs_cycles.qe || SYNC_sel_wr_timing_changed;

      tsup_ps_cycles_sysclk            = reg2hw.fuse_wrapper_wr_cfg_1.tsup_ps_cycles.q;
      tsup_ps_cycles_sysclk_we         = reg2hw.fuse_wrapper_wr_cfg_1.tsup_ps_cycles.qe || SYNC_sel_wr_timing_changed;

      tsq_cycles_sysclk                = reg2hw.fuse_wrapper_wr_cfg_1.tsq_cycles.q;
      tsq_cycles_sysclk_we             = reg2hw.fuse_wrapper_wr_cfg_1.tsq_cycles.qe || SYNC_sel_wr_timing_changed;

      
      tsq_m_cycles_sysclk              = reg2hw.fuse_wrapper_wr_cfg_2.tsq_m_cycles.q;
      tsq_m_cycles_sysclk_we           = reg2hw.fuse_wrapper_wr_cfg_2.tsq_m_cycles.qe || SYNC_sel_wr_timing_changed;

      tpgm_cycles_sysclk               = reg2hw.fuse_wrapper_wr_cfg_2.tpgm_cycles.q;
      tpgm_cycles_sysclk_we            = reg2hw.fuse_wrapper_wr_cfg_2.tpgm_cycles.qe || SYNC_sel_wr_timing_changed;

      tsur_ld_cycles_sysclk            = reg2hw.fuse_wrapper_wr_cfg_2.tsur_ld_cycles.q;
      tsur_ld_cycles_sysclk_we         = reg2hw.fuse_wrapper_wr_cfg_2.tsur_ld_cycles.qe || SYNC_sel_wr_timing_changed;

      
      thr_ps_cycles_sysclk             = reg2hw.fuse_wrapper_wr_cfg_3.thr_ps_cycles.q;
      thr_ps_cycles_sysclk_we          = reg2hw.fuse_wrapper_wr_cfg_3.thr_ps_cycles.qe || SYNC_sel_wr_timing_changed;

      thp_ps_cycles_sysclk             = reg2hw.fuse_wrapper_wr_cfg_3.thp_ps_cycles.q;
      thp_ps_cycles_sysclk_we          = reg2hw.fuse_wrapper_wr_cfg_3.thp_ps_cycles.qe || SYNC_sel_wr_timing_changed;

      thp_cs_cycles_sysclk             = reg2hw.fuse_wrapper_wr_cfg_3.thp_cs_cycles.q;
      thp_cs_cycles_sysclk_we          = reg2hw.fuse_wrapper_wr_cfg_3.thp_cs_cycles.qe || SYNC_sel_wr_timing_changed;

      
      thr_cs_cycles_sysclk             = reg2hw.fuse_wrapper_wr_cfg_4.thr_cs_cycles.q;
      thr_cs_cycles_sysclk_we          = reg2hw.fuse_wrapper_wr_cfg_4.thr_cs_cycles.qe || SYNC_sel_wr_timing_changed;

      thp_ps_cs_cycles_sysclk          = reg2hw.fuse_wrapper_wr_cfg_4.thp_ps_cs_cycles.q;
      thp_ps_cs_cycles_sysclk_we       = reg2hw.fuse_wrapper_wr_cfg_4.thp_ps_cs_cycles.qe || SYNC_sel_wr_timing_changed;

      thr_ps_cs_cycles_sysclk          = reg2hw.fuse_wrapper_wr_cfg_4.thr_ps_cs_cycles.q;
      thr_ps_cs_cycles_sysclk_we       = reg2hw.fuse_wrapper_wr_cfg_4.thr_ps_cs_cycles.qe || SYNC_sel_wr_timing_changed;

      
      tsur_a_cycles_sysclk             = reg2hw.fuse_wrapper_wr_cfg_5.tsur_a_cycles.q;
      tsur_a_cycles_sysclk_we          = reg2hw.fuse_wrapper_wr_cfg_5.tsur_a_cycles.qe || SYNC_sel_wr_timing_changed;

      tsup_a_cycles_sysclk             = reg2hw.fuse_wrapper_wr_cfg_5.tsup_a_cycles.q;
      tsup_a_cycles_sysclk_we          = reg2hw.fuse_wrapper_wr_cfg_5.tsup_a_cycles.qe || SYNC_sel_wr_timing_changed;

      thp_a_cycles_sysclk              = reg2hw.fuse_wrapper_wr_cfg_5.thp_a_cycles.q;
      thp_a_cycles_sysclk_we           = reg2hw.fuse_wrapper_wr_cfg_5.thp_a_cycles.qe || SYNC_sel_wr_timing_changed;

      tsup_ld_cycles_sysclk            = reg2hw.fuse_wrapper_wr_cfg_5.tsup_ld_cycles.q;
      tsup_ld_cycles_sysclk_we         = reg2hw.fuse_wrapper_wr_cfg_5.tsup_ld_cycles.qe || SYNC_sel_wr_timing_changed;

      
      trd_cycles_sysclk                = reg2hw.fuse_wrapper_wr_cfg_6.trd_cycles.q;
      trd_cycles_sysclk_we             = reg2hw.fuse_wrapper_wr_cfg_6.trd_cycles.qe || SYNC_sel_wr_timing_changed;

      trd_m_cycles_sysclk              = reg2hw.fuse_wrapper_wr_cfg_6.trd_m_cycles.q;
      trd_m_cycles_sysclk_we           = reg2hw.fuse_wrapper_wr_cfg_6.trd_m_cycles.qe || SYNC_sel_wr_timing_changed;

      thr_a_cycles_sysclk              = reg2hw.fuse_wrapper_wr_cfg_6.thr_a_cycles.q;
      thr_a_cycles_sysclk_we           = reg2hw.fuse_wrapper_wr_cfg_6.thr_a_cycles.qe || SYNC_sel_wr_timing_changed;

      
      thp_pd_ps_cycles_sysclk          = reg2hw.fuse_wrapper_wr_cfg_7.thp_pd_ps_cycles.q;
      thp_pd_ps_cycles_sysclk_we       = reg2hw.fuse_wrapper_wr_cfg_7.thp_pd_ps_cycles.qe || SYNC_sel_wr_timing_changed;

      data_capture_cycles_sysclk       = reg2hw.fuse_wrapper_wr_cfg_7.data_capture_cycles.q;
      data_capture_cycles_sysclk_we    = reg2hw.fuse_wrapper_wr_cfg_7.data_capture_cycles.qe || SYNC_sel_wr_timing_changed;

      addr_capture_cycles_sysclk       = reg2hw.fuse_wrapper_wr_cfg_7.addr_capture_cycles.q;
      addr_capture_cycles_sysclk_we    = reg2hw.fuse_wrapper_wr_cfg_7.addr_capture_cycles.qe || SYNC_sel_wr_timing_changed;

      
      trigger_power_down_cycles_sysclk    = reg2hw.fuse_wrapper_wr_cfg_8.q;
      trigger_power_down_cycles_sysclk_we = reg2hw.fuse_wrapper_wr_cfg_8.qe || SYNC_sel_wr_timing_changed;
    end
  end

  SCS_CDC_BUF_DFT #(.WIDTH($bits(tsur_pd_ps_cycles_sysclk)))
  tsur_pd_ps_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (tsur_pd_ps_cycles_sysclk),
      .data_in_val  (tsur_pd_ps_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (tsur_pd_ps_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(tsur_ps_cycles_sysclk)))
  tsur_ps_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (tsur_ps_cycles_sysclk),
      .data_in_val  (tsur_ps_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (tsur_ps_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(tsur_ps_cs_cycles_sysclk)))
  tsur_ps_cs_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (tsur_ps_cs_cycles_sysclk),
      .data_in_val  (tsur_ps_cs_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (tsur_ps_cs_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(tsup_ps_cs_cycles_sysclk)))
  tsup_ps_cs_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (tsup_ps_cs_cycles_sysclk),
      .data_in_val  (tsup_ps_cs_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (tsup_ps_cs_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(tsup_ps_cycles_sysclk)))
  tsup_ps_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (tsup_ps_cycles_sysclk),
      .data_in_val  (tsup_ps_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (tsup_ps_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(tsq_cycles_sysclk)))
  tsq_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (tsq_cycles_sysclk),
      .data_in_val  (tsq_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (tsq_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(tsq_m_cycles_sysclk)))
  tsq_m_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (tsq_m_cycles_sysclk),
      .data_in_val  (tsq_m_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (tsq_m_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(tpgm_cycles_sysclk)))
  tpgm_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (tpgm_cycles_sysclk),
      .data_in_val  (tpgm_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (tpgm_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(tsur_ld_cycles_sysclk)))
  tsur_ld_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (tsur_ld_cycles_sysclk),
      .data_in_val  (tsur_ld_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (tsur_ld_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(thr_ps_cycles_sysclk)))
  thr_ps_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (thr_ps_cycles_sysclk),
      .data_in_val  (thr_ps_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (thr_ps_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(thp_ps_cycles_sysclk)))
  thp_ps_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (thp_ps_cycles_sysclk),
      .data_in_val  (thp_ps_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (thp_ps_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(thp_cs_cycles_sysclk)))
  thp_cs_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (thp_cs_cycles_sysclk),
      .data_in_val  (thp_cs_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (thp_cs_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(thr_cs_cycles_sysclk)))
  thr_cs_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (thr_cs_cycles_sysclk),
      .data_in_val  (thr_cs_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (thr_cs_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(thp_ps_cs_cycles_sysclk)))
  thp_ps_cs_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (thp_ps_cs_cycles_sysclk),
      .data_in_val  (thp_ps_cs_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (thp_ps_cs_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(thr_ps_cs_cycles_sysclk)))
  thr_ps_cs_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (thr_ps_cs_cycles_sysclk),
      .data_in_val  (thr_ps_cs_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (thr_ps_cs_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(tsur_a_cycles_sysclk)))
  tsur_a_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (tsur_a_cycles_sysclk),
      .data_in_val  (tsur_a_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (tsur_a_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(tsup_a_cycles_sysclk)))
  tsup_a_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (tsup_a_cycles_sysclk),
      .data_in_val  (tsup_a_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (tsup_a_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(thp_a_cycles_sysclk)))
  thp_a_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (thp_a_cycles_sysclk),
      .data_in_val  (thp_a_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (thp_a_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(tsup_ld_cycles_sysclk)))
  tsup_ld_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (tsup_ld_cycles_sysclk),
      .data_in_val  (tsup_ld_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (tsup_ld_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(trd_cycles_sysclk)))
  trd_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (trd_cycles_sysclk),
      .data_in_val  (trd_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (trd_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(trd_m_cycles_sysclk)))
  trd_m_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (trd_m_cycles_sysclk),
      .data_in_val  (trd_m_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (trd_m_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(thr_a_cycles_sysclk)))
  thr_a_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (thr_a_cycles_sysclk),
      .data_in_val  (thr_a_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (thr_a_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(thp_pd_ps_cycles_sysclk)))
  thp_pd_ps_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (thp_pd_ps_cycles_sysclk),
      .data_in_val  (thp_pd_ps_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (thp_pd_ps_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(data_capture_cycles_sysclk)))
  data_capture_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (data_capture_cycles_sysclk),
      .data_in_val  (data_capture_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (data_capture_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(addr_capture_cycles_sysclk)))
  addr_capture_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (addr_capture_cycles_sysclk),
      .data_in_val  (addr_capture_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (addr_capture_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(trigger_power_down_cycles_sysclk)))
  trigger_power_down_cycles_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (trigger_power_down_cycles_sysclk),
      .data_in_val  (trigger_power_down_cycles_sysclk_we),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (trigger_power_down_cycles),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );
  
  
  SCS_CDC_BUF_DFT #(.WIDTH($bits(redundancy_autoinit_disable)))
  redundancy_autoinit_disable_sysclkXCDCBUF
    (
      .wr_clk       (clk_i),      // sysclk
      .wr_rst_l     (rst_ni),     // reset in sysclk domain
      .data_in      (reg2hw.macro_control.redundancy_autoinit_disable.q),
      .data_in_val  (reg2hw.macro_control.redundancy_autoinit_disable.qe),
  
      .rd_clk       (clk_efuse_i),
      .rd_rst_l     (rvsds_6595_rst_efuse_n), // reset in efuse-clk domain
      .data_out     (redundancy_autoinit_disable),
      .data_out_val (),
  
      .scan_en      (scan_en_i),
      .tstrst       (tstrst_i),
      .tstrstsel    (tstrstsel_i)
    );



  rivos_tsmc_fuse_wrapper #(
    /*AUTOINSTPARAM*/
      // Parameters
      .Width              (Width),
      .EccWidth           (EccWidth),
      .Depth              (Depth),
      .FUSE_NUM_ARRAYS    (FUSE_NUM_ARRAYS),
      .FUSE_NUM_MBIST_ARRAYS(FUSE_NUM_MBIST_ARRAYS),
      .FUSE_MBIST_EN      (FUSE_MBIST_EN),
      .FUSE_MBIST_ARRAY_BASE(FUSE_MBIST_ARRAY_BASE),
      .FUSE_MBIST_ARRAY_SIZE(FUSE_MBIST_ARRAY_SIZE),
      .FUSE_MBIST_ECC_ARRAY_BASE(FUSE_MBIST_ECC_ARRAY_BASE),
      .FUSE_MBIST_ECC_ARRAY_SIZE(FUSE_MBIST_ECC_ARRAY_SIZE),
      .FUSE_ADDR_WIDTH    (FUSE_ADDR_WIDTH),
      .FUSE_TEST_ADDR_WIDTH(FUSE_TEST_ADDR_WIDTH),
      .FUSE_DATA_WIDTH    (FUSE_DATA_WIDTH),
      .FUSE_RF_DATA_WIDTH (FUSE_RF_DATA_WIDTH)) u_fuse_wrapper (
    /*AUTOINST*/
      // Interfaces
      .err_o            (err_o),
      // Outputs
      .rvalid_o         (rvalid_o),
      .rdata_o          (rdata_o[(Width+EccWidth-1):0]),
      .wrapper_ready_o  (wrapper_ready_o),
      .mbist_fuse_rf_data_o(mbist_fuse_rf_data_o/*[(FUSE_NUM_MBIST_ARRAYS-1):0][(FUSE_RF_DATA_WIDTH-1):0]*/),
      .mbist_fuse_data_o(mbist_fuse_data_o/*[(FUSE_NUM_MBIST_ARRAYS-1):0][(FUSE_DATA_WIDTH-1):0]*/),
      .reset_allowed_o  (reset_allowed_o),
      .trace_fuse_csb_o (trace_fuse_csb_o),
      .trace_fuse_strobe_o(trace_fuse_strobe_o),
      .trace_fuse_array_sel_o(trace_fuse_array_sel_o[(FUSE_ARRAY_SEL_WIDTH-1):0]),
      .trace_fuse_load_o(trace_fuse_load_o),
      .trace_fuse_pgenb_o(trace_fuse_pgenb_o),
      .trace_fuse_ps_o  (trace_fuse_ps_o),
      .trace_fuse_pd_o  (trace_fuse_pd_o),
      .trace_final_fuse_mr_o(trace_final_fuse_mr_o),
      .trace_fuse_address_o(trace_fuse_address_o[(FUSE_ADDR_WIDTH-1):0]),
      .trace_final_fuse_tcrs_o(trace_final_fuse_tcrs_o),
      .trace_fuse_test_address_o(trace_fuse_test_address_o[(FUSE_TEST_ADDR_WIDTH-1):0]),
      .trace_final_fuse_rsb_o(trace_final_fuse_rsb_o),
      .trace_final_fuse_rwl_o(trace_final_fuse_rwl_o),
      .trace_fuse_ecc_strobe_o(trace_fuse_ecc_strobe_o),
      .trace_fuse_ecc_array_sel_o(trace_fuse_ecc_array_sel_o[(FUSE_ECC_ARRAY_SEL_WIDTH-1):0]),
      .trace_fuse_ecc_ps_o(trace_fuse_ecc_ps_o),
      .trace_fuse_ecc_address_o(trace_fuse_ecc_address_o[(FUSE_ADDR_WIDTH-1):0]),
      .trace_fuse_data_o(trace_fuse_data_o/*[(FUSE_NUM_ARRAYS-1):0][(FUSE_DATA_WIDTH-1):0]*/),
      .trace_fuse_ecc_data_o(trace_fuse_ecc_data_o/*[(FUSE_NUM_ECC_ARRAYS-1):0][(FUSE_DATA_WIDTH-1):0]*/),
      // Inputs
      .clk_i            (clk_i),
      .rst_ni           (rst_ni),
      .clk_efuse_i      (clk_efuse_i),
      .rvsds_6595_rst_efuse_no (rvsds_6595_rst_efuse_n),
      .req_i            (req_i),
      .write_i          (write_i),
      .addr_i           (addr_i[(Aw-1):0]),
      .wdata_i          (wdata_i[(Width+EccWidth-1):0]),
      .mode_i           (mode_i[1:0]),
      .ecc_sel_i        (ecc_sel_i),
      .margin_i         (margin_i),
      .test_row_col_sel_i(test_row_col_sel_i[1:0]),
      .tsur_pd_ps_cycles_i(tsur_pd_ps_cycles[11:0]),
      .tsur_ps_cycles_i (tsur_ps_cycles[9:0]),
      .tsur_ps_cs_cycles_i(tsur_ps_cs_cycles[8:0]),
      .tsur_ld_cycles_i (tsur_ld_cycles[6:0]),
      .tsup_ld_cycles_i (tsup_ld_cycles[7:0]),
      .tsup_ps_cs_cycles_i(tsup_ps_cs_cycles[8:0]),
      .tsup_ps_cycles_i (tsup_ps_cycles[9:0]),
      .tsq_cycles_i     (tsq_cycles[9:0]),
      .tsq_m_cycles_i   (tsq_m_cycles[10:0]),
      .tpgm_cycles_i    (tpgm_cycles[13:0]),
      .thr_ps_cycles_i  (thr_ps_cycles[9:0]),
      .thp_ps_cycles_i  (thp_ps_cycles[9:0]),
      .thp_cs_cycles_i  (thp_cs_cycles[8:0]),
      .thr_cs_cycles_i  (thr_cs_cycles[8:0]),
      .thp_ps_cs_cycles_i(thp_ps_cs_cycles[8:0]),
      .thr_ps_cs_cycles_i(thr_ps_cs_cycles[8:0]),
      .tsur_a_cycles_i  (tsur_a_cycles[7:0]),
      .tsup_a_cycles_i  (tsup_a_cycles[7:0]),
      .thp_a_cycles_i   (thp_a_cycles[7:0]),
      .trd_cycles_i     (trd_cycles[9:0]),
      .trd_m_cycles_i   (trd_m_cycles[10:0]),
      .thr_a_cycles_i   (thr_a_cycles[7:0]),
      .thp_pd_ps_cycles_i(thp_pd_ps_cycles[7:0]),
      .data_capture_cycles_i(data_capture_cycles[7:0]),
      .addr_capture_cycles_i(addr_capture_cycles[7:0]),
      .trigger_power_down_cycles_i(trigger_power_down_cycles[17:0]),
      .redundancy_autoinit_disable_i(redundancy_autoinit_disable),
      .tstrst_i         (tstrst_i),
      .tstrstsel_i      (tstrstsel_i),
      .mbist_sel_i      (mbist_sel_i),
      .mbist_fuse_csb_i (mbist_fuse_csb_i[(FUSE_NUM_MBIST_ARRAYS-1):0]),
      .mbist_fuse_load_i(mbist_fuse_load_i[(FUSE_NUM_MBIST_ARRAYS-1):0]),
      .mbist_fuse_pgenb_i(mbist_fuse_pgenb_i[(FUSE_NUM_MBIST_ARRAYS-1):0]),
      .mbist_fuse_ps_i  (mbist_fuse_ps_i[(FUSE_NUM_MBIST_ARRAYS-1):0]),
      .mbist_fuse_pd_i  (mbist_fuse_pd_i[(FUSE_NUM_MBIST_ARRAYS-1):0]),
      .mbist_fuse_mr_i  (mbist_fuse_mr_i),
      .mbist_fuse_rwl_i (mbist_fuse_rwl_i),
      .mbist_fuse_rsb_i (mbist_fuse_rsb_i),
      .mbist_fuse_strobe_array_i(mbist_fuse_strobe_array_i[(FUSE_NUM_MBIST_ARRAYS-1):0]),
      .mbist_fuse_address_i(mbist_fuse_address_i/*[(FUSE_NUM_MBIST_ARRAYS-1):0][(FUSE_ADDR_WIDTH-1):0]*/));
  
endmodule
// Local Variables:
// fill-column:1
// verilog-auto-arg-sort:t
// verilog-typedef-regexp: "_[etu]$"
// verilog-library-directories:(".")
// End:
