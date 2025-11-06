// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

`include "prim_assert.sv"

module rivos_tsmc_fuse_wrapper
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

        output logic                        rvsds_6595_rst_efuse_no, // FIXME_GEN2 cleanup signal naming, want to be very obvious for gB0 eco

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

  import prim_mubi_pkg::MuBi4False;

  genvar g_i;


  localparam int FUSE_MACRO_INST_ADDR_WIDTH = 9;

  // all cycles numbers assume 100 MHz clock (10 ns period)
  // example FUSE_TSUR_PD_PS_CYCLES (87) * 10 ns = 870 ns;
  // using the ssgnp0p675v1p080vm40c numbers as they are worst case
  // want fuses to operate correctly no matter what the process and
  // operating conditions are

  localparam int FUSE_NUM_WRITE_MAX_BIT     = (Width-1);
  localparam int FUSE_NUM_ECC_WRITE_MAX_BIT = (EccWidth-1);

  localparam int FUSE_ECC_BIT_ADDR_WIDTH = 3;

  localparam int FUSE_STATE_COUNT_BITS = 19; // should be largest of cycle bits+1

  typedef enum logic [3:0] {
      FUSE_INIT_ST        = 4'b0000,
      FUSE_READ_SETUP_ST  = 4'b0001,
      FUSE_READ_READY_ST  = 4'b0010,
      FUSE_READ_ST        = 4'b0011,
      FUSE_READ_HOLD_ST   = 4'b0100,
      FUSE_WRITE_SETUP_ST = 4'b0101,
      FUSE_WRITE_READY_ST = 4'b0110,
      FUSE_WRITE_ST       = 4'b0111,
      FUSE_WRITE_HOLD_ST  = 4'b1000,
      FUSE_POWER_DOWN_ST  = 4'b1001
  } fuse_ctl_state_e;

  typedef enum logic [1:0] {
      FUSE_MODE_ARRAY      = 2'b00,
      FUSE_MODE_REDUNDANCY = 2'b01,
      FUSE_MODE_TEST       = 2'b10
  } fuse_mode_e;

  typedef enum logic {
      FUSE_OP_READ  = 1'b0,
      FUSE_OP_WRITE = 1'b1
  } fuse_operation_e;

  typedef struct packed {
      fuse_operation_e       op;
      fuse_mode_e            mode;
      logic                  margin;
      logic                  ecc;  // N/A for array mode
      logic [1:0]            test_row_col_sel;
      logic [(Aw-1):0]       addr;
      logic [(Width-1):0]    wdata;
      logic [(EccWidth-1):0] wdata_ecc;
  } fuse_cmd_s;

  logic reset;
  logic rst_efuse_n;

  logic fuse_csb, fuse_csb_set, fuse_csb_clr, next_fuse_csb;
  logic [(FUSE_NUM_ARRAYS-1):0] final_fuse_csb_array;
  logic [(FUSE_NUM_ECC_ARRAYS-1):0] final_fuse_ecc_csb_array;
  logic fuse_strobe, fuse_strobe_set, fuse_strobe_clr, next_fuse_strobe;
  logic fuse_ecc_strobe, fuse_ecc_strobe_set, fuse_ecc_strobe_clr, next_fuse_ecc_strobe;
  logic [(FUSE_NUM_ARRAYS-1):0] fuse_strobe_array, final_fuse_strobe_array;
  logic [(FUSE_NUM_ECC_ARRAYS-1):0] fuse_ecc_strobe_array, final_fuse_ecc_strobe_array;
  logic fuse_load, fuse_load_set, fuse_load_clr, next_fuse_load;
  logic [(FUSE_NUM_ARRAYS-1):0] final_fuse_load_array;
  logic [(FUSE_NUM_ECC_ARRAYS-1):0] final_fuse_ecc_load_array;
  logic fuse_pgenb, fuse_pgenb_set, fuse_pgenb_clr, next_fuse_pgenb;
  logic [(FUSE_NUM_ARRAYS-1):0] final_fuse_pgenb_array;
  logic [(FUSE_NUM_ECC_ARRAYS-1):0] final_fuse_ecc_pgenb_array;
  logic fuse_ps, fuse_ps_set, fuse_ps_clr, next_fuse_ps;
  logic fuse_ecc_ps, fuse_ecc_ps_set, fuse_ecc_ps_clr, next_fuse_ecc_ps;
  logic [(FUSE_NUM_ARRAYS-1):0] final_fuse_ps_array, fuse_ps_array;
  logic [(FUSE_NUM_ECC_ARRAYS-1):0] fuse_ecc_ps_array, final_fuse_ecc_ps_array;
  logic fuse_pd, fuse_pd_set, fuse_pd_clr, next_fuse_pd;
  logic [(FUSE_NUM_ARRAYS-1):0] final_fuse_pd_array;
  logic [(FUSE_NUM_ECC_ARRAYS-1):0] final_fuse_ecc_pd_array;
  logic fuse_mr, fuse_mr_set, fuse_mr_clr, next_fuse_mr, final_fuse_mr;
  logic [(FUSE_ADDR_WIDTH-1):0] func_fuse_address, fuse_address, next_fuse_address;
  logic [(FUSE_NUM_ARRAYS-1):0][(FUSE_ADDR_WIDTH-1):0] final_fuse_address;
  logic [(FUSE_ADDR_WIDTH-1):0] func_fuse_ecc_address, fuse_ecc_address, next_fuse_ecc_address;
  logic [(FUSE_NUM_ECC_ARRAYS-1):0][(FUSE_ADDR_WIDTH-1):0] final_fuse_ecc_address;
  logic fuse_address_en;
  logic fuse_tcrs, fuse_tcrs_set, fuse_tcrs_clr, next_fuse_tcrs, final_fuse_tcrs;
  logic [(FUSE_TEST_ADDR_WIDTH-1):0] func_fuse_test_address, fuse_test_address, next_fuse_test_address;
  logic [(FUSE_NUM_ARRAYS-1):0][(FUSE_TEST_ADDR_WIDTH-1):0] final_fuse_test_address;
  logic [(FUSE_NUM_ECC_ARRAYS-1):0][(FUSE_TEST_ADDR_WIDTH-1):0] final_fuse_test_ecc_address;
  logic [(FUSE_ARRAY_SEL_WIDTH-1):0] func_fuse_array_sel, fuse_array_sel, next_fuse_array_sel;
  logic [(FUSE_ECC_ARRAY_SEL_WIDTH-1):0] g_func_fuse_ecc_array_sel;
  logic [(FUSE_ARRAY_SEL_WIDTH-1):0] g_func_fuse_array_sel;
  logic [(FUSE_ECC_ARRAY_SEL_WIDTH-1):0] func_fuse_ecc_array_sel, fuse_ecc_array_sel, next_fuse_ecc_array_sel;
  logic fuse_rsb, fuse_rsb_set, fuse_rsb_clr, next_fuse_rsb, final_fuse_rsb;
  logic fuse_rwl, fuse_rwl_set, fuse_rwl_clr, next_fuse_rwl, final_fuse_rwl;
  // (neal) outputs from fuse macro verilog file need to be wires instead of logic
  wire [(FUSE_NUM_ARRAYS-1):0][(FUSE_DATA_WIDTH-1):0]    fuse_data;
  wire [(FUSE_NUM_ARRAYS-1):0][(FUSE_RF_DATA_WIDTH-1):0] fuse_rf_data;
  // (neal) outputs from fuse macro verilog file need to be wires instead of logic
  wire [(FUSE_NUM_ECC_ARRAYS-1):0][(FUSE_DATA_WIDTH-1):0]    fuse_ecc_data;    // ecc data has 32b reads, will select what chunk is needed downstream
  wire [(FUSE_NUM_ECC_ARRAYS-1):0][(FUSE_RF_DATA_WIDTH-1):0] fuse_ecc_rf_data;

  logic [(FUSE_DATA_WIDTH-1):0] fuse_data_out, next_fuse_data_out;
  logic [(FUSE_DATA_WIDTH-1):0] fuse_ecc_data_out, next_fuse_ecc_data_out; // ecc data has 32b reads, will select what chunk is needed downstream
  logic [(Width-1):0]           fuse_read_return_data;
  logic                         fuse_data_valid, fuse_data_valid_out, next_fuse_data_valid_out;
  logic                         fuse_data_chunk_sel, next_fuse_data_chunk_sel;
  logic [1:0]                   fuse_ecc_data_chunk_sel, next_fuse_ecc_data_chunk_sel;
  logic [(EccWidth-1):0]        fuse_read_return_ecc;

  logic            cur_redundancy_init, next_redundancy_init, finished_redundancy_init;
  logic            cur_redundancy_init_1;

  fuse_cmd_s incoming_cmd, new_cmd, cur_cmd, next_cmd;

  logic [(Width-1):0]    incoming_wdata;
  logic [(EccWidth-1):0] incoming_wdata_ecc;

  fuse_cmd_s redundancy_init_cmd;

  logic capture_new_cmd;
  logic ready_for_new_cmd;
  logic new_setup_needed, setup_was_needed, next_setup_needed;
  logic clear_setup_needed;

  logic new_init_needed, clear_init_needed;
  logic init_needed, next_init_needed;

  logic                               clear_fuse_state_count;
  logic [(FUSE_STATE_COUNT_BITS-1):0] fuse_state_count, next_fuse_state_count;

  logic fuse_init_complete;
  logic fuse_read_setup_complete;
  logic fuse_read_complete;
  logic fuse_read_data_ready;
  logic fuse_read_hold_complete;
  logic fuse_read_csb_hold_complete;

  logic fuse_write_setup_complete;
  logic fuse_write_complete, fuse_write_complete_out, next_fuse_write_complete_out;
  logic fuse_write_hold_complete;
  logic fuse_write_csb_hold_complete;

  logic fuse_tsur_ps_cs_complete;
  logic fuse_tsur_a_complete;
  logic fuse_trd_complete;

  logic fuse_tsup_ps_cs_complete;
  logic fuse_tsup_a_complete;
  logic fuse_tpgm_complete;

  logic fuse_thr_ps_cs_complete;
  logic fuse_thp_pd_ps_complete;

  logic fuse_addr_capture_complete;

  logic fuse_read_trigger_power_down;
  logic fuse_write_trigger_power_down;

  logic fuse_redundancy_inc_read_count;
  logic fuse_redundancy_load_cmd;
  logic fuse_write_load_cmd;
  logic fuse_load_first_redundancy_cmd;
  logic [1:0] fuse_redundancy_init_read_count, next_fuse_redundancy_init_read_count;

  logic fuse_write_active, next_fuse_write_active;
  logic fuse_ecc_write_active, next_fuse_ecc_write_active;
  logic [3:0] fuse_write_bit_count, next_fuse_write_bit_count;
  logic fuse_inc_write_count;

  fuse_ctl_state_e fuse_ctl_state, next_fuse_ctl_state;

  logic incoming_fifo_valid;
  logic outgoing_fifo_valid;
  logic fuse_send_response;

  assign reset = !rst_efuse_n;

  assign incoming_wdata = wdata_i[(Width-1):0];
  assign incoming_wdata_ecc = wdata_i[(Width+EccWidth-1):Width];

  // Sync reset allowed signal due to CDC
  RDP_SYNC  #(
    .RST_VALUE(1'b0)
  ) u_sync_reset_allowed (
    .clk      (clk_i),
    .rst_l    (rst_ni),
    .async_in (fuse_pd),
    .sync_out (reset_allowed_o)
  );

  always_comb begin : incoming_cmd_assignment
    incoming_cmd                  = '0;

    incoming_cmd.op               = (req_i && write_i) ? FUSE_OP_WRITE : FUSE_OP_READ;
    incoming_cmd.mode             = fuse_mode_e'(mode_i);
    incoming_cmd.margin           = margin_i;
    incoming_cmd.test_row_col_sel = test_row_col_sel_i;
    incoming_cmd.ecc              = ecc_sel_i;
    incoming_cmd.addr             = addr_i;
    incoming_cmd.wdata            = incoming_wdata;
    incoming_cmd.wdata_ecc        = incoming_wdata_ecc;
  end

  always_comb begin : redundancy_init_cmd_assignment
    redundancy_init_cmd                  = '0;

    redundancy_init_cmd.op               = FUSE_OP_READ;
    redundancy_init_cmd.mode             = FUSE_MODE_REDUNDANCY;
    redundancy_init_cmd.ecc              = 1'b0;                 // N/A for this case, need init for both data and ecc arrays
    redundancy_init_cmd.margin           = 1'b0;                 // first initialization will always be in regular margin mode
    redundancy_init_cmd.test_row_col_sel = 1'b0;                 // N/A in REDUNDANCY mode
    redundancy_init_cmd.addr             = {9'b0, next_fuse_redundancy_init_read_count, 1'b0};
    redundancy_init_cmd.wdata            = '0;
    redundancy_init_cmd.wdata_ecc        = '0;
  end

// incoming commands go through clock crossing
RDP_ASYNC_FIFO
  #(
    .NONSCAN_RD (1),
    .DEBUGEN_RD (0),
    .ENTRIES (8),
    .DATA_WIDTH ($bits(fuse_cmd_s))
  )
  incoming_cmd_fifo
  (
    // global
   .wrClk(clk_i),
   .rdClk(clk_efuse_i),
   .wrRst_l(rst_ni),
   .rdRst_l(rst_efuse_n),

   .rdRxRdy(),
   .rdFifoDbgBus(),
   .rdFifoDbgClkDis(1'b0),
   .wrTxRdy(),
   .wrFifoDbgBus(),
   .wrFifoDbgClkDis(1'b1),
   .tston_rd(1'b0),
   .tston_wr(1'b0),
   .wrActive(1'b1),
   .rdActive(1'b1),

    // write port
   .wrReady(wrapper_ready_o),     ///< FIFO can accept a write, Not FULL
   .wrAF(),                       ///< FIFO can accept a write, But its Almost Full
   .wrEn(req_i),                  ///< Write the data wrData to FIFO
   .wrFault(),                    ///< '1' when wrReady is '0' and wrEn is '1'
   .wrData(incoming_cmd),         ///< Data to write (valid when wrEn is high)
    // read port
   .rdValid(incoming_fifo_valid), ///< Read data available, Not EMPTY
   .rdEn(capture_new_cmd),        ///< Pop the data present on rdData from the fifo
   .rdFault(),                    ///< '1' when rdValid is '0' and rdEn is '1'
   .rdData(new_cmd)               ///< Data currently first on output (valid when rdValid)
  );



   // ready to capture a new command when in READ or WRITE READY states or STANDBY state
   // need to not be doing redundancy initialization
   // need to not be currently writing fuse bits.  this is needed because an OTP write is 16 bits, and fuses are written
   // one bit at a time, and the FSM cycles through the ready state for each bit
   // incoming_fifo_valid indicates that there is a valid command waiting in the incomming fifo
   assign capture_new_cmd = ready_for_new_cmd && (!(next_redundancy_init || cur_redundancy_init)) && (!fuse_write_active) && incoming_fifo_valid;

   // generate reset in the 100mhz clock domain based on aon reset
   RDP_RSTSYNC_DFT efuse_rst_sync
   (
     .clk         (clk_efuse_i),
     .async_rst_l (rst_ni),

     .tstrstsel   (tstrstsel_i),
     .tstrst      (tstrst_i),

     .rst_l       (rst_efuse_n)
   );

  assign rvsds_6595_rst_efuse_no = rst_efuse_n;

  // need to figure out max bit to write for current operation
  // REDUNDANCY and TEST modes write single bit per operation
  // ARRAY mode writes 16b of data per operation
  logic [31:0] cur_cmd_max_write_bit;
  assign cur_cmd_max_write_bit = (cur_cmd.mode != FUSE_MODE_ARRAY) ? '0 : FUSE_NUM_WRITE_MAX_BIT;

  logic [31:0] cur_cmd_ecc_max_write_bit;
  assign cur_cmd_ecc_max_write_bit = (cur_cmd.mode != FUSE_MODE_ARRAY) ? '0 : FUSE_NUM_ECC_WRITE_MAX_BIT;


  // cur_redundancy_init indicates that system is performing
  // redundancy initialization reads
  // this should always happen at startup or any time in INIT_ST
  // to get redundancy info.  reset always goes to INIT_ST
  // into array flops so subsequent reads get the repaired info
  always_comb begin : redundancy_bit_management
    next_redundancy_init = cur_redundancy_init;

    if(fuse_ctl_state == FUSE_INIT_ST) begin
      next_redundancy_init = 1'b1;
    end
    else if ((fuse_redundancy_init_read_count == 2'b11) && fuse_redundancy_inc_read_count) begin
      next_redundancy_init = '0;
    end
  end

  RDP_AFFR aff_fuse_redundancy_init          (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(capture_new_cmd||fuse_redundancy_load_cmd), .d(next_redundancy_init), .q(cur_redundancy_init));
  RDP_AFFR aff_fuse_finished_redundancy_init (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(capture_new_cmd||cur_redundancy_init),      .d(cur_redundancy_init),  .q(finished_redundancy_init));
  RDP_AFFR aff_fuse_redundancy_init_1        (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(1'b1),                                      .d(cur_redundancy_init),  .q(cur_redundancy_init_1));

  assign clear_init_needed = finished_redundancy_init && (!cur_redundancy_init_1);

  // need four reads to initialize all of the redundancy info
  always_comb begin : next_redundancy_count
    next_fuse_redundancy_init_read_count = fuse_redundancy_init_read_count;

    if(fuse_redundancy_inc_read_count) begin
      next_fuse_redundancy_init_read_count = fuse_redundancy_init_read_count + 2'b01;
    end
  end

  RDP_AFFR #( .WIDTH($bits(fuse_redundancy_init_read_count)) )
    aff_fuse_redundancy_init_count (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(fuse_redundancy_inc_read_count), .d(next_fuse_redundancy_init_read_count), .q(fuse_redundancy_init_read_count));

  // fuse_write_active indicates that there is a write in progress
  // an otp write is 16 bits (cur_cmd_max_write_bit) but fuses are blown one bit at a time
  always_comb begin : write_active_management
    next_fuse_write_active = fuse_write_active;

    if (capture_new_cmd && (new_cmd.op == FUSE_OP_WRITE)) begin
      next_fuse_write_active = 1'b1;
    end
    else if (({{32-$bits(fuse_write_bit_count){1'b0}},fuse_write_bit_count} == cur_cmd_max_write_bit) && fuse_inc_write_count) begin
      next_fuse_write_active = 1'b0;
    end
  end

  RDP_AFFR aff_fuse_write_active (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(capture_new_cmd||fuse_write_load_cmd), .d(next_fuse_write_active), .q(fuse_write_active));

  // fuse_ecc_write_active indicates that there is an ecc write in progress
  // ecc writes are only 6 bits, so will track fuse_write_active for first six bits
  // of the write
  // ecc bits are written concurrently with the data bits
  always_comb begin : ecc_write_active_management
    next_fuse_ecc_write_active = fuse_ecc_write_active;

    if (capture_new_cmd && (new_cmd.op == FUSE_OP_WRITE)) begin
      next_fuse_ecc_write_active = 1'b1;
    end
    else if ((fuse_write_bit_count == cur_cmd_ecc_max_write_bit[3:0]) && fuse_inc_write_count) begin
      next_fuse_ecc_write_active = 1'b0;
    end
  end

  RDP_AFFR aff_fuse_ecc_write_active (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(capture_new_cmd||fuse_write_load_cmd), .d(next_fuse_ecc_write_active), .q(fuse_ecc_write_active));


  // need 16 (or parameter) writes to handle 16 bit data provided to OTP
  always_comb begin : next_write_count
    next_fuse_write_bit_count = fuse_write_bit_count;

    if(!fuse_write_active) begin
      next_fuse_write_bit_count = 4'h0;
    end
    else if(fuse_inc_write_count) begin
      next_fuse_write_bit_count = fuse_write_bit_count + 4'h1;
    end
  end

  RDP_AFFR #( .WIDTH($bits(fuse_write_bit_count)) )
    aff_fuse_write_bit_count (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(fuse_inc_write_count||(!fuse_write_active)), .d(next_fuse_write_bit_count), .q(fuse_write_bit_count));

  // get new command from incoming fifo unless
  // doing redundancy initialization after power on
  always_comb begin : cmd_fifo_pop_blk
    next_cmd  = cur_cmd;

    if (next_redundancy_init || cur_redundancy_init) begin
      next_cmd = redundancy_init_cmd;
    end
    else if(capture_new_cmd) begin
      next_cmd  = new_cmd;
    end
  end

  RDP_AFFR #( .WIDTH($bits(cur_cmd)) ) aff_fuse_cur_cmd (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(capture_new_cmd||fuse_redundancy_load_cmd), .d(next_cmd), .q(cur_cmd));

  // need to load a new redundancy init command
  // this is done right out or reset or after completing the previous
  // redundancy init command.  there are a total of 4 commands needed.
  assign fuse_redundancy_load_cmd = fuse_redundancy_inc_read_count || fuse_load_first_redundancy_cmd;

  // need to load a new fuse write command
  // this is done each time the previous one finishes
  // the first one is loaded when the write command is captured from the fifo
  // there are 16 or parameter needed for single incoming otp command
  assign fuse_write_load_cmd = fuse_inc_write_count;

  // indicates that the operation or mode is changing or coming out of standby
  // and a new configuraiton needs to be setup
  assign new_setup_needed = capture_new_cmd &&
                            ((cur_cmd.mode != next_cmd.mode)     ||
                             (cur_cmd.op != next_cmd.op)         ||
                             (cur_cmd.margin != next_cmd.margin) ||
                             (fuse_ctl_state == FUSE_POWER_DOWN_ST));

  // need flag to skip new capture when processing first command after an op_mode change
  // since capturing a new command triggers a setup change, and the FSM looks for a new command
  // after a setup has been configured, this flag is needed to prevent capturing a new command
  // until after the command that trigged the setup change is completed
  always_comb begin
    next_setup_needed = setup_was_needed;

    if (new_setup_needed) begin
      next_setup_needed = 1'b1;
    end
    else if (clear_setup_needed) begin
      next_setup_needed = 1'b0;
    end
  end

  RDP_AFFR aff_fuse_setup_needed (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(new_setup_needed||clear_setup_needed), .d(next_setup_needed), .q(setup_was_needed));

  assign new_init_needed = (!redundancy_autoinit_disable_i) &&
                           incoming_fifo_valid && (!finished_redundancy_init) &&
                           ((cur_cmd.mode == FUSE_MODE_REDUNDANCY) && (new_cmd.mode != FUSE_MODE_REDUNDANCY));

  always_comb begin
    next_init_needed = init_needed;

    if (new_init_needed) begin
      next_init_needed = 1'b1;
    end
    else if (clear_init_needed) begin
      next_init_needed = 1'b0;
    end
  end

  RDP_AFFR aff_fuse_init_needed (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(new_init_needed||clear_init_needed), .d(next_init_needed), .q(init_needed));

  generate
    if (FUSE_NUM_ARRAYS > 1) begin : gen_num_array_greater_1
      assign g_func_fuse_array_sel       = cur_cmd.addr[FUSE_MACRO_INST_ADDR_WIDTH+:FUSE_ARRAY_SEL_WIDTH];
    end else begin : gen_num_array_is_1
      assign g_func_fuse_array_sel       = '0;
    end

    if (FUSE_NUM_ECC_ARRAYS > 1) begin : gen_num_ecc_array_greater_1
      assign g_func_fuse_ecc_array_sel   = cur_cmd.addr[(FUSE_MACRO_INST_ADDR_WIDTH+1)+:FUSE_ECC_ARRAY_SEL_WIDTH];
    end else begin : gen_num_ecc_array_is_1
      assign g_func_fuse_ecc_array_sel   = '0;
    end
  endgenerate

  // FSM to control the sequencing of signals to the efuse macro
  always_comb begin
    next_fuse_ctl_state   = fuse_ctl_state;
    fuse_csb_set              = 1'b0;
    fuse_csb_clr              = 1'b0;
    fuse_strobe_set           = 1'b0;
    fuse_strobe_clr           = 1'b0;
    fuse_ecc_strobe_set       = 1'b0;
    fuse_ecc_strobe_clr       = 1'b0;
    fuse_load_set             = 1'b0;
    fuse_load_clr             = 1'b0;
    fuse_pgenb_set            = 1'b0;
    fuse_pgenb_clr            = 1'b0;
    fuse_ps_set               = 1'b0;
    fuse_ps_clr               = 1'b0;
    fuse_ecc_ps_set           = 1'b0;
    fuse_ecc_ps_clr           = 1'b0;
    fuse_pd_set               = 1'b0;
    fuse_pd_clr               = 1'b0;
    fuse_mr_set               = 1'b0;
    fuse_mr_clr               = 1'b0;
    fuse_address_en           = 1'b0;
    fuse_tcrs_set             = 1'b0;
    fuse_tcrs_clr             = 1'b0;
    fuse_rsb_set              = 1'b0;
    fuse_rsb_clr              = 1'b0;
    fuse_rwl_set              = 1'b0;
    fuse_rwl_clr              = 1'b0;

    fuse_load_first_redundancy_cmd = 1'b0;
    fuse_redundancy_inc_read_count = 1'b0;

    fuse_inc_write_count = 1'b0;

    ready_for_new_cmd    = 1'b0;
    clear_setup_needed   = 1'b0;

    func_fuse_address       = '0;
    func_fuse_ecc_address   = '0;
    func_fuse_test_address  = '0;
    func_fuse_array_sel     = '0;
    func_fuse_ecc_array_sel = '0;

    unique case (fuse_ctl_state)
      FUSE_INIT_ST: begin
        // this state drives the PD pin on the fuse macro interface
        // it needs to drive PD for TSUP_PD_PS
        // reads do not have a dependency on PD to PS spacing
        // although first transition is always to reads, no guarantee
        // that a read operation will exceed TSUP_PD_PS, so waiting to be safe
        // init state is always done coming out of reset
        // after init state, always transition to READ_SETUP to capture redundancy info

        // drive PD
        fuse_pd_clr = 1'b1;

        // fuse_init_complete fires when in INIT state and TSUR_PD_PS cycles have completed
        if(fuse_init_complete) begin
          fuse_load_first_redundancy_cmd = 1'b1;
          next_fuse_ctl_state = FUSE_READ_SETUP_ST; // always transition to read coming out of reset to capture redundancy info
        end
      end

      FUSE_READ_SETUP_ST: begin
        // this state drives the read initialization sequence
        // already waited TSUP_PD_PS in FUSE_INIT_ST

        // 1) drive PS
        fuse_ps_clr     = 1'b1;
        fuse_ecc_ps_clr = 1'b1;

        // 2) wait TSUR_PS_CS and then drive CSB, MR, PGENB, LOAD, RWL, RSB, TCRS
        // as appropriate for the mode
        if(fuse_tsur_ps_cs_complete) begin
          fuse_csb_clr   = 1'b1;
          fuse_mr_clr    = (!cur_cmd.margin);
          fuse_mr_set    = cur_cmd.margin;
          fuse_pgenb_set = 1'b1;
          fuse_load_set  = 1'b1;

          unique case (cur_cmd.mode)
            FUSE_MODE_ARRAY: begin
              // redundancy should always be enabled
              fuse_rsb_clr   = 1'b1;
              fuse_rwl_clr   = 1'b1;
              fuse_tcrs_clr  = 1'b1;
            end
            FUSE_MODE_REDUNDANCY: begin
              // redundancy should always be enabled
              fuse_rsb_clr   = 1'b1;
              fuse_rwl_set   = 1'b1;
              fuse_tcrs_clr  = 1'b1;
            end
            FUSE_MODE_TEST: begin
              // redundancy should always be enabled
              fuse_rsb_clr   = 1'b1;
              fuse_rwl_clr   = 1'b1;
              fuse_tcrs_set  = 1'b1;
            end
          endcase
        end

        // fuse_read_setup_complete fires when in the READ_SETUP state and TSUR_PS cycles have completed
        if(fuse_read_setup_complete) begin
          next_fuse_ctl_state = FUSE_READ_READY_ST;
        end
      end

      FUSE_READ_READY_ST: begin
        // this state checks for a new command or transisitons to READ
        // if no new command, it will wait here
        // if this is the first operation after a mode change, the command has already been captured
        // if no new command for a really long time, then it will transition to STANDBY

        // squashing ready for new command when doing redundancy init,
        // a new command was already captured that triggered a new setup configuration
        // when power down has triggered, do not go there if a new command is in the fifo
        if(cur_redundancy_init || setup_was_needed || new_init_needed || init_needed || ((!incoming_fifo_valid) && fuse_read_trigger_power_down)) begin
          ready_for_new_cmd = 1'b0;
        end
        else begin
          ready_for_new_cmd = 1'b1;
        end

        // when doing redundancy init, we already have a command to process
        // so transition to READ
        if(cur_redundancy_init) begin
           next_fuse_ctl_state = FUSE_READ_ST;
        end
        // if a new setup was needed then we need to process the command that
        // triggered the new configuration, or a new command is captured that
        // does not need a new config, we need to perform the READ
        else if(setup_was_needed || (capture_new_cmd && !new_setup_needed)) begin
           next_fuse_ctl_state = FUSE_READ_ST;
        end
        // if captured a new command that needs a new configuration
        // transition to READ_HOLD before setting up new config
        else if(init_needed || (capture_new_cmd && new_setup_needed)) begin
           next_fuse_ctl_state = FUSE_READ_HOLD_ST;
        end
        // if no new commands have arrived for a long time, transition to STANDBY
        // fuse_read_trigger_power_down fires when in READ hold and FUSE_TRIGGER_POWER_DOWN cycles have completed
        else if(fuse_read_trigger_power_down) begin
           next_fuse_ctl_state = FUSE_POWER_DOWN_ST;
        end
      end

      FUSE_READ_ST: begin
        // perform the read
        // sequences the address and strobe pins
        // captures read result into fuse_data_out flop

        func_fuse_address           = '0;
        func_fuse_ecc_address       = '0;
        func_fuse_test_address      = '0;
        func_fuse_array_sel         = g_func_fuse_array_sel;
        func_fuse_ecc_array_sel     = g_func_fuse_ecc_array_sel;

        // generate address for fuse macro
        // fuse_address[7:0] is used to determine which 32b fuse entry to read
        // fuse_address[12] is don't care for reads by fuse macro, but used to determine
        // which 16b chunk of the 32b fuse read to return
        // ecc data is stored 6 bits per 16 bits of fuse data
        // bits[7:6] of each 8b chunk of ecc data are unused
        // fuse_ecc_address[12:11] is used to determing which 8b chunk of the 32b fuse read
        // return is needed
        unique case (cur_cmd.mode)
          FUSE_MODE_ARRAY: begin
            func_fuse_address[7:0]       = cur_cmd.addr[8:1];
            func_fuse_address[12]        = cur_cmd.addr[0];
            func_fuse_ecc_address[7:0]   = cur_cmd.addr[9:2];
            func_fuse_ecc_address[12:11] = cur_cmd.addr[1:0];
          end
          FUSE_MODE_REDUNDANCY: begin
            func_fuse_address[7:6] = cur_cmd.addr[2:1];
            func_fuse_address[12]  = cur_cmd.addr[0];
            func_fuse_ecc_address  = func_fuse_address; // redundancy ecc array is programmed exactly the same as redundancy data
          end
          FUSE_MODE_TEST: begin
            // if test row is selected, data comes out Q31-Q0
            // if test 1st column is selected, data comes out Q0
            // if test 2nd column is selected, data comes out Q31

            // test addr determines if reading row or column
            //   and which test row or column
            // addr[8:7] for test addr
            func_fuse_test_address = cur_cmd.test_row_col_sel;

            func_fuse_address[12]    = cur_cmd.addr[0];
            // bit 1 being set indicates test column
            if(func_fuse_test_address[1]) begin
              func_fuse_address[5:0] = cur_cmd.addr[6:1];
            end
            else begin
              func_fuse_address[7:6] = cur_cmd.addr[2:1];
            end

            func_fuse_ecc_address  = func_fuse_address; // test ecc array is programmed exactly the same as test data
          end
        endcase

        // 1) drive addr enable capture flop for one cycle
        fuse_address_en = 1'b1;
        // fuse_addr_capture_complete fires when in READ or WRITE stages and FUSE_ADDR_CAPTURE cycles have completed
        if(fuse_addr_capture_complete) begin
          fuse_address_en = 1'b0;
        end

        // 2) after TSUR_A drive strobe
        // 3) after TRD/TRD_M clear strobe
        // only set data array strobe if reading data array
        // only set data strobe if in array mode, or !array and !ecc
        if((cur_cmd.mode == FUSE_MODE_ARRAY) ||
           ((cur_cmd.mode != FUSE_MODE_ARRAY) && (!cur_cmd.ecc)) ||
           cur_redundancy_init) begin
          // fuse_tsur_a_complete fires when in WRITE state and FUSE_TSUP_A have completed
          if(fuse_tsur_a_complete) begin
             fuse_strobe_set = 1'b1;
          end
          // fuse_trd_complete fires when in WRITE state and (FUSE_TSUR_A + FUSE_TRD) cycles have completed
          // (FUSE_TSUR_A + FUSE_TRD) addition is needed because the counter starts when FSM enters READ state
          else if(fuse_trd_complete) begin
             fuse_strobe_clr = 1'b1;
          end
        end

        // only set ecc array strobe if reading ecc array
        // only set ecc strobe if in array mode, or !array and ecc
        if((cur_cmd.mode == FUSE_MODE_ARRAY) ||
           ((cur_cmd.mode != FUSE_MODE_ARRAY) && (cur_cmd.ecc)) ||
           cur_redundancy_init) begin
          // fuse_tsur_a_complete fires when in WRITE state and FUSE_TSUP_A have completed
          if(fuse_tsur_a_complete) begin
             fuse_ecc_strobe_set = 1'b1;
          end
          // fuse_trd_complete fires when in WRITE state and (FUSE_TSUR_A + FUSE_TRD) cycles have completed
          // (FUSE_TSUR_A + FUSE_TRD) addition is needed because the counter starts when FSM enters READ state
          else if(fuse_trd_complete) begin
             fuse_ecc_strobe_clr = 1'b1;
          end
        end


        // 4) pick up valid data after TSQ/TSQ_M (will be greater than THR_A, so don't need to worry about this one)
        // done in fuse_data_out flop with enable being the fuse_read_complete siganl

        // fuse_read_complete fires when (FUSE_TSUR_A + FUSE_TRD_M + FUSE_THR_A)
        if(fuse_read_complete) begin
          // if a new setup was needed and we have processed the command that triggered the
          // new setup, then we clear the new setup needed flag
          if(setup_was_needed && (!cur_redundancy_init)) begin
            clear_setup_needed = 1'b1;
          end

          // when doing redundancy init, increment the read counter
          if(cur_redundancy_init) begin
            fuse_redundancy_inc_read_count = 1'b1;
          end

          // always transition back to READ_READY after a read completes
          next_fuse_ctl_state = FUSE_READ_READY_ST;
        end
      end

      FUSE_READ_HOLD_ST: begin
        // perform necessary hold time and transition to new write or read config

        // fuse_read_csb_hold_complete fires when in READ_HOLD state and FUSE_THR_CS cycles have completed
        if(fuse_read_csb_hold_complete) begin
           fuse_csb_set = 1'b1;
        end

        // fuse_read_hold_complete fires when in READ_HOLD state and (FUSE_THR_CS + FUSE_THR_PS_CS) cycles have completed
        if(fuse_read_hold_complete) begin
          if(init_needed) begin
            next_fuse_ctl_state = FUSE_INIT_ST;
          end
          else if(cur_cmd.op == FUSE_OP_READ) begin
            next_fuse_ctl_state = FUSE_READ_SETUP_ST;
          end
          else if(cur_cmd.op == FUSE_OP_WRITE) begin
            next_fuse_ctl_state = FUSE_WRITE_SETUP_ST;
          end
        end
      end

      FUSE_WRITE_SETUP_ST: begin
        // this state drives the write initialization sequence
        // already waited TSUP_PD_PS in FUSE_INIT_ST

        // 1) drive PS
        fuse_ps_set = 1'b1;

        if((cur_cmd.mode == FUSE_MODE_ARRAY) ||
           ((cur_cmd.mode != FUSE_MODE_ARRAY) && (cur_cmd.ecc))) begin
          fuse_ecc_ps_set = 1'b1;
        end

        // 2) wait TSUP_PS_CS and then drive CSB, MR, PGENB, LOAD, RWL, RSB, TCRS
        if(fuse_tsup_ps_cs_complete) begin
          fuse_csb_clr   = 1'b1;
          fuse_mr_clr    = 1'b1; // (neal) don't care for writes
          fuse_pgenb_clr = 1'b1;
          fuse_load_clr  = 1'b1;
          unique case (cur_cmd.mode)
            FUSE_MODE_ARRAY: begin
              // redundancy should always be enabled
              fuse_rsb_clr   = 1'b1;
              fuse_rwl_clr   = 1'b1;
              fuse_tcrs_clr  = 1'b1;
            end
            FUSE_MODE_REDUNDANCY: begin
              // redundancy should always be enabled
              fuse_rsb_clr   = 1'b1;
              fuse_rwl_set   = 1'b1;
              fuse_tcrs_clr  = 1'b1;
            end
            FUSE_MODE_TEST: begin
              // redundancy should always be enabled
              fuse_rsb_clr   = 1'b1;
              fuse_rwl_clr   = 1'b1;
              fuse_tcrs_set  = 1'b1;
            end
          endcase
        end

        // fuse_write_setup_complete fires when in WRITE_SETUP state and FUSE_TSUP_PS have completed
        if(fuse_write_setup_complete) begin
          next_fuse_ctl_state = FUSE_WRITE_READY_ST;
        end
      end

      FUSE_WRITE_READY_ST: begin
        // this state checks for a new command or transisitons to WRITE
        // cycle over bits in write command

        // squashing ready for new command when doing redundancy init,
        // a new command was already captured that triggered a new setup configuration,
        // or transitioning to STANDBY
        if(fuse_write_active || setup_was_needed || new_init_needed || init_needed || ((!incoming_fifo_valid) && fuse_write_trigger_power_down)) begin
          ready_for_new_cmd = 1'b0;
        end
        else begin
          ready_for_new_cmd = 1'b1;
        end

        // skipping write state if neither data or ecc bit is not set
        // as only want to write data that is 1 to the fuse array
        // need to increment the write counter anyway
        if(fuse_write_active && (!((cur_cmd.wdata[fuse_write_bit_count]) ||
                                   (fuse_ecc_write_active && cur_cmd.wdata_ecc[fuse_write_bit_count[(FUSE_ECC_BIT_ADDR_WIDTH-1):0]])))) begin
            fuse_inc_write_count = 1'b1;
        end

        // if op_mode changed then we need to process this new write
        if(fuse_write_active) begin
           // only perform write if the data or ecc data input is 1
           if((cur_cmd.mode != FUSE_MODE_ARRAY) ||
              ((cur_cmd.wdata[fuse_write_bit_count]) ||
               (fuse_ecc_write_active && cur_cmd.wdata_ecc[fuse_write_bit_count[(FUSE_ECC_BIT_ADDR_WIDTH-1):0]]))) begin
              next_fuse_ctl_state = FUSE_WRITE_ST;
           end
        end
        else begin
          // if a new setup was needed then we need to process the command that
          // triggered the new configuration, or a new command is captured that
          // does not need a new config, we need to perform the WRITE
          if(setup_was_needed || (capture_new_cmd && !new_setup_needed)) begin
             next_fuse_ctl_state = FUSE_WRITE_ST;
          end
        // if captured a new command that needs a new configuration
        // transition to WRITE_HOLD before setting up new config
          else if(init_needed || (capture_new_cmd && new_setup_needed)) begin
             next_fuse_ctl_state = FUSE_WRITE_HOLD_ST;
          end
        // if no new commands have arrived for a long time, transition to STANDBY
        // fuse_write_trigger_power_down fires when in WRITE hold and FUSE_TRIGGER_POWER_DOWN cycles have completed
          else if(fuse_write_trigger_power_down) begin
             next_fuse_ctl_state = FUSE_POWER_DOWN_ST;
          end
        end
      end

      FUSE_WRITE_ST: begin
        // perform the read

        func_fuse_address           = '0;
        func_fuse_ecc_address       = '0;
        func_fuse_test_address      = '0;
        func_fuse_array_sel         = g_func_fuse_array_sel;
        func_fuse_ecc_array_sel     = g_func_fuse_ecc_array_sel;

        // generate address for fuse macro
        // fuse_address[7:0] is used to determine which 32b fuse entry to read
        // fuse_address[12] determines which 16b chunk to write
        // fuse_address[11:8] specifies specific bit within 16b chunk to write
        // ecc data is stored 6 bits per 16 bits of fuse data
        // bits[7:6] of each 8b chunk of ecc data are unused
        unique case (cur_cmd.mode)
          FUSE_MODE_ARRAY: begin
            func_fuse_address[7:0]  = cur_cmd.addr[8:1];
            func_fuse_address[11:8] = fuse_write_bit_count;
            func_fuse_address[12]   = cur_cmd.addr[0];
            func_fuse_ecc_address[7:0]    = cur_cmd.addr[9:2];
            func_fuse_ecc_address[12:11]  = cur_cmd.addr[1:0];
            func_fuse_ecc_address[10:8]   = fuse_write_bit_count[2:0]; // only 6 bits of ECC info, so using [2:0]
          end
          FUSE_MODE_REDUNDANCY: begin
            func_fuse_address[12:6] = cur_cmd.addr[7:1];
            func_fuse_ecc_address  = func_fuse_address; // redundancy ecc array is programmed exactly the same as redundancy data
          end
          FUSE_MODE_TEST: begin
            // no data associated with TEST write, only address

            // test addr determines if reading row or column
            //   and which test row or column
            // addr[8:7] for test addr
            func_fuse_test_address = cur_cmd.test_row_col_sel;

            // bit 1 being set indicates test column
            if(func_fuse_test_address[1]) begin
              func_fuse_address[5:0] = cur_cmd.addr[6:1];
            end
            else begin
              func_fuse_address[12:6] = cur_cmd.addr[7:1];
            end

            func_fuse_ecc_address  = func_fuse_address; // test ecc array is programmed exactly the same as test data
          end
        endcase

        // 1) drive addr enable capture flop for one cycle
        fuse_address_en = 1'b1;
        // fuse_addr_capture_complete fires when in READ or WRITE stages and FUSE_ADDR_CAPTURE cycles have completed
        if(fuse_addr_capture_complete) begin
          fuse_address_en = 1'b0;
        end

        // 2) after TSUP_A drive strobe
        // 3) after TRD/TRD_M clear strobe
        // only set data array strobe if blowing bit
        // only set data strobe if in array mode, or !array and !ecc
        if((cur_cmd.mode != FUSE_MODE_ARRAY) || cur_cmd.wdata[fuse_write_bit_count]) begin
          if((cur_cmd.mode == FUSE_MODE_ARRAY) ||
             ((cur_cmd.mode != FUSE_MODE_ARRAY) && (!cur_cmd.ecc))) begin
            // fuse_tsup_a_complete fires when in WRITE state and FUSE_TSUP_A have completed
            if(fuse_tsup_a_complete) begin
               fuse_strobe_set = 1'b1;
            end
            // fuse_tpgm_complete fires when in WRITE state and (FUSE_TSUP_A + FUSE_TPGM) cycles have completed
            // (FUSE_TSUP_A + FUSE_TPGM) addition is needed because the counter starts when FSM enters WRITE state
            else if(fuse_tpgm_complete) begin
               fuse_strobe_clr = 1'b1;
            end
          end
        end

        // only set ecc array strobe if blowing bit
        // only set ecc strobe if in array mode, or !array and ecc
        if((cur_cmd.mode != FUSE_MODE_ARRAY) ||
           (fuse_ecc_write_active && cur_cmd.wdata_ecc[fuse_write_bit_count[(FUSE_ECC_BIT_ADDR_WIDTH-1):0]])) begin
          if((cur_cmd.mode == FUSE_MODE_ARRAY) ||
             ((cur_cmd.mode != FUSE_MODE_ARRAY) && (cur_cmd.ecc))) begin
            // fuse_tsup_a_complete fires when in WRITE state and FUSE_TSUP_A have completed
            if(fuse_tsup_a_complete) begin
               fuse_ecc_strobe_set = 1'b1;
            end
            // fuse_tpgm_complete fires when in WRITE state and (FUSE_TSUP_A + FUSE_TPGM) cycles have completed
            // (FUSE_TSUP_A + FUSE_TPGM) addition is needed because the counter starts when FSM enters WRITE state
            else if(fuse_tpgm_complete) begin
               fuse_ecc_strobe_clr = 1'b1;
            end
          end
        end

        // fuse_write_complete fires when (FUSE_TSUP_A + FUSE_TPGM + FUSE_THP_A)
        if(fuse_write_complete) begin
          // if a new setup was needed and we have processed the command that triggered the
          // new setup, then we clear the new setup needed flag
          if(setup_was_needed && (!cur_redundancy_init)) begin
            clear_setup_needed = 1'b1;
          end

          // when processing a write , increment the write counter
          if(fuse_write_active) begin
            fuse_inc_write_count = 1'b1;
          end

          // always transition back to WRITE_READY after a write completes
          next_fuse_ctl_state = FUSE_WRITE_READY_ST;
        end
      end

      FUSE_WRITE_HOLD_ST: begin
        // perform necessary hold time and transition to new write or read

        // fuse_write_csb_hold_complete fires when in WRITE_HOLD state and FUSE_THP_CS cycles have complete
        if(fuse_write_csb_hold_complete) begin
           fuse_csb_set = 1'b1;
        end

        // fuse_write_hold_complete fires when in WRITE_HOLD state and (FUSE_THP_CS + FUSE_THP_PS_CS) cycles have completed
        if(fuse_write_hold_complete) begin
          if(init_needed) begin
            next_fuse_ctl_state = FUSE_INIT_ST;
          end
          else if(cur_cmd.op == FUSE_OP_READ) begin
            next_fuse_ctl_state = FUSE_READ_SETUP_ST;
          end
          else if(cur_cmd.op == FUSE_OP_WRITE) begin
            next_fuse_ctl_state = FUSE_WRITE_SETUP_ST;
          end
        end
      end

      FUSE_POWER_DOWN_ST: begin
        ready_for_new_cmd = 1'b0; // don't want to capture new command here
                                  // capturing new command should wait until
                                  // after redundancy init has happened

        // put the fuse macro in standby mode
        fuse_csb_set = 1'b1;

        // fuse_thr_ps_cs_complete fires when in POWER_DOWN and FUSE_THR_PS_CS cycles have completed
        if (fuse_thr_ps_cs_complete) begin
          // make sure ps is low before pd
          fuse_ps_clr      = 1'b1;
          fuse_ecc_ps_clr  = 1'b1;
        end

        // fuse_thr_ps_cs_complete fires when in POWER_DOWN and (FUSE_THR_PS_CS + FUSE_THP_PD_PS) cycles have completed
        if (fuse_thp_pd_ps_complete) begin
          // wait thp_pd_ps between clearing ps and setting pd
          // this is worst case, don't need to remember if shutting down from writes or reads
          fuse_pd_set  = 1'b1;
        end

        // new command is here, but don't want to capture yet
        // want to let the power down sequence complete before re-initializing
        if(incoming_fifo_valid && fuse_pd) begin
           next_fuse_ctl_state = FUSE_INIT_ST;
        end
      end

      default: begin
        next_fuse_ctl_state = fuse_ctl_state;
      end
    endcase
  end

  RDP_AFFR #( .DTYPE(fuse_ctl_state_e) ) aff_fuse_ctl_state (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(1'b1), .d(next_fuse_ctl_state), .q(fuse_ctl_state));

  // clear timer that counts how long FSM is in a state any time we transition states or reset
  assign clear_fuse_state_count = reset || (next_fuse_ctl_state != fuse_ctl_state);

  // fuse_state_count is counter that counts how long FSM has been in a state
  always_comb begin
    if(clear_fuse_state_count) begin
      next_fuse_state_count = '0;
    end
    else begin
      next_fuse_state_count = fuse_state_count + 1'b1;
    end
  end

  RDP_AFFR #( .WIDTH(FUSE_STATE_COUNT_BITS) ) aff_fuse_state_count (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(1'b1), .d(next_fuse_state_count), .q(fuse_state_count));

  assign fuse_init_complete            = (fuse_ctl_state == FUSE_INIT_ST)       && (fuse_state_count == FUSE_STATE_COUNT_BITS'(tsur_pd_ps_cycles_i));
  assign fuse_read_setup_complete      = (fuse_ctl_state == FUSE_READ_SETUP_ST) && (fuse_state_count == (FUSE_STATE_COUNT_BITS'(tsur_ld_cycles_i) +
                                                                                                         FUSE_STATE_COUNT_BITS'(tsur_ps_cs_cycles_i)));

  assign fuse_read_complete            = (fuse_ctl_state == FUSE_READ_ST)       &&
                                         (cur_cmd.margin ? (fuse_state_count == (FUSE_STATE_COUNT_BITS'(tsur_a_cycles_i) +
                                                                                 FUSE_STATE_COUNT_BITS'(trd_m_cycles_i) +
                                                                                 FUSE_STATE_COUNT_BITS'(thr_a_cycles_i))) :
                                                           (fuse_state_count == (FUSE_STATE_COUNT_BITS'(tsur_a_cycles_i) +
                                                                                 FUSE_STATE_COUNT_BITS'(trd_cycles_i) +
                                                                                 FUSE_STATE_COUNT_BITS'(thr_a_cycles_i)))); // need addition because counter starts at the beginning of this state

  assign fuse_read_data_ready          = (fuse_ctl_state == FUSE_READ_ST)       &&
                                         (cur_cmd.margin ? (fuse_state_count == (FUSE_STATE_COUNT_BITS'(tsur_a_cycles_i) +
                                                                                 FUSE_STATE_COUNT_BITS'(tsq_m_cycles_i) +
                                                                                 FUSE_STATE_COUNT_BITS'(data_capture_cycles_i))) :
                                                           (fuse_state_count == (FUSE_STATE_COUNT_BITS'(tsur_a_cycles_i) +
                                                                                 FUSE_STATE_COUNT_BITS'(tsq_cycles_i) +
                                                                                 FUSE_STATE_COUNT_BITS'(data_capture_cycles_i)))); // need addition because counter starts at the beginning of this state

  assign fuse_read_hold_complete       = (fuse_ctl_state == FUSE_READ_HOLD_ST)  && (fuse_state_count >= (FUSE_STATE_COUNT_BITS'(thr_cs_cycles_i) +
                                                                                                         FUSE_STATE_COUNT_BITS'(thr_ps_cs_cycles_i)));
  assign fuse_read_csb_hold_complete   = (fuse_ctl_state == FUSE_READ_HOLD_ST)  && (fuse_state_count == FUSE_STATE_COUNT_BITS'(thr_cs_cycles_i));
  assign fuse_tsur_ps_cs_complete      = (fuse_ctl_state == FUSE_READ_SETUP_ST) && (fuse_state_count == FUSE_STATE_COUNT_BITS'(tsur_ps_cs_cycles_i));
  assign fuse_tsur_a_complete          = (fuse_ctl_state == FUSE_READ_ST)       && (fuse_state_count == FUSE_STATE_COUNT_BITS'(tsur_a_cycles_i));

  assign fuse_trd_complete             = (fuse_ctl_state == FUSE_READ_ST)       &&
                                         (cur_cmd.margin ? (fuse_state_count == (FUSE_STATE_COUNT_BITS'(tsur_a_cycles_i) +
                                                                                 FUSE_STATE_COUNT_BITS'(trd_m_cycles_i))) :
                                                           (fuse_state_count == (FUSE_STATE_COUNT_BITS'(tsur_a_cycles_i) +
                                                                                 FUSE_STATE_COUNT_BITS'(trd_cycles_i)))); // need addition because counter starts at the beginning of this state

  assign fuse_write_setup_complete     = (fuse_ctl_state == FUSE_WRITE_SETUP_ST) && (fuse_state_count == (FUSE_STATE_COUNT_BITS'(tsup_ld_cycles_i) +
                                                                                                          FUSE_STATE_COUNT_BITS'(tsup_ps_cs_cycles_i)));
  assign fuse_write_complete           = (fuse_ctl_state == FUSE_WRITE_ST)       && (fuse_state_count == (FUSE_STATE_COUNT_BITS'(tsup_a_cycles_i) +
                                                                                                          FUSE_STATE_COUNT_BITS'(tpgm_cycles_i) +
                                                                                                          FUSE_STATE_COUNT_BITS'(thp_a_cycles_i)));
  assign fuse_write_hold_complete      = (fuse_ctl_state == FUSE_WRITE_HOLD_ST)  && (fuse_state_count >= (FUSE_STATE_COUNT_BITS'(thp_cs_cycles_i) +
                                                                                                          FUSE_STATE_COUNT_BITS'(thp_ps_cs_cycles_i)));
  assign fuse_write_csb_hold_complete  = (fuse_ctl_state == FUSE_WRITE_HOLD_ST)  && (fuse_state_count == FUSE_STATE_COUNT_BITS'(thp_cs_cycles_i));
  assign fuse_tsup_ps_cs_complete      = (fuse_ctl_state == FUSE_WRITE_SETUP_ST) && (fuse_state_count == FUSE_STATE_COUNT_BITS'(tsup_ps_cs_cycles_i));
  assign fuse_tsup_a_complete          = (fuse_ctl_state == FUSE_WRITE_ST)       && (fuse_state_count == FUSE_STATE_COUNT_BITS'(tsup_a_cycles_i));
  assign fuse_tpgm_complete            = (fuse_ctl_state == FUSE_WRITE_ST)       && (fuse_state_count == (FUSE_STATE_COUNT_BITS'(tsup_a_cycles_i) +
                                                                                                          FUSE_STATE_COUNT_BITS'(tpgm_cycles_i))); // need addition because counter starts at the beginning of this state

  assign fuse_thr_ps_cs_complete       = (fuse_ctl_state == FUSE_POWER_DOWN_ST) && (fuse_state_count == FUSE_STATE_COUNT_BITS'(thr_ps_cs_cycles_i));
  assign fuse_thp_pd_ps_complete       = (fuse_ctl_state == FUSE_POWER_DOWN_ST) && (fuse_state_count == (FUSE_STATE_COUNT_BITS'(thr_ps_cs_cycles_i) +
                                                                                                         FUSE_STATE_COUNT_BITS'(thp_pd_ps_cycles_i)));

  assign fuse_addr_capture_complete    = ((fuse_ctl_state == FUSE_READ_ST) || (fuse_ctl_state == FUSE_WRITE_ST)) && (fuse_state_count >= FUSE_STATE_COUNT_BITS'(addr_capture_cycles_i));

  assign fuse_read_trigger_power_down  = (fuse_ctl_state == FUSE_READ_READY_ST)  && (fuse_state_count == FUSE_STATE_COUNT_BITS'(trigger_power_down_cycles_i));
  assign fuse_write_trigger_power_down = (fuse_ctl_state == FUSE_WRITE_READY_ST) && (fuse_state_count == FUSE_STATE_COUNT_BITS'(trigger_power_down_cycles_i));

  // Fuse IO flops
  // all fuse macro interface signals are flopped between FSM control and the actual fuse macro
  always_comb begin
    next_fuse_pd = fuse_pd;

    // reset to 1
    if (fuse_pd_clr) begin
      next_fuse_pd = 1'b0;
    end
    else if (fuse_pd_set) begin
      next_fuse_pd = 1'b1;
    end
  end

  RDP_AFFR #(.RST_VALUE(1'b1)) aff_fuse_pd (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(fuse_pd_set||fuse_pd_clr), .d(next_fuse_pd), .q(fuse_pd));

  always_comb begin
    next_fuse_ps = fuse_ps;

    if (fuse_ps_clr) begin
      next_fuse_ps = 1'b0;
    end
    else if (fuse_ps_set) begin
      next_fuse_ps = 1'b1;
    end
  end

  RDP_AFFR aff_fuse_ps  (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(fuse_ps_set||fuse_ps_clr), .d(next_fuse_ps), .q(fuse_ps));

  always_comb begin
    next_fuse_ecc_ps = fuse_ecc_ps;

    if (fuse_ecc_ps_clr) begin
      next_fuse_ecc_ps = 1'b0;
    end
    else if (fuse_ecc_ps_set) begin
      next_fuse_ecc_ps = 1'b1;
    end
  end

  RDP_AFFR aff_fuse_ecc_ps  (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(fuse_ecc_ps_set||fuse_ecc_ps_clr), .d(next_fuse_ecc_ps), .q(fuse_ecc_ps));

  always_comb begin
    next_fuse_csb = fuse_csb;

    // reset to 1
    if (fuse_csb_clr) begin
      next_fuse_csb = 1'b0;
    end
    else if (fuse_csb_set) begin
      next_fuse_csb = 1'b1;
    end
  end

  RDP_AFFR #(.RST_VALUE(1'b1)) aff_fuse_csb  (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(fuse_csb_set||fuse_csb_clr), .d(next_fuse_csb), .q(fuse_csb));

  always_comb begin
    next_fuse_mr = fuse_mr;

    if (fuse_mr_clr) begin
      next_fuse_mr = 1'b0;
    end
    else if (fuse_mr_set) begin
      next_fuse_mr = 1'b1;
    end
  end

  RDP_AFFR aff_fuse_mr (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(fuse_mr_set||fuse_mr_clr), .d(next_fuse_mr), .q(fuse_mr));

  always_comb begin
    next_fuse_pgenb = fuse_pgenb;

    // reset to 1
    if (fuse_pgenb_clr) begin
      next_fuse_pgenb = 1'b0;
    end
    else if (fuse_pgenb_set) begin
      next_fuse_pgenb = 1'b1;
    end
  end

  RDP_AFFR #(.RST_VALUE(1'b1)) aff_fuse_pgenb (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(fuse_pgenb_set||fuse_pgenb_clr), .d(next_fuse_pgenb), .q(fuse_pgenb));

  always_comb begin
    next_fuse_load = fuse_load;

    if (fuse_load_clr) begin
      next_fuse_load = 1'b0;
    end
    else if (fuse_load_set) begin
      next_fuse_load = 1'b1;
    end
  end

  RDP_AFFR aff_fuse_load (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(fuse_load_set||fuse_load_clr), .d(next_fuse_load), .q(fuse_load));

  always_comb begin
    next_fuse_rsb = fuse_rsb;

    if (fuse_rsb_clr) begin
      next_fuse_rsb = 1'b0;
    end
    else if (fuse_rsb_set) begin
      next_fuse_rsb = 1'b1;
    end
  end

  RDP_AFFR aff_fuse_rsb (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(fuse_rsb_set||fuse_rsb_clr), .d(next_fuse_rsb), .q(fuse_rsb));

  always_comb begin
    next_fuse_rwl = fuse_rwl;

    if (fuse_rwl_clr) begin
      next_fuse_rwl = 1'b0;
    end
    else if (fuse_rwl_set) begin
      next_fuse_rwl = 1'b1;
    end
  end

  RDP_AFFR aff_fuse_rwl (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(fuse_rwl_set||fuse_rwl_clr), .d(next_fuse_rwl), .q(fuse_rwl));

  always_comb begin
    next_fuse_tcrs = fuse_tcrs;

    if (fuse_tcrs_clr) begin
      next_fuse_tcrs = 1'b0;
    end
    else if (fuse_tcrs_set) begin
      next_fuse_tcrs = 1'b1;
    end
  end

  RDP_AFFR aff_fuse_tcrs (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(fuse_tcrs_set||fuse_tcrs_clr), .d(next_fuse_tcrs), .q(fuse_tcrs));

  always_comb begin
    next_fuse_strobe = fuse_strobe;

    if (fuse_strobe_clr) begin
      next_fuse_strobe = 1'b0;
    end
    else if (fuse_strobe_set) begin
      next_fuse_strobe = 1'b1;
    end
  end

  RDP_AFFR #( .NONSCAN(1) ) aff_fuse_strobe (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(fuse_strobe_set||fuse_strobe_clr), .d(next_fuse_strobe), .q(fuse_strobe));

  always_comb begin
    next_fuse_ecc_strobe = fuse_ecc_strobe;

    if (fuse_ecc_strobe_clr) begin
      next_fuse_ecc_strobe = 1'b0;
    end
    else if (fuse_ecc_strobe_set) begin
      next_fuse_ecc_strobe = 1'b1;
    end
  end

  RDP_AFFR #( .NONSCAN(1) )aff_fuse_ecc_strobe (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(fuse_ecc_strobe_set||fuse_ecc_strobe_clr), .d(next_fuse_ecc_strobe), .q(fuse_ecc_strobe));


  always_comb begin
    next_fuse_address = fuse_address;

    if (fuse_address_en) begin
      next_fuse_address = func_fuse_address;
    end
  end

  RDP_AFFR #( .WIDTH($bits(fuse_address)) )  aff_fuse_address (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(fuse_address_en), .d(next_fuse_address),      .q(fuse_address));

  always_comb begin
    next_fuse_test_address = fuse_test_address;

    if (fuse_address_en) begin
      next_fuse_test_address = func_fuse_test_address;
    end
  end

  RDP_AFFR #( .WIDTH($bits(fuse_test_address)) )  aff_fuse_test_address (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(fuse_address_en), .d(next_fuse_test_address), .q(fuse_test_address));

  always_comb begin
    next_fuse_array_sel = fuse_array_sel;

    if (fuse_address_en) begin
      next_fuse_array_sel = func_fuse_array_sel;
    end
  end

  RDP_AFFR #( .WIDTH($bits(fuse_array_sel)) ) aff_fuse_array_sel (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(fuse_address_en), .d(next_fuse_array_sel), .q(fuse_array_sel));

  always_comb begin
    next_fuse_ecc_address = fuse_ecc_address;

    if (fuse_address_en) begin
      next_fuse_ecc_address = func_fuse_ecc_address;
    end
  end

  RDP_AFFR #( .WIDTH($bits(fuse_ecc_address)) )  aff_fuse_ecc_address (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(fuse_address_en), .d(next_fuse_ecc_address), .q(fuse_ecc_address));

  always_comb begin
    next_fuse_ecc_array_sel = fuse_ecc_array_sel;

    if (fuse_address_en) begin
      next_fuse_ecc_array_sel = func_fuse_ecc_array_sel;
    end
  end

  RDP_AFFR #( .WIDTH($bits(fuse_ecc_array_sel)) ) aff_fuse_ecc_array_sel (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(fuse_address_en), .d(next_fuse_ecc_array_sel), .q(fuse_ecc_array_sel));

  //Trace visibility singlas' flops
  RDP_AFFR #( .WIDTH($bits(trace_fuse_csb_o))) aff_trace_fuse_csb (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(1'b1), .d(fuse_csb), .q(trace_fuse_csb_o));
  RDP_AFFR #( .WIDTH($bits(trace_fuse_strobe_o))) aff_trace_fuse_strobe (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(1'b1), .d(fuse_strobe), .q(trace_fuse_strobe_o));
  RDP_AFFR #( .WIDTH($bits(trace_fuse_array_sel_o))) aff_trace_fuse_array_sel (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(1'b1), .d(fuse_array_sel), .q(trace_fuse_array_sel_o));
  RDP_AFFR #( .WIDTH($bits(trace_fuse_load_o))) aff_trace_fuse_load (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(1'b1), .d(fuse_load), .q(trace_fuse_load_o));
  RDP_AFFR #( .WIDTH($bits(trace_fuse_pgenb_o))) aff_trace_fuse_pgenb (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(1'b1), .d(fuse_pgenb), .q(trace_fuse_pgenb_o));
  RDP_AFFR #( .WIDTH($bits(trace_fuse_ps_o))) aff_trace_fuse_ps (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(1'b1), .d(fuse_ps), .q(trace_fuse_ps_o));
  RDP_AFFR #( .WIDTH($bits(trace_fuse_pd_o))) aff_trace_fuse_pd (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(1'b1), .d(fuse_pd), .q(trace_fuse_pd_o));
  RDP_AFFR #( .WIDTH($bits(trace_final_fuse_mr_o))) aff_trace_fuse_mr (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(1'b1), .d(final_fuse_mr), .q(trace_final_fuse_mr_o));
  RDP_AFFR #( .WIDTH($bits(trace_fuse_address_o))) aff_trace_fuse_address (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(1'b1), .d(fuse_address), .q(trace_fuse_address_o));
  RDP_AFFR #( .WIDTH($bits(trace_final_fuse_tcrs_o))) aff_trace_fuse_tcrs (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(1'b1), .d(final_fuse_tcrs), .q(trace_final_fuse_tcrs_o));
  RDP_AFFR #( .WIDTH($bits(trace_fuse_test_address_o))) aff_trace_fuse_test_address (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(1'b1), .d(fuse_test_address), .q(trace_fuse_test_address_o));
  RDP_AFFR #( .WIDTH($bits(trace_final_fuse_rsb_o))) aff_trace_fuse_rsb (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(1'b1), .d(final_fuse_rsb), .q(trace_final_fuse_rsb_o));
  RDP_AFFR #( .WIDTH($bits(trace_final_fuse_rwl_o))) aff_trace_fuse_rwl (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(1'b1), .d(final_fuse_rwl), .q(trace_final_fuse_rwl_o));
  RDP_AFFR #( .WIDTH($bits(trace_fuse_ecc_strobe_o))) aff_trace_fuse_ecc_strobe (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(1'b1), .d(fuse_ecc_strobe), .q(trace_fuse_ecc_strobe_o));
  RDP_AFFR #( .WIDTH($bits(trace_fuse_ecc_array_sel_o))) aff_trace_fuse_ecc_array_sel (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(1'b1), .d(fuse_ecc_array_sel), .q(trace_fuse_ecc_array_sel_o));
  RDP_AFFR #( .WIDTH($bits(trace_fuse_ecc_ps_o))) aff_trace_fuse_ecc_ps (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(1'b1), .d(fuse_ecc_ps), .q(trace_fuse_ecc_ps_o));
  RDP_AFFR #( .WIDTH($bits(trace_fuse_ecc_address_o))) aff_trace_fuse_ecc_address (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(1'b1), .d(fuse_ecc_address), .q(trace_fuse_ecc_address_o));
  RDP_AFFR #( .WIDTH($bits(trace_fuse_data_o))) aff_trace_fuse_data_address (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(1'b1), .d(fuse_data), .q(trace_fuse_data_o));
  RDP_AFFR #( .WIDTH($bits(trace_fuse_ecc_data_o))) aff_trace_fuse_ecc_data (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(1'b1), .d(fuse_ecc_data), .q(trace_fuse_ecc_data_o));


  // assign the strobe to specific array
  always_comb begin
    fuse_strobe_array     = '0;
    fuse_ecc_strobe_array = '0;
    fuse_ps_array         = '0;
    fuse_ecc_ps_array     = '0;

    // when initializing redundancy need to read all arrays
    if(cur_redundancy_init) begin
      fuse_strobe_array     = {FUSE_NUM_ARRAYS{fuse_strobe}};
      fuse_ecc_strobe_array = {FUSE_NUM_ECC_ARRAYS{fuse_ecc_strobe}};
      fuse_ps_array         = {FUSE_NUM_ARRAYS{fuse_ps}};
      fuse_ecc_ps_array     = {FUSE_NUM_ECC_ARRAYS{fuse_ecc_ps}};
    end
    else begin
      if (FUSE_NUM_ARRAYS>1) begin
        fuse_strobe_array[fuse_array_sel]         = fuse_strobe;
        fuse_ps_array[fuse_array_sel]             = fuse_ps;
      end
      else begin
        fuse_strobe_array                         = fuse_strobe;
        fuse_ps_array                             = fuse_ps;
      end
      if (FUSE_NUM_ECC_ARRAYS>1) begin
        fuse_ecc_strobe_array[fuse_ecc_array_sel] = fuse_ecc_strobe;
        fuse_ecc_ps_array[fuse_ecc_array_sel]     = fuse_ecc_ps;
      end
      else begin
        fuse_ecc_strobe_array                     = fuse_ecc_strobe;
        fuse_ecc_ps_array                         = fuse_ecc_ps;
      end
    end
  end

  // fuse data is valid when fuse_read_data_ready timing has completed
  // don't care about read data when doing redundancy initializaiton
  assign fuse_data_valid = fuse_read_data_ready && (!cur_redundancy_init);

  // for return data need to select between outputs of all fuse arrays
  always_comb begin
    next_fuse_data_out = fuse_data_out;

    if (fuse_data_valid) begin
      // if !ecc fall through to last else
      if ((cur_cmd.mode == FUSE_MODE_REDUNDANCY) && (cur_cmd.ecc)) begin
        if (FUSE_NUM_ECC_ARRAYS>1) begin
          next_fuse_data_out = fuse_ecc_data[fuse_ecc_array_sel];
        end
        else begin
          next_fuse_data_out = fuse_ecc_data;
        end
      end
      else if (cur_cmd.mode == FUSE_MODE_TEST && (cur_cmd.test_row_col_sel[1] == 1'b1)) begin // column test mode
        next_fuse_data_out = '0;
        if(cur_cmd.test_row_col_sel[0] == 1'b0) begin // 1st test column selected
          if(!cur_cmd.ecc) begin
            next_fuse_data_out[0] = fuse_data[fuse_array_sel][0];
          end
          else begin
            if (FUSE_NUM_ECC_ARRAYS>1) begin
              next_fuse_data_out[0] = fuse_ecc_data[fuse_ecc_array_sel][0];
            end
            else begin
              next_fuse_data_out[0] = fuse_ecc_data[0][0];
            end
          end
        end
        else begin                                    // 2nd test column selected
          if(!cur_cmd.ecc) begin
            next_fuse_data_out[0] = fuse_data[fuse_array_sel][31];
          end
          else begin
            if (FUSE_NUM_ECC_ARRAYS>1) begin
              next_fuse_data_out[0] = fuse_ecc_data[fuse_ecc_array_sel][31];
            end
            else begin
              next_fuse_data_out[0] = fuse_ecc_data[0][31];
            end
          end
        end
      end
      // if !ecc fall through to last else
      else if (cur_cmd.mode == FUSE_MODE_TEST && (cur_cmd.test_row_col_sel[1] == 1'b0) && (cur_cmd.ecc)) begin // test mode row
        if (FUSE_NUM_ECC_ARRAYS>1) begin
          next_fuse_data_out = fuse_ecc_data[fuse_ecc_array_sel];
        end
        else begin
          next_fuse_data_out = fuse_ecc_data;
        end
      end
      else if (FUSE_NUM_ARRAYS>1) begin
        next_fuse_data_out = fuse_data[fuse_array_sel];
      end
      else begin
        next_fuse_data_out = fuse_data;
      end
    end
  end

  RDP_AFFR #( .WIDTH($bits(fuse_data_out)) )  aff_fuse_data (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(fuse_data_valid), .d(next_fuse_data_out), .q(fuse_data_out));

  always_comb begin
    next_fuse_ecc_data_out = fuse_ecc_data_out;

    if (fuse_data_valid) begin
      if (cur_cmd.mode != FUSE_MODE_ARRAY) begin
        next_fuse_ecc_data_out = '0;
      end
      else if (FUSE_NUM_ECC_ARRAYS>1) begin
        next_fuse_ecc_data_out = fuse_ecc_data[fuse_ecc_array_sel];
      end
      else begin
        next_fuse_ecc_data_out = fuse_ecc_data;
      end
    end
  end

  RDP_AFFR #( .WIDTH($bits(fuse_ecc_data_out)) ) aff_fuse_ecc_data (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(fuse_data_valid), .d(next_fuse_ecc_data_out), .q(fuse_ecc_data_out));

  always_comb begin
    next_fuse_data_valid_out = fuse_data_valid;
  end

  RDP_AFFR  aff_fuse_data_valid (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(1'b1), .d(next_fuse_data_valid_out), .q(fuse_data_valid_out));

  always_comb begin
    next_fuse_write_complete_out = fuse_inc_write_count && ({{32-$bits(fuse_write_bit_count){1'b0}},fuse_write_bit_count} == cur_cmd_max_write_bit);
  end

  RDP_AFFR  aff_fuse_write_complete (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(1'b1), .d(next_fuse_write_complete_out), .q(fuse_write_complete_out));

  always_comb begin
    next_fuse_data_chunk_sel = fuse_data_chunk_sel;

    // need to determine with 16b chunk of data from 32b fuse read is needed
    if (fuse_data_valid &&
        (cur_cmd.mode == FUSE_MODE_TEST) && next_fuse_test_address[1]) begin // selected test column
      next_fuse_data_chunk_sel = 1'b0;
    end
    else if (fuse_data_valid) begin
      next_fuse_data_chunk_sel = next_fuse_address[12];
    end
  end

  RDP_AFFR  aff_fuse_data_chunk_sel (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(fuse_data_valid), .d(next_fuse_data_chunk_sel), .q(fuse_data_chunk_sel));

  always_comb begin
    next_fuse_ecc_data_chunk_sel = fuse_ecc_data_chunk_sel;

    // need to determine with 8b chunk of data from 32b fuse read is needed
    if (fuse_data_valid &&
        (cur_cmd.mode == FUSE_MODE_TEST) && next_fuse_test_address[1]) begin // selected 1st test column
      next_fuse_ecc_data_chunk_sel = 2'b0;
    end
    else if (fuse_data_valid) begin
      next_fuse_ecc_data_chunk_sel = next_fuse_ecc_address[12:11];
    end
  end

  RDP_AFFR #( .WIDTH($bits(fuse_ecc_data_chunk_sel)) )  aff_fuse_ecc_data_chunk_sel (.clk(clk_efuse_i), .rst_l(rst_efuse_n), .en(fuse_data_valid), .d(next_fuse_ecc_data_chunk_sel), .q(fuse_ecc_data_chunk_sel));

  assign fuse_read_return_data = fuse_data_chunk_sel ? fuse_data_out[31:16] : fuse_data_out[15:0];

  always_comb begin : fuse_ecc_return_data
    fuse_read_return_ecc = '0;

    // only care about 6 bits of ecc data in each read
    unique case (fuse_ecc_data_chunk_sel)
      2'b00: fuse_read_return_ecc = fuse_ecc_data_out[7:0];
      2'b01: fuse_read_return_ecc = fuse_ecc_data_out[15:8];
      2'b10: fuse_read_return_ecc = fuse_ecc_data_out[23:16];
      2'b11: fuse_read_return_ecc = fuse_ecc_data_out[31:24];
    endcase

  end

  assign err_o = NoError; // (neal) no errors from fuse macro
                          // ecc errors are detected in next level of hierarchy

// outgoing commands go through clock crossing
RDP_ASYNC_FIFO
  #(
    .NONSCAN_WR (1),
    .DEBUGEN_WR (0),
    .ENTRIES (8),
    .DATA_WIDTH (Width+EccWidth)
  )
  outgoing_response_fifo
  (
    // global
   .wrClk(clk_efuse_i),
   .rdClk(clk_i),
   .wrRst_l(rst_efuse_n),
   .rdRst_l(rst_ni),

   .rdRxRdy(),
   .rdFifoDbgBus(),
   .rdFifoDbgClkDis(1'b1),
   .wrTxRdy(),
   .wrFifoDbgBus(),
   .wrFifoDbgClkDis(1'b0),
   .tston_rd(1'b0),
   .tston_wr(1'b0),
   .wrActive(1'b1),
   .rdActive(1'b1),

    // write port
   .wrReady(),                    ///< FIFO can accept a write, Not FULL
   .wrAF(),                       ///< FIFO can accept a write, But its Almost Full
   .wrEn(fuse_data_valid_out || fuse_write_complete_out),                  ///< Write the data wrData to FIFO
   .wrFault(),                    ///< '1' when wrReady is '0' and wrEn is '1'
   .wrData({fuse_read_return_ecc, fuse_read_return_data}),         ///< Data to write (valid when wrEn is high)
    // read port
   .rdValid(outgoing_fifo_valid), ///< Read data available, Not EMPTY
   .rdEn(fuse_send_response),        ///< Pop the data present on rdData from the fifo
   .rdFault(),                    ///< '1' when rdValid is '0' and rdEn is '1'
   .rdData(rdata_o)               ///< Data currently first on output (valid when rdValid)
  );


  // send response signal is used to pop outgoing command fifo
  // and signal valid to the OTP
  assign fuse_send_response = outgoing_fifo_valid;

  assign rvalid_o = fuse_send_response;

  always_comb begin
    final_fuse_mr           = fuse_mr;
    final_fuse_tcrs         = fuse_tcrs;
    final_fuse_rsb          = fuse_rsb;
    final_fuse_rwl          = fuse_rwl;


    if (mbist_sel_i) begin
      final_fuse_mr    = mbist_fuse_mr_i;
      final_fuse_tcrs  = '0;
      final_fuse_rsb   = mbist_fuse_rsb_i;
      final_fuse_rwl   = mbist_fuse_rwl_i;
    end


    for (int i = 0; i<FUSE_NUM_ARRAYS; i++) begin
      final_fuse_strobe_array[i] = fuse_strobe_array[i];
      final_fuse_ps_array[i]     = fuse_ps_array[i];
      final_fuse_address[i]      = fuse_address;
      final_fuse_test_address[i] = fuse_test_address;
      final_fuse_csb_array[i]    = fuse_csb;
      final_fuse_load_array[i]   = fuse_load;
      final_fuse_pgenb_array[i]  = fuse_pgenb;
      final_fuse_pd_array[i]     = fuse_pd;

      if (FUSE_MBIST_EN && (i >= FUSE_MBIST_ARRAY_BASE) && (i<(FUSE_MBIST_ARRAY_BASE+FUSE_MBIST_ARRAY_SIZE))) begin
        if (mbist_sel_i) begin
          final_fuse_strobe_array [i] = mbist_fuse_strobe_array_i [i-FUSE_MBIST_ARRAY_BASE];
          final_fuse_ps_array     [i] = mbist_fuse_ps_i           [i-FUSE_MBIST_ARRAY_BASE];
          final_fuse_address      [i] = mbist_fuse_address_i      [i-FUSE_MBIST_ARRAY_BASE];
          final_fuse_test_address [i] = '0;
          final_fuse_csb_array    [i] = mbist_fuse_csb_i          [i-FUSE_MBIST_ARRAY_BASE];
          final_fuse_load_array   [i] = mbist_fuse_load_i         [i-FUSE_MBIST_ARRAY_BASE];
          final_fuse_pgenb_array  [i] = mbist_fuse_pgenb_i        [i-FUSE_MBIST_ARRAY_BASE];
          final_fuse_pd_array     [i] = mbist_fuse_pd_i           [i-FUSE_MBIST_ARRAY_BASE];
        end
      end
    end


    for (int i = 0; i<FUSE_NUM_ECC_ARRAYS; i++) begin
      final_fuse_ecc_strobe_array[i] = fuse_ecc_strobe_array[i];
      final_fuse_ecc_ps_array[i]     = fuse_ecc_ps_array[i];
      final_fuse_ecc_address[i]      = fuse_ecc_address;
      final_fuse_test_ecc_address[i] = fuse_test_address;
      final_fuse_ecc_csb_array[i]    = fuse_csb;
      final_fuse_ecc_load_array[i]   = fuse_load;
      final_fuse_ecc_pgenb_array[i]  = fuse_pgenb;
      final_fuse_ecc_pd_array[i]     = fuse_pd;

      if (FUSE_MBIST_EN && (i >= FUSE_MBIST_ECC_ARRAY_BASE) && (i<(FUSE_MBIST_ECC_ARRAY_BASE+FUSE_MBIST_ECC_ARRAY_SIZE))) begin
        if (mbist_sel_i) begin
          final_fuse_ecc_strobe_array [i] = mbist_fuse_strobe_array_i [FUSE_MBIST_ARRAY_SIZE+(i-FUSE_MBIST_ECC_ARRAY_BASE)];
          final_fuse_ecc_ps_array     [i] = mbist_fuse_ps_i           [FUSE_MBIST_ARRAY_SIZE+(i-FUSE_MBIST_ECC_ARRAY_BASE)];
          final_fuse_ecc_address      [i] = mbist_fuse_address_i      [FUSE_MBIST_ARRAY_SIZE+(i-FUSE_MBIST_ECC_ARRAY_BASE)];
          final_fuse_test_ecc_address [i] = '0;
          final_fuse_ecc_csb_array    [i] = mbist_fuse_csb_i          [FUSE_MBIST_ARRAY_SIZE+(i-FUSE_MBIST_ECC_ARRAY_BASE)];
          final_fuse_ecc_load_array   [i] = mbist_fuse_load_i         [FUSE_MBIST_ARRAY_SIZE+(i-FUSE_MBIST_ECC_ARRAY_BASE)];
          final_fuse_ecc_pgenb_array  [i] = mbist_fuse_pgenb_i        [FUSE_MBIST_ARRAY_SIZE+(i-FUSE_MBIST_ECC_ARRAY_BASE)];
          final_fuse_ecc_pd_array     [i] = mbist_fuse_pd_i           [FUSE_MBIST_ARRAY_SIZE+(i-FUSE_MBIST_ECC_ARRAY_BASE)];
        end
      end
    end
  end

  // need to use assign statements because mbist_fuse_data_o and mbist_fuse_rf_data_o are wires
  generate
    if(FUSE_MBIST_EN) begin : gen_fuse_mbist_en_o
      // assumes that its always {ecc, data} if using both arrays
      for (g_i = FUSE_MBIST_ARRAY_BASE; g_i<(FUSE_MBIST_ARRAY_BASE+FUSE_MBIST_ARRAY_SIZE); g_i++) begin : gen_data_array
        assign mbist_fuse_data_o    [g_i-FUSE_MBIST_ARRAY_BASE] = fuse_data    [g_i];
        assign mbist_fuse_rf_data_o [g_i-FUSE_MBIST_ARRAY_BASE] = fuse_rf_data [g_i];
      end

      for (g_i = FUSE_MBIST_ECC_ARRAY_BASE; g_i<(FUSE_MBIST_ECC_ARRAY_BASE+FUSE_MBIST_ECC_ARRAY_SIZE); g_i++) begin : gen_ecc_data_array
        assign mbist_fuse_data_o    [FUSE_MBIST_ARRAY_SIZE+(g_i-FUSE_MBIST_ECC_ARRAY_BASE)] = fuse_ecc_data    [g_i];
        assign mbist_fuse_rf_data_o [FUSE_MBIST_ARRAY_SIZE+(g_i-FUSE_MBIST_ECC_ARRAY_BASE)] = fuse_ecc_rf_data [g_i];
      end
    end
    else begin : gen_no_fuse_mbist_en
      assign mbist_fuse_data_o    = '0;
      assign mbist_fuse_rf_data_o = '0;
    end
  endgenerate

  generate
    for(g_i=0;g_i<FUSE_NUM_ARRAYS;g_i++) begin : fuse_data_arrays
      // efuse macro instantiation for fuse data arrays
      TEF03FE256X32HD18_PHRM u_fuse_data (
                      .CSB(final_fuse_csb_array[g_i]),
                      .STROBE(final_fuse_strobe_array[g_i]),
                      .LOAD(final_fuse_load_array[g_i]),
                      .PGENB(final_fuse_pgenb_array[g_i]),
                      .PS(final_fuse_ps_array[g_i]),
                      .PD(final_fuse_pd_array[g_i]),
                      .MR(final_fuse_mr),

                      .A0(final_fuse_address[g_i][0]),
                      .A1(final_fuse_address[g_i][1]),
                      .A2(final_fuse_address[g_i][2]),
                      .A3(final_fuse_address[g_i][3]),
                      .A4(final_fuse_address[g_i][4]),
                      .A5(final_fuse_address[g_i][5]),
                      .A6(final_fuse_address[g_i][6]),
                      .A7(final_fuse_address[g_i][7]),
                      .A8(final_fuse_address[g_i][8]),
                      .A9(final_fuse_address[g_i][9]),
                      .A10(final_fuse_address[g_i][10]),
                      .A11(final_fuse_address[g_i][11]),
                      .A12(final_fuse_address[g_i][12]),

                      .TRCS(final_fuse_tcrs),
                      .AT1(final_fuse_test_address[g_i][1]),
                      .AT0(final_fuse_test_address[g_i][0]),

                      .RSB(final_fuse_rsb),
                      .RWL(final_fuse_rwl),
                      .RF0(fuse_rf_data[g_i][0]),
                      .RF1(fuse_rf_data[g_i][1]),
                      .RF2(fuse_rf_data[g_i][2]),
                      .RF3(fuse_rf_data[g_i][3]),
                      .RF4(fuse_rf_data[g_i][4]),
                      .RF5(fuse_rf_data[g_i][5]),
                      .RF6(fuse_rf_data[g_i][6]),
                      .RF7(fuse_rf_data[g_i][7]),

                      .Q0(fuse_data[g_i][0]),
                      .Q1(fuse_data[g_i][1]),
                      .Q2(fuse_data[g_i][2]),
                      .Q3(fuse_data[g_i][3]),
                      .Q4(fuse_data[g_i][4]),
                      .Q5(fuse_data[g_i][5]),
                      .Q6(fuse_data[g_i][6]),
                      .Q7(fuse_data[g_i][7]),
                      .Q8(fuse_data[g_i][8]),
                      .Q9(fuse_data[g_i][9]),
                      .Q10(fuse_data[g_i][10]),
                      .Q11(fuse_data[g_i][11]),
                      .Q12(fuse_data[g_i][12]),
                      .Q13(fuse_data[g_i][13]),
                      .Q14(fuse_data[g_i][14]),
                      .Q15(fuse_data[g_i][15]),
                      .Q16(fuse_data[g_i][16]),
                      .Q17(fuse_data[g_i][17]),
                      .Q18(fuse_data[g_i][18]),
                      .Q19(fuse_data[g_i][19]),
                      .Q20(fuse_data[g_i][20]),
                      .Q21(fuse_data[g_i][21]),
                      .Q22(fuse_data[g_i][22]),
                      .Q23(fuse_data[g_i][23]),
                      .Q24(fuse_data[g_i][24]),
                      .Q25(fuse_data[g_i][25]),
                      .Q26(fuse_data[g_i][26]),
                      .Q27(fuse_data[g_i][27]),
                      .Q28(fuse_data[g_i][28]),
                      .Q29(fuse_data[g_i][29]),
                      .Q30(fuse_data[g_i][30]),
                      .Q31(fuse_data[g_i][31])
                    );
    end
  endgenerate

  generate
    for(g_i=0;g_i<FUSE_NUM_ECC_ARRAYS;g_i++) begin : fuse_ecc_arrays
      // efuse macro instantiation for fuse ecc data arrays
      TEF03FE256X32HD18_PHRM u_fuse_ecc_data (
                      .CSB(final_fuse_ecc_csb_array[g_i]),
                      .STROBE(final_fuse_ecc_strobe_array[g_i]),
                      .LOAD(final_fuse_ecc_load_array[g_i]),
                      .PGENB(final_fuse_ecc_pgenb_array[g_i]),
                      .PS(final_fuse_ecc_ps_array[g_i]),
                      .PD(final_fuse_ecc_pd_array[g_i]),
                      .MR(final_fuse_mr),

                      .A0(final_fuse_ecc_address[g_i][0]),
                      .A1(final_fuse_ecc_address[g_i][1]),
                      .A2(final_fuse_ecc_address[g_i][2]),
                      .A3(final_fuse_ecc_address[g_i][3]),
                      .A4(final_fuse_ecc_address[g_i][4]),
                      .A5(final_fuse_ecc_address[g_i][5]),
                      .A6(final_fuse_ecc_address[g_i][6]),
                      .A7(final_fuse_ecc_address[g_i][7]),
                      .A8(final_fuse_ecc_address[g_i][8]),
                      .A9(final_fuse_ecc_address[g_i][9]),
                      .A10(final_fuse_ecc_address[g_i][10]),
                      .A11(final_fuse_ecc_address[g_i][11]),
                      .A12(final_fuse_ecc_address[g_i][12]),

                      .TRCS(final_fuse_tcrs),
                      .AT1(final_fuse_test_ecc_address[g_i][1]),
                      .AT0(final_fuse_test_ecc_address[g_i][0]),

                      .RSB(final_fuse_rsb),
                      .RWL(final_fuse_rwl),
                      .RF0(fuse_ecc_rf_data[g_i][0]),
                      .RF1(fuse_ecc_rf_data[g_i][1]),
                      .RF2(fuse_ecc_rf_data[g_i][2]),
                      .RF3(fuse_ecc_rf_data[g_i][3]),
                      .RF4(fuse_ecc_rf_data[g_i][4]),
                      .RF5(fuse_ecc_rf_data[g_i][5]),
                      .RF6(fuse_ecc_rf_data[g_i][6]),
                      .RF7(fuse_ecc_rf_data[g_i][7]),

                      .Q0(fuse_ecc_data[g_i][0]),
                      .Q1(fuse_ecc_data[g_i][1]),
                      .Q2(fuse_ecc_data[g_i][2]),
                      .Q3(fuse_ecc_data[g_i][3]),
                      .Q4(fuse_ecc_data[g_i][4]),
                      .Q5(fuse_ecc_data[g_i][5]),
                      .Q6(fuse_ecc_data[g_i][6]),
                      .Q7(fuse_ecc_data[g_i][7]),
                      .Q8(fuse_ecc_data[g_i][8]),
                      .Q9(fuse_ecc_data[g_i][9]),
                      .Q10(fuse_ecc_data[g_i][10]),
                      .Q11(fuse_ecc_data[g_i][11]),
                      .Q12(fuse_ecc_data[g_i][12]),
                      .Q13(fuse_ecc_data[g_i][13]),
                      .Q14(fuse_ecc_data[g_i][14]),
                      .Q15(fuse_ecc_data[g_i][15]),
                      .Q16(fuse_ecc_data[g_i][16]),
                      .Q17(fuse_ecc_data[g_i][17]),
                      .Q18(fuse_ecc_data[g_i][18]),
                      .Q19(fuse_ecc_data[g_i][19]),
                      .Q20(fuse_ecc_data[g_i][20]),
                      .Q21(fuse_ecc_data[g_i][21]),
                      .Q22(fuse_ecc_data[g_i][22]),
                      .Q23(fuse_ecc_data[g_i][23]),
                      .Q24(fuse_ecc_data[g_i][24]),
                      .Q25(fuse_ecc_data[g_i][25]),
                      .Q26(fuse_ecc_data[g_i][26]),
                      .Q27(fuse_ecc_data[g_i][27]),
                      .Q28(fuse_ecc_data[g_i][28]),
                      .Q29(fuse_ecc_data[g_i][29]),
                      .Q30(fuse_ecc_data[g_i][30]),
                      .Q31(fuse_ecc_data[g_i][31])
                    );
    end
  endgenerate

logic unused_ecc_max_bits;
assign unused_ecc_max_bits = ^(cur_cmd_ecc_max_write_bit[31:4]);

generate
  if (FUSE_MBIST_EN == 0) begin : gen_no_mbist
    logic unused_mbist_signals;

    assign unused_mbist_signals = ^{fuse_rf_data,
                                    fuse_ecc_rf_data,
                                    mbist_fuse_ps_i,
                                    mbist_fuse_csb_i,
                                    mbist_fuse_load_i,
                                    mbist_fuse_pgenb_i,
                                    mbist_fuse_pd_i,
                                    mbist_fuse_strobe_array_i,
                                    mbist_fuse_address_i};

  end
endgenerate

  ////////////////
  // Assertions //
  ////////////////

// Check that the otp_ctrl FSMs only issue legal commands to the wrapper.

RVP_ASSERT_ALWAYS
  #(.MSG("invalid write configuration"))
  write_config_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en((|fuse_strobe_array) && (cur_cmd.op == FUSE_OP_WRITE)),
   .expr(((!fuse_pd) && fuse_ps && (!fuse_csb) && (!fuse_pgenb) && (!fuse_load))));

RVP_ASSERT_ALWAYS
  #(.MSG("invalid read configuration"))
  read_config_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en((|fuse_strobe_array) && (cur_cmd.op == FUSE_OP_READ)),
   .expr(((!fuse_pd) && (!fuse_ps) && (!fuse_csb) && fuse_pgenb && fuse_load )));

RVP_ASSERT_NEVER
  #(.MSG("PS and PD not allowed to prevent uninteded programming"))
  ps_and_pd_invalid_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en(rst_efuse_n),
   .expr(fuse_ps && fuse_pd));

RVP_ASSERT_ALWAYS
  #(.MSG("TRCS must be set in test mode"))
  test_mode_config_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en((|fuse_strobe_array) && (cur_cmd.mode == FUSE_MODE_TEST)),
   .expr(fuse_tcrs));

RVP_ASSERT_ALWAYS
  #(.MSG("redundancy should always be enabled"))
  redundancy_config_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en(|fuse_strobe_array),
   .expr(!fuse_rsb));

RVP_ASSERT_ALWAYS
  #(.MSG("must do redundancy reads after INIT"))
  redundancy_init_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en((fuse_ctl_state == FUSE_INIT_ST) && (next_fuse_ctl_state == FUSE_READ_SETUP_ST)),
   .expr(next_cmd.mode == FUSE_MODE_REDUNDANCY));

// assertions ensuring valid state transitions
RVP_ASSERT_ALWAYS
  #(.MSG("INIT state transition invalid"))
  init_transition_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en((fuse_ctl_state == FUSE_INIT_ST) && (next_fuse_ctl_state != FUSE_INIT_ST)),
   .expr(next_fuse_ctl_state == FUSE_READ_SETUP_ST));

RVP_ASSERT_ALWAYS
  #(.MSG("READ_SETUP state transition invalid"))
  read_setup_transition_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en((fuse_ctl_state == FUSE_READ_SETUP_ST) && (next_fuse_ctl_state != FUSE_READ_SETUP_ST)),
   .expr(next_fuse_ctl_state == FUSE_READ_READY_ST));

RVP_ASSERT_ALWAYS
  #(.MSG("READ_READY state transition invalid"))
  read_ready_transition_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en((fuse_ctl_state == FUSE_READ_READY_ST) && (next_fuse_ctl_state != FUSE_READ_READY_ST)),
   .expr((next_fuse_ctl_state == FUSE_READ_ST) ||
         (next_fuse_ctl_state == FUSE_READ_HOLD_ST) ||
         (next_fuse_ctl_state == FUSE_POWER_DOWN_ST)));

RVP_ASSERT_ALWAYS
  #(.MSG("READ state transition invalid"))
  read_transition_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en((fuse_ctl_state == FUSE_READ_ST) && (next_fuse_ctl_state != FUSE_READ_ST)),
   .expr(next_fuse_ctl_state == FUSE_READ_READY_ST));

RVP_ASSERT_ALWAYS
  #(.MSG("READ_HOLD state transition invalid"))
  read_hold_transition_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en((fuse_ctl_state == FUSE_READ_HOLD_ST) && (next_fuse_ctl_state != FUSE_READ_HOLD_ST)),
   .expr((next_fuse_ctl_state == FUSE_READ_SETUP_ST) ||
         (next_fuse_ctl_state == FUSE_WRITE_SETUP_ST) ||
         (next_fuse_ctl_state == FUSE_INIT_ST)));

RVP_ASSERT_ALWAYS
  #(.MSG("WRITE_SETUP state transition invalid"))
  write_setup_transition_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en((fuse_ctl_state == FUSE_WRITE_SETUP_ST) && (next_fuse_ctl_state != FUSE_WRITE_SETUP_ST)),
   .expr(next_fuse_ctl_state == FUSE_WRITE_READY_ST));

RVP_ASSERT_ALWAYS
  #(.MSG("WRITE_READY state transition invalid"))
  write_ready_transition_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en((fuse_ctl_state == FUSE_WRITE_READY_ST) && (next_fuse_ctl_state != FUSE_WRITE_READY_ST)),
   .expr((next_fuse_ctl_state == FUSE_WRITE_ST) ||
         (next_fuse_ctl_state == FUSE_WRITE_HOLD_ST) ||
         (next_fuse_ctl_state == FUSE_POWER_DOWN_ST)));

RVP_ASSERT_ALWAYS
  #(.MSG("WRITE state transition invalid"))
  write_transition_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en((fuse_ctl_state == FUSE_WRITE_ST) && (next_fuse_ctl_state != FUSE_WRITE_ST)),
   .expr(next_fuse_ctl_state == FUSE_WRITE_READY_ST));

RVP_ASSERT_ALWAYS
  #(.MSG("WRITE_HOLD state transition invalid"))
  write_hold_transition_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en((fuse_ctl_state == FUSE_WRITE_HOLD_ST) && (next_fuse_ctl_state != FUSE_WRITE_HOLD_ST)),
   .expr((next_fuse_ctl_state == FUSE_READ_SETUP_ST) ||
         (next_fuse_ctl_state == FUSE_WRITE_SETUP_ST) ||
         (next_fuse_ctl_state == FUSE_INIT_ST)));

RVP_ASSERT_ALWAYS
  #(.MSG("STANDBY state transition invalid"))
  standby_transition_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en((fuse_ctl_state == FUSE_POWER_DOWN_ST) && (next_fuse_ctl_state != FUSE_POWER_DOWN_ST)),
   .expr(next_fuse_ctl_state == FUSE_INIT_ST));

RVP_ASSERT_NEVER
  #(.MSG("should not try to set and clear PD in same cycle"))
  pd_set_and_clear_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en(1'b1),
   .expr(fuse_pd_clr && fuse_pd_set));

RVP_ASSERT_NEVER
  #(.MSG("should not try to set and clear PS in same cycle"))
  ps_set_and_clear_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en(1'b1),
   .expr(fuse_ps_clr && fuse_ps_set));

RVP_ASSERT_NEVER
  #(.MSG("should not try to set and clear ecc PS in same cycle"))
  ecc_ps_set_and_clear_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en(1'b1),
   .expr(fuse_ecc_ps_clr && fuse_ecc_ps_set));

RVP_ASSERT_NEVER
  #(.MSG("should not try to set and clear CSB in same cycle"))
  csb_set_and_clear_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en(1'b1),
   .expr(fuse_csb_clr && fuse_csb_set));

RVP_ASSERT_NEVER
  #(.MSG("should not try to set and clear MR in same cycle"))
  mr_set_and_clear_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en(1'b1),
   .expr(fuse_mr_clr && fuse_mr_set));

RVP_ASSERT_NEVER
  #(.MSG("should not try to set and clear PGENB in same cycle"))
  pgenb_set_and_clear_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en(1'b1),
   .expr(fuse_pgenb_clr && fuse_pgenb_set));

RVP_ASSERT_NEVER
  #(.MSG("should not try to set and clear LOAD in same cycle"))
  load_set_and_clear_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en(1'b1),
   .expr(fuse_load_clr && fuse_load_set));

RVP_ASSERT_NEVER
  #(.MSG("should not try to set and clear RSB in same cycle"))
  rsb_set_and_clear_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en(1'b1),
   .expr(fuse_rsb_clr && fuse_rsb_set));

RVP_ASSERT_NEVER
  #(.MSG("should not try to set and clear RWL in same cycle"))
  rwl_set_and_clear_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en(1'b1),
   .expr(fuse_rwl_clr && fuse_rwl_set));

RVP_ASSERT_NEVER
  #(.MSG("should not try to set and clear TCRS in same cycle"))
  tcrs_set_and_clear_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en(1'b1),
   .expr(fuse_tcrs_clr && fuse_tcrs_set));

RVP_ASSERT_NEVER
  #(.MSG("should not try to set and clear STROBE in same cycle"))
  strobe_set_and_clear_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en(1'b1),
   .expr(fuse_strobe_clr && fuse_strobe_set));

RVP_ASSERT_NEVER
  #(.MSG("should not try to set and clear ECC_STROBE in same cycle"))
  ecc_strobe_set_and_clear_check
  (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
   .en(1'b1),
   .expr(fuse_ecc_strobe_clr && fuse_ecc_strobe_set));

// TODO (neal) test RVP_ASSERT_ALWAYS
// TODO (neal) test   #(.MSG("READ timing param"))
// TODO (neal) test   read_timing_param_check
// TODO (neal) test   (.clk(clk_efuse_i), .rst_l(rst_efuse_n),
// TODO (neal) test    .en(fuse_ctl_state == FUSE_INIT_ST),  // only need to check this at the beginning after reset
// TODO (neal) test    .expr((FUSE_STATE_COUNT_BITS'(tsur_a_cycles_i) +
// TODO (neal) test           FUSE_STATE_COUNT_BITS'(trd_m_cycles_i) +
// TODO (neal) test           FUSE_STATE_COUNT_BITS'(thr_a_cycles_i)) >
// TODO (neal) test          (FUSE_STATE_COUNT_BITS'(tsur_a_cycles_i) +
// TODO (neal) test           FUSE_STATE_COUNT_BITS'(tsq_m_cycles_i) +
// TODO (neal) test           FUSE_STATE_COUNT_BITS'(data_capture_cycles_i))));


endmodule : rivos_tsmc_fuse_wrapper
