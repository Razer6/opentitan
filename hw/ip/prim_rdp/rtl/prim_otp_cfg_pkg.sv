// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//

package prim_otp_cfg_pkg;
  parameter  bit FUSE_MBIST_EN                     = 0;
  parameter  int FUSE_MBIST_ARRAY_BASE             = 0;
  parameter  int FUSE_MBIST_ARRAY_SIZE             = 0;
  parameter  int FUSE_MBIST_ECC_ARRAY_BASE         = 0;
  parameter  int FUSE_MBIST_ECC_ARRAY_SIZE         = 0;
  parameter  int FUSE_NUM_MBIST_ARRAYS             = 1;   // (neal) default is 1 for otp; but only mbist to nsefuse
  parameter  int FUSE_RF_DATA_WIDTH                = 8;
  // tsmc fuse macro wrapper parameters
  parameter  int FUSE_NUM_ARRAYS                   = 20;  // (neal) default is the value we want for otp_ctrl
  parameter  int FUSE_ADDR_WIDTH                   = 13;
  parameter  int FUSE_TEST_ADDR_WIDTH              = 2;
  parameter  int FUSE_DATA_WIDTH                   = 32;
  localparam int FUSE_ARRAY_SEL_WIDTH              = prim_util_pkg::vbits(FUSE_NUM_ARRAYS);
  localparam int FUSE_NUM_ECC_ARRAYS               = (FUSE_NUM_ARRAYS > 1) ? (FUSE_NUM_ARRAYS >> 1) : 1;
  localparam int FUSE_ECC_ARRAY_SEL_WIDTH          = prim_util_pkg::vbits(FUSE_NUM_ECC_ARRAYS);

  typedef struct packed {
    logic                                     sel_wr_timing;
    logic                                     clk_efuse;
    logic                                     tstrst;
    logic                                     tstrstsel;

    logic                                     mbist_sel;
    logic [(FUSE_NUM_MBIST_ARRAYS-1):0]       mbist_fuse_csb;
    logic [(FUSE_NUM_MBIST_ARRAYS-1):0]       mbist_fuse_load;
    logic [(FUSE_NUM_MBIST_ARRAYS-1):0]       mbist_fuse_pgenb;
    logic [(FUSE_NUM_MBIST_ARRAYS-1):0]       mbist_fuse_ps;
    logic [(FUSE_NUM_MBIST_ARRAYS-1):0]       mbist_fuse_pd;
    logic                                     mbist_fuse_mr;
    logic                                     mbist_fuse_rwl;
    logic                                     mbist_fuse_rsb;
    logic [(FUSE_NUM_MBIST_ARRAYS-1):0]       mbist_fuse_strobe_array;
    logic [(FUSE_NUM_MBIST_ARRAYS-1):0][12:0] mbist_fuse_address;

    logic                                     trace_en;
  } otp_cfg_t;

  typedef struct packed {
    logic [1:0]                                              macro_mode;
    logic                                                    reset_allowed;
    logic [(FUSE_NUM_MBIST_ARRAYS-1):0][(7):0]               mbist_fuse_rf_data;      
    logic [(FUSE_NUM_MBIST_ARRAYS-1):0][(31):0]              mbist_fuse_data;         

    logic                                                    trace_final_fuse_mr;  
    logic                                                    trace_final_fuse_rsb; 
    logic                                                    trace_final_fuse_rwl; 
    logic                                                    trace_final_fuse_tcrs;
    logic [(FUSE_ADDR_WIDTH-1):0]                            trace_fuse_address;
    logic [(FUSE_ARRAY_SEL_WIDTH-1):0]                       trace_fuse_array_sel;
    logic                                                    trace_fuse_csb;       
    logic [(FUSE_NUM_ARRAYS-1):0][(FUSE_DATA_WIDTH-1):0]     trace_fuse_data;      
    logic [(FUSE_ADDR_WIDTH-1):0]                            trace_fuse_ecc_address;
    logic [(FUSE_ECC_ARRAY_SEL_WIDTH-1):0]                   trace_fuse_ecc_array_sel;
    logic [(FUSE_NUM_ECC_ARRAYS-1):0][(FUSE_DATA_WIDTH-1):0] trace_fuse_ecc_data;  
    logic                                                    trace_fuse_ecc_ps;    
    logic                                                    trace_fuse_ecc_strobe;
    logic                                                    trace_fuse_load;      
    logic                                                    trace_fuse_pd;        
    logic                                                    trace_fuse_pgenb;     
    logic                                                    trace_fuse_ps;        
    logic                                                    trace_fuse_strobe;    
    logic [(FUSE_TEST_ADDR_WIDTH-1):0]                       trace_fuse_test_address;
  } otp_cfg_rsp_t;

  parameter otp_cfg_rsp_t OTP_CFG_DEFAULT = '0;

endpackage // prim_otp_cfg_pkg
