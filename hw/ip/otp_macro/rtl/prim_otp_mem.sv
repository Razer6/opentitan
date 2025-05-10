
// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

`include "prim_assert.sv"

module prim_otp_mem
  import otp_ctrl_macro_pkg::*;
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

        input  logic [11:0]                 tsur_pd_ps_cycles_i,
        input  logic [9:0]                  tsur_ps_cycles_i,
        input  logic [8:0]                  tsur_ps_cs_cycles_i,

        input  logic [6:0]                  tsur_ld_cycles_i,
        input  logic [7:0]                  tsup_ld_cycles_i,

        input  logic [8:0]                  tsup_ps_cs_cycles_i,
        input  logic [9:0]                  tsup_ps_cycles_i,
        input  logic [9:0]                  tsq_cycles_i,

        input  logic [10:0]                 tsq_m_cycles_i,
        input  logic [13:0]                 tpgm_cycles_i,

        input  logic [9:0]                  thr_ps_cycles_i,
        input  logic [9:0]                  thp_ps_cycles_i,
        input  logic [8:0]                  thp_cs_cycles_i,

        input  logic [8:0]                  thr_cs_cycles_i,
        input  logic [8:0]                  thp_ps_cs_cycles_i,
        input  logic [8:0]                  thr_ps_cs_cycles_i,

        input  logic [7:0]                  tsur_a_cycles_i,
        input  logic [7:0]                  tsup_a_cycles_i,
        input  logic [7:0]                  thp_a_cycles_i,

        input  logic [9:0]                  trd_cycles_i,
        input  logic [10:0]                 trd_m_cycles_i,
        input  logic [7:0]                  thr_a_cycles_i,

        input  logic [7:0]                  thp_pd_ps_cycles_i,
        input  logic [7:0]                  data_capture_cycles_i,
        input  logic [7:0]                  addr_capture_cycles_i,

        input  logic [17:0]                 trigger_power_down_cycles_i,

        input  logic                        redundancy_autoinit_disable_i,

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
                                                                                      .req_i            (req_i),
                                                                                      .write_i          (write_i),
                                                                                      .addr_i           (addr_i[(Aw-1):0]),
                                                                                      .wdata_i          (wdata_i[(Width+EccWidth-1):0]),
                                                                                      .mode_i           (mode_i[1:0]),
                                                                                      .ecc_sel_i        (ecc_sel_i),
                                                                                      .margin_i         (margin_i),
                                                                                      .test_row_col_sel_i(test_row_col_sel_i[1:0]),
                                                                                      .tsur_pd_ps_cycles_i(tsur_pd_ps_cycles_i[11:0]),
                                                                                      .tsur_ps_cycles_i (tsur_ps_cycles_i[9:0]),
                                                                                      .tsur_ps_cs_cycles_i(tsur_ps_cs_cycles_i[8:0]),
                                                                                      .tsur_ld_cycles_i (tsur_ld_cycles_i[6:0]),
                                                                                      .tsup_ld_cycles_i (tsup_ld_cycles_i[7:0]),
                                                                                      .tsup_ps_cs_cycles_i(tsup_ps_cs_cycles_i[8:0]),
                                                                                      .tsup_ps_cycles_i (tsup_ps_cycles_i[9:0]),
                                                                                      .tsq_cycles_i     (tsq_cycles_i[9:0]),
                                                                                      .tsq_m_cycles_i   (tsq_m_cycles_i[10:0]),
                                                                                      .tpgm_cycles_i    (tpgm_cycles_i[13:0]),
                                                                                      .thr_ps_cycles_i  (thr_ps_cycles_i[9:0]),
                                                                                      .thp_ps_cycles_i  (thp_ps_cycles_i[9:0]),
                                                                                      .thp_cs_cycles_i  (thp_cs_cycles_i[8:0]),
                                                                                      .thr_cs_cycles_i  (thr_cs_cycles_i[8:0]),
                                                                                      .thp_ps_cs_cycles_i(thp_ps_cs_cycles_i[8:0]),
                                                                                      .thr_ps_cs_cycles_i(thr_ps_cs_cycles_i[8:0]),
                                                                                      .tsur_a_cycles_i  (tsur_a_cycles_i[7:0]),
                                                                                      .tsup_a_cycles_i  (tsup_a_cycles_i[7:0]),
                                                                                      .thp_a_cycles_i   (thp_a_cycles_i[7:0]),
                                                                                      .trd_cycles_i     (trd_cycles_i[9:0]),
                                                                                      .trd_m_cycles_i   (trd_m_cycles_i[10:0]),
                                                                                      .thr_a_cycles_i   (thr_a_cycles_i[7:0]),
                                                                                      .thp_pd_ps_cycles_i(thp_pd_ps_cycles_i[7:0]),
                                                                                      .data_capture_cycles_i(data_capture_cycles_i[7:0]),
                                                                                      .addr_capture_cycles_i(addr_capture_cycles_i[7:0]),
                                                                                      .trigger_power_down_cycles_i(trigger_power_down_cycles_i[17:0]),
                                                                                      .redundancy_autoinit_disable_i(redundancy_autoinit_disable_i),
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
