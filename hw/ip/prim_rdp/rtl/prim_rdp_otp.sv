// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

`include "prim_assert.sv"

module prim_rdp_otp
  import prim_otp_pkg::*;
#(
  // Native OTP word size. This determines the size_i granule.
  parameter  int Width         = 16,
  parameter  int Depth         = 1024,
  // This determines the maximum number of native words that
  // can be transferred accross the interface in one cycle.
  parameter  int SizeWidth     = 2,
  // Width of the power sequencing signal.
  parameter  int PwrSeqWidth   = 2,
  // Number of Test TL-UL words
  parameter  int TlDepth       = 16,  // [Rivos]
  // Width of vendor-specific test control signal
  parameter  int TestCtrlWidth   = 32,
  parameter  int TestStatusWidth = 32,
  parameter  int TestVectWidth   = 8,
  // Derived parameters
  localparam int AddrWidth     = prim_util_pkg::vbits(Depth),
  localparam int IfWidth       = 2**SizeWidth*Width,
  // VMEM file to initialize the memory with
  parameter      MemInitFile   = "",
  // Vendor test partition offset and size (both in bytes)
  parameter  int VendorTestOffset = 0,
  parameter  int VendorTestSize   = 0,

  parameter  int FUSE_MBIST_EN                     = 0,
  parameter  int FUSE_MBIST_ARRAY_BASE             = 0,
  parameter  int FUSE_MBIST_ARRAY_SIZE             = 0,
  parameter  int FUSE_MBIST_ECC_ARRAY_BASE         = 0,
  parameter  int FUSE_MBIST_ECC_ARRAY_SIZE         = 0,
  parameter  int FUSE_NUM_MBIST_ARRAYS             = 1,   // (neal) default is 1 for otp, but only mbist to nsefuse
  parameter  int FUSE_RF_DATA_WIDTH                = 8,
  // tsmc fuse macro wrapper parameters
  parameter  int FUSE_NUM_ARRAYS                   = 16,   // (neal) default is the value we want for otp_ctrl
  parameter  int FUSE_ADDR_WIDTH                   = 13,
  parameter  int FUSE_TEST_ADDR_WIDTH              = 2,
  parameter  int FUSE_DATA_WIDTH                   = 32,
  localparam int FUSE_ARRAY_SEL_WIDTH     = (FUSE_NUM_ARRAYS > 1) ? $clog2(FUSE_NUM_ARRAYS) : 1,
  localparam int FUSE_NUM_ECC_ARRAYS      = (FUSE_NUM_ARRAYS > 1) ? (FUSE_NUM_ARRAYS >> 1) : 1,
  localparam int FUSE_ECC_ARRAY_SEL_WIDTH = (FUSE_NUM_ECC_ARRAYS > 1) ? $clog2(FUSE_NUM_ECC_ARRAYS) : 1
) (
  input  logic                   clk_i,
  input  logic                   rst_ni,
  input  logic                   clk_efuse_i,
  // Observability
  input ast_pkg::ast_obs_ctrl_t obs_ctrl_i,
  output logic [7:0] otp_obs_o,
  // Macro-specific power sequencing signals to/from AST
  output logic [PwrSeqWidth-1:0] pwr_seq_o,
  input  logic [PwrSeqWidth-1:0] pwr_seq_h_i,
  // External programming voltage
  inout wire                     ext_voltage_io,
  // Test interfaces
  input  logic [TestCtrlWidth-1:0]   test_ctrl_i,
  output logic [TestStatusWidth-1:0] test_status_o,
  output logic [TestVectWidth-1:0]   test_vect_o,
  input  tlul_pkg::tl_h2d_t          test_tl_i,
  output tlul_pkg::tl_d2h_t          test_tl_o,
  // Other DFT signals
  input prim_mubi_pkg::mubi4_t   scanmode_i,  // Scan Mode input
  input  logic                   scan_en_i,   // Scan Shift
  input  logic                   scan_rst_ni, // Scan Reset
  // Alert indication (to be connected to alert sender in the instantiating IP)
  output logic                   fatal_alert_o,
  output logic                   recov_alert_o,
  // Ready valid handshake for read/write command
  output logic                   ready_o,
  input  logic                   valid_i,
  // #(Native words)-1, e.g. size == 0 for 1 native word.
  input [SizeWidth-1:0]          size_i,
  // 000: read, 001: write, 010: read raw, 011: write raw, 111: init
  input  cmd_e                   cmd_i,
  input  logic [AddrWidth-1:0]   addr_i,
  input  logic [IfWidth-1:0]     wdata_i,
  input  logic                   sel_wr_timing_i,
  // Response channel
  output logic                   valid_o,
  output logic [IfWidth-1:0]     rdata_o,
  output err_e                   err_o,

  // TSMC mode, needed for DAI addr selection
  output logic [1:0]             macro_mode_o,

  input logic                    tstrst_i,
  input logic                    tstrstsel_i,

  input logic                                       mbist_sel_i, // select mbist mode
  input logic [(FUSE_NUM_MBIST_ARRAYS-1):0]         mbist_fuse_csb_i,
  input logic [(FUSE_NUM_MBIST_ARRAYS-1):0]         mbist_fuse_load_i,
  input logic [(FUSE_NUM_MBIST_ARRAYS-1):0]         mbist_fuse_pgenb_i,
  input logic [(FUSE_NUM_MBIST_ARRAYS-1):0]         mbist_fuse_ps_i,
  input logic [(FUSE_NUM_MBIST_ARRAYS-1):0]         mbist_fuse_pd_i,
  input logic                                       mbist_fuse_mr_i,
  input logic                                       mbist_fuse_rwl_i,
  input logic                                       mbist_fuse_rsb_i,
  input logic [(FUSE_NUM_MBIST_ARRAYS-1):0]         mbist_fuse_strobe_array_i,
  input logic [(FUSE_NUM_MBIST_ARRAYS-1):0][(12):0] mbist_fuse_address_i,      // (neal) hardcoding mbist port to match localparams in rivos_tsmc_fuse_wrapper.sv
  output wire [(FUSE_NUM_MBIST_ARRAYS-1):0][(7):0]  mbist_fuse_rf_data_o,      // (neal) hardcoding mbist port to match localparams in rivos_tsmc_fuse_wrapper.sv
  output wire [(FUSE_NUM_MBIST_ARRAYS-1):0][(31):0] mbist_fuse_data_o,         // (neal) hardcoding mbist port to match localparams in rivos_tsmc_fuse_wrapper.sv
  output logic                                      reset_allowed_o,

  input  logic                                                trace_en_i,
  output logic                                                trace_final_fuse_mr_o,  // From u_fuse_wrapper of rivos_tsmc_fuse_wrapper.v
  output logic                                                trace_final_fuse_rsb_o, // From u_fuse_wrapper of rivos_tsmc_fuse_wrapper.v
  output logic                                                trace_final_fuse_rwl_o, // From u_fuse_wrapper of rivos_tsmc_fuse_wrapper.v
  output logic                                                trace_final_fuse_tcrs_o,// From u_fuse_wrapper of rivos_tsmc_fuse_wrapper.v
  output [(FUSE_ADDR_WIDTH-1):0]                              trace_fuse_address_o,// From u_fuse_wrapper of rivos_tsmc_fuse_wrapper.v
  output [(FUSE_ARRAY_SEL_WIDTH-1):0]                         trace_fuse_array_sel_o,// From u_fuse_wrapper of rivos_tsmc_fuse_wrapper.v
  output logic                                                trace_fuse_csb_o,       // From u_fuse_wrapper of rivos_tsmc_fuse_wrapper.v
  output [(FUSE_NUM_ARRAYS-1):0][(FUSE_DATA_WIDTH-1):0]       trace_fuse_data_o,      // From u_fuse_wrapper of rivos_tsmc_fuse_wrapper.v
  output [(FUSE_ADDR_WIDTH-1):0]                              trace_fuse_ecc_address_o,// From u_fuse_wrapper of rivos_tsmc_fuse_wrapper.v
  output [(FUSE_ECC_ARRAY_SEL_WIDTH-1):0]                     trace_fuse_ecc_array_sel_o,// From u_fuse_wrapper of rivos_tsmc_fuse_wrapper.v
  output [(FUSE_NUM_ECC_ARRAYS-1):0][(FUSE_DATA_WIDTH-1):0]   trace_fuse_ecc_data_o,  // From u_fuse_wrapper of rivos_tsmc_fuse_wrapper.v
  output logic                                                trace_fuse_ecc_ps_o,    // From u_fuse_wrapper of rivos_tsmc_fuse_wrapper.v
  output logic                                                trace_fuse_ecc_strobe_o,// From u_fuse_wrapper of rivos_tsmc_fuse_wrapper.v
  output logic                                                trace_fuse_load_o,      // From u_fuse_wrapper of rivos_tsmc_fuse_wrapper.v
  output logic                                                trace_fuse_pd_o,        // From u_fuse_wrapper of rivos_tsmc_fuse_wrapper.v
  output logic                                                trace_fuse_pgenb_o,     // From u_fuse_wrapper of rivos_tsmc_fuse_wrapper.v
  output logic                                                trace_fuse_ps_o,        // From u_fuse_wrapper of rivos_tsmc_fuse_wrapper.v
  output logic                                                trace_fuse_strobe_o,    // From u_fuse_wrapper of rivos_tsmc_fuse_wrapper.v
  output [(FUSE_TEST_ADDR_WIDTH-1):0]                         trace_fuse_test_address_o// From u_fuse_wrapper of rivos_tsmc_fuse_wrapper.v
);

  import prim_mubi_pkg::MuBi4False;

  // This is only restricted by the supported ECC poly further
  // below, and is straightforward to extend, if needed.
  localparam int EccWidth      = 6;
  localparam int TotalEccWidth = 8;  // used to log all ecc fuses in register to enable mbist access path
  `ASSERT_INIT(SecDecWidth_A, Width == 16)

  // Not supported in open-source emulation model.
  logic [PwrSeqWidth-1:0] unused_pwr_seq_h;
  assign unused_pwr_seq_h = pwr_seq_h_i;
  assign pwr_seq_o = '0;

  logic unused_obs;
  assign unused_obs = |obs_ctrl_i;
  assign otp_obs_o = '0;

  wire unused_ext_voltage;
  assign unused_ext_voltage = ext_voltage_io;
  logic unused_test_ctrl_i;
  assign unused_test_ctrl_i = ^test_ctrl_i;

  logic unused_scan;
  assign unused_scan = ^{scanmode_i, scan_en_i, scan_rst_ni};

  logic intg_err, fsm_err;
  assign fatal_alert_o = intg_err || fsm_err;
  assign recov_alert_o = 1'b0;

  assign test_vect_o = '0;
  assign test_status_o = '0;

  logic        integrity_disable;

  logic [11:0] tsur_pd_ps_cycles;
  logic [9:0]  tsur_ps_cycles;
  logic [8:0]  tsur_ps_cs_cycles;
  
  logic [8:0]  tsup_ps_cs_cycles;
  logic [9:0]  tsup_ps_cycles;
  logic [9:0]  tsq_cycles;
  
  logic [10:0] tsq_m_cycles;
  logic [13:0] tpgm_cycles;
  logic [6:0]  tsur_ld_cycles;
  
  logic [9:0]  thr_ps_cycles;
  logic [9:0]  thp_ps_cycles;
  logic [8:0]  thp_cs_cycles;
  
  logic [8:0]  thr_cs_cycles;
  logic [8:0]  thp_ps_cs_cycles;
  logic [8:0]  thr_ps_cs_cycles;
  
  logic [7:0]  tsur_a_cycles;
  logic [7:0]  tsup_a_cycles;
  logic [7:0]  thp_a_cycles;
  logic [7:0]  tsup_ld_cycles;
  
  logic [9:0]  trd_cycles;
  logic [10:0] trd_m_cycles;
  logic [7:0]  thr_a_cycles;
  
  logic [7:0]  thp_pd_ps_cycles;
  logic [7:0]  data_capture_cycles;
  logic [7:0]  addr_capture_cycles;
  
  logic [17:0] trigger_power_down_cycles;

  ////////////////////////////////////
  // TL-UL Test Interface Emulation //
  ////////////////////////////////////

  otp_ctrl_reg_pkg::otp_ctrl_prim_reg2hw_t reg2hw;
  otp_ctrl_reg_pkg::otp_ctrl_prim_hw2reg_t hw2reg;
  otp_ctrl_prim_reg_top u_reg_top (
    .clk_i,
    .rst_ni,
    .tl_i      (test_tl_i ),
    .tl_o      (test_tl_o ),
    .reg2hw    (reg2hw    ),
    .hw2reg    (hw2reg    ),
    .intg_err_o(intg_err  )
  );

  logic unused_reg_sig;
  assign unused_reg_sig = ^reg2hw;

  ///////////////////
  // Control logic //
  ///////////////////

  // Encoding generated with:
  // $ ./util/design/sparse-fsm-encode.py -d 5 -m 9 -n 10 \
  //      -s 2599950981 --language=sv
  //
  // Hamming distance histogram:
  //
  //  0: --
  //  1: --
  //  2: --
  //  3: --
  //  4: --
  //  5: |||||||||||||||||||| (52.78%)
  //  6: ||||||||||||||| (41.67%)
  //  7: | (2.78%)
  //  8: | (2.78%)
  //  9: --
  // 10: --
  //
  // Minimum Hamming distance: 5
  // Maximum Hamming distance: 8
  // Minimum Hamming weight: 3
  // Maximum Hamming weight: 8
  //
  localparam int StateWidth = 10;
  typedef enum logic [StateWidth-1:0] {
    ResetSt      = 10'b1100000110,
    InitSt       = 10'b1000110011,
    IdleSt       = 10'b0101110000,
    ReadSt       = 10'b0010011111,
    ReadWaitSt   = 10'b1001001101,
    WriteCheckSt = 10'b1111101011,
    WriteWaitSt  = 10'b0011000010,
    IssueWriteSt = 10'b1000001100, // (neal) script was not rerun to generate this state encoding
    WriteSt      = 10'b0110100101,
    ErrorSt      = 10'b1110011000
  } state_e;

  state_e state_d, state_q;
  err_e err_d, err_q;
  logic valid_d, valid_q;
  logic ecc_valid_d, ecc_valid_q;
  logic integrity_en_d, integrity_en_q;
  logic req, wren, rvalid;
  logic [1:0] rerror;
  logic [AddrWidth-1:0] addr_q;
  logic [SizeWidth-1:0] size_q, size_d;
  logic [SizeWidth-1:0] cnt_d, cnt_q;
  logic cnt_clr, cnt_en;
  logic read_ecc_on, write_ecc_on;
  logic wdata_inconsistent;
  logic wrapper_ready;


  assign cnt_d = (cnt_clr) ? '0           :
                 (cnt_en)  ? cnt_q + 1'b1 : cnt_q;

  assign valid_o = valid_q;
  assign err_o   = err_q;

  assign integrity_disable = reg2hw.macro_control.ecc_disable.q ||
                             (reg2hw.macro_control.macro_mode.q != 2'b00);  // only want integrity in array mode

  assign macro_mode_o      = reg2hw.macro_control.macro_mode.q;

  always_comb begin : p_fsm
    // Default
    state_d = state_q;
    ready_o = 1'b0;
    valid_d = 1'b0;
    ecc_valid_d = 1'b0;
    err_d   = err_q;
    req     = 1'b0;
    wren    = 1'b0;
    cnt_clr = 1'b0;
    cnt_en  = 1'b0;
    read_ecc_on = 1'b1;
    write_ecc_on = 1'b1;
    fsm_err = 1'b0;
    integrity_en_d = integrity_en_q;

    unique case (state_q)
      // Wait here until we receive an initialization command.
      ResetSt: begin
        err_d = NoError;
        ready_o = 1'b1;
        if (valid_i) begin
          if (cmd_i == Init) begin
            state_d = InitSt;
          end
        end
      end
      // Wait for some time until the OTP macro is ready.
      InitSt: begin
        state_d = IdleSt;
        valid_d = 1'b1;
        err_d = NoError;
      end
      // In the idle state, we basically wait for read or write commands.
      IdleSt: begin
        ready_o = 1'b1;
        err_d = NoError;
        if (valid_i) begin
          cnt_clr = 1'b1;
          err_d = NoError;
          unique case (cmd_i)
            Read:  begin
              state_d = ReadSt;
              integrity_en_d = (!integrity_disable);
            end
            Write: begin
              state_d = WriteCheckSt;
              integrity_en_d = (!integrity_disable);
            end
            ReadRaw:  begin
              state_d = ReadSt;
              integrity_en_d = 1'b0;
            end
            WriteRaw: begin
              state_d = WriteCheckSt;
              integrity_en_d = 1'b0;
            end
            default: ;
          endcase // cmd_i
        end
      end
      // Issue a read command to the macro.
      ReadSt: begin
        if (wrapper_ready) begin
          state_d = ReadWaitSt;
          req     = 1'b1;
        end
        else begin
          state_d = ReadSt;
        end

        // Suppress ECC correction if needed.
        read_ecc_on = integrity_en_q;
      end
      // Wait for response from macro.
      ReadWaitSt: begin
        // Suppress ECC correction if needed.
        read_ecc_on = integrity_en_q;
        if (rvalid) begin
          cnt_en = 1'b1;
          // Uncorrectable error, bail out.
          if (rerror[1] && integrity_en_q) begin
            state_d = IdleSt;
            valid_d = 1'b1;
            ecc_valid_d = 1'b1;
            err_d = MacroEccUncorrError;
          end else begin
            if (cnt_q == size_q) begin
              state_d = IdleSt;
              valid_d = 1'b1;
              ecc_valid_d = 1'b1;
            end else begin
              state_d = ReadSt;
            end
            // Correctable error, carry on but signal back.
            if (rerror[0] && integrity_en_q) begin
              err_d = MacroEccCorrError;
            end
          end
        end
      end
      // First, read out to perform the write blank check and
      // read-modify-write operation.
      WriteCheckSt: begin
        if (wrapper_ready) begin
          state_d = WriteWaitSt;
          req     = 1'b1;
        end
        else begin
          state_d = WriteCheckSt;
        end

        // Register raw memory contents without correction so that we can
        // perform the read-modify-write correctly.
        read_ecc_on = 1'b0;
      end
      // Wait for readout to complete first.
      WriteWaitSt: begin
        // Register raw memory contents without correction so that we can
        // perform the read-modify-write correctly.
        read_ecc_on = 1'b0;
        if (rvalid) begin
          cnt_en = 1'b1;

          if (cnt_q == size_q) begin
            cnt_clr = 1'b1;
            state_d = IssueWriteSt;
          end else begin
            state_d = WriteCheckSt;
          end
        end
      end
      // If the write data attempts to clear an already programmed bit,
      // the MacroWriteBlankError needs to be asserted.
      IssueWriteSt: begin
        req = 1'b1;
        wren = 1'b1;

        // Suppress ECC calculation if needed.
        write_ecc_on = integrity_en_q;

        if (wdata_inconsistent) begin
          err_d = MacroWriteBlankError;
        end

        state_d = WriteSt;
      end
      // Wait in this state for write to complete
      WriteSt: begin
        // need handshake from fuse wrapper that write has completed
        if (rvalid) begin

          cnt_en = 1'b1;

          if (cnt_q == size_q) begin
            valid_d = 1'b1;
            state_d = IdleSt;
          end
          else begin
            state_d = IssueWriteSt;
          end
        end
      end
      // If the FSM is glitched into an invalid state.
      ErrorSt: begin
        fsm_err = 1'b1;
      end
      default: begin
        state_d = ErrorSt;
        fsm_err = 1'b1;
      end
    endcase // state_q
  end

  ///////////////////////////////////////////
  // Emulate using ECC protected Block RAM //
  ///////////////////////////////////////////

  logic [AddrWidth-1:0] addr;
  assign addr = addr_q + AddrWidth'(cnt_q);

  logic [Width-1:0] rdata_corr;
  logic [Width+TotalEccWidth-1:0] rdata_d, rdata_ecc;
  logic [Width+EccWidth-1:0]      wdata_ecc, wdata_rmw;
  logic [2**SizeWidth-1:0][Width-1:0] wdata_q, rdata_reshaped;
  logic [2**SizeWidth-1:0][TotalEccWidth-1:0] rdata_ecc_reshaped;
  logic [2**SizeWidth-1:0][Width+TotalEccWidth-1:0] rdata_q;

  // Use a standard Hamming ECC for OTP.
  prim_secded_hamming_22_16_enc u_enc (
    .data_i(wdata_q[cnt_q]),
    .data_o(wdata_ecc)
  );

  prim_secded_hamming_22_16_dec u_dec (
    .data_i     (rdata_ecc[Width+EccWidth-1:0]),
    .data_o     (rdata_corr),
    .syndrome_o ( ),
    .err_o      (rerror)
  );

  assign rdata_d = (read_ecc_on) ? {rdata_ecc[Width+:TotalEccWidth], rdata_corr}
                                 : rdata_ecc;

  // Read-modify-write (OTP can only set bits to 1, but not clear to 0).
  always_comb begin
    wdata_rmw = '0;

    for (int i = 0; i<(Width+EccWidth); i++) begin
      if((!write_ecc_on) && (i>=Width)) begin
        wdata_rmw[i] = 1'b0;
      end
      else if (wdata_ecc[i]) begin           // only consider blowing fuse if incoming data has bit set
        if (rdata_q[cnt_q][i] && (reg2hw.macro_control.macro_mode.q == 2'b00)) begin    // if incoming write has bit set and the fuse is already set then don't write again
                                                                                       // only do rmw check in array mode
          wdata_rmw[i] = 1'b0;
        end
        else begin                      // only write fuse if incoming write has the bit set and the fuse is not already blown
          wdata_rmw[i] = 1'b1;
        end
      end
    end
  end

  // This indicates if the write data is inconsistent (i.e., if the operation attempts to
  // clear an already programmed bit to zero).
  // recoded as below): assign wdata_inconsistent = (rdata_q[cnt_q] & wdata_ecc) != rdata_q[cnt_q];
  always_comb begin
    wdata_inconsistent = '0;

    if(reg2hw.macro_control.macro_mode.q == 2'b00) begin  // only check data consistency in array mode
      for (int i = 0; i<(Width+EccWidth); i++) begin
        if((!write_ecc_on) && (i>=Width)) begin
          wdata_inconsistent |= 1'b0;
        end
        else if((rdata_q[cnt_q][i]) && (!wdata_ecc[i])) begin   // assert error when the incoming write data is trying to clear a bit that is already set
          wdata_inconsistent |= 1'b1;
        end
      end
    end
  end

  // Output data without ECC bits.
  always_comb begin : p_output_map
    for (int k = 0; k < 2**SizeWidth; k++) begin
      rdata_reshaped[k]     = rdata_q[k][Width-1:0];
      rdata_ecc_reshaped[k] = rdata_q[k][Width+:TotalEccWidth];
    end

    if ((reg2hw.macro_control.macro_mode.q == 2'b10) &&
        (reg2hw.macro_control.test_row_col_sel.q[1])) begin // test col mode
      rdata_o    = '0;
      rdata_o[0] = rdata_reshaped[0][0];
    end
    else begin
      rdata_o = rdata_reshaped;
    end
  end

  assign hw2reg.read_ecc_info.ecc_info_0.de = ecc_valid_q;
  assign hw2reg.read_ecc_info.ecc_info_0.d  = rdata_ecc_reshaped[0];
  
  assign hw2reg.read_ecc_info.ecc_info_1.de = ecc_valid_q;
  assign hw2reg.read_ecc_info.ecc_info_1.d  = rdata_ecc_reshaped[1];

  generate
    if(SizeWidth == 2) begin : gen_ecc_info_assign
      assign hw2reg.read_ecc_info.ecc_info_2.de = ecc_valid_q;
      assign hw2reg.read_ecc_info.ecc_info_2.d  = rdata_ecc_reshaped[2];
   
      assign hw2reg.read_ecc_info.ecc_info_3.de = ecc_valid_q;
      assign hw2reg.read_ecc_info.ecc_info_3.d  = rdata_ecc_reshaped[3];
    end
    else begin : gen_default_ecc_info_assign
      assign hw2reg.read_ecc_info.ecc_info_2.de = '0;
      assign hw2reg.read_ecc_info.ecc_info_2.d  = '0;
   
      assign hw2reg.read_ecc_info.ecc_info_3.de = '0;
      assign hw2reg.read_ecc_info.ecc_info_3.d  = '0;
    end
  endgenerate
   
  logic SYNC_sel_wr_timing;

  prim_flop_2sync #(
    .Width(1)
  ) u_alert_nmi_sync (
    .clk_i,
    .rst_ni,
    .d_i(sel_wr_timing_i),
    .q_o(SYNC_sel_wr_timing)
  );

  always_comb begin
    tsur_pd_ps_cycles         = reg2hw.fuse_wrapper_rd_cfg_0.tsur_pd_ps_cycles.q;
    tsur_ps_cycles            = reg2hw.fuse_wrapper_rd_cfg_0.tsur_ps_cycles.q;
    tsur_ps_cs_cycles         = reg2hw.fuse_wrapper_rd_cfg_0.tsur_ps_cs_cycles.q;
    
    tsup_ps_cs_cycles         = reg2hw.fuse_wrapper_rd_cfg_1.tsup_ps_cs_cycles.q;
    tsup_ps_cycles            = reg2hw.fuse_wrapper_rd_cfg_1.tsup_ps_cycles.q;
    tsq_cycles                = reg2hw.fuse_wrapper_rd_cfg_1.tsq_cycles.q;
    
    tsq_m_cycles              = reg2hw.fuse_wrapper_rd_cfg_2.tsq_m_cycles.q;
    tpgm_cycles               = reg2hw.fuse_wrapper_rd_cfg_2.tpgm_cycles.q;
    tsur_ld_cycles            = reg2hw.fuse_wrapper_rd_cfg_2.tsur_ld_cycles.q;
    
    thr_ps_cycles             = reg2hw.fuse_wrapper_rd_cfg_3.thr_ps_cycles.q;
    thp_ps_cycles             = reg2hw.fuse_wrapper_rd_cfg_3.thp_ps_cycles.q;
    thp_cs_cycles             = reg2hw.fuse_wrapper_rd_cfg_3.thp_cs_cycles.q;
    
    thr_cs_cycles             = reg2hw.fuse_wrapper_rd_cfg_4.thr_cs_cycles.q;
    thp_ps_cs_cycles          = reg2hw.fuse_wrapper_rd_cfg_4.thp_ps_cs_cycles.q;
    thr_ps_cs_cycles          = reg2hw.fuse_wrapper_rd_cfg_4.thr_ps_cs_cycles.q;
    
    tsur_a_cycles             = reg2hw.fuse_wrapper_rd_cfg_5.tsur_a_cycles.q;
    tsup_a_cycles             = reg2hw.fuse_wrapper_rd_cfg_5.tsup_a_cycles.q;
    thp_a_cycles              = reg2hw.fuse_wrapper_rd_cfg_5.thp_a_cycles.q;
    tsup_ld_cycles            = reg2hw.fuse_wrapper_rd_cfg_5.tsup_ld_cycles.q;
    
    trd_cycles                = reg2hw.fuse_wrapper_rd_cfg_6.trd_cycles.q;
    trd_m_cycles              = reg2hw.fuse_wrapper_rd_cfg_6.trd_m_cycles.q;
    thr_a_cycles              = reg2hw.fuse_wrapper_rd_cfg_6.thr_a_cycles.q;
    
    thp_pd_ps_cycles          = reg2hw.fuse_wrapper_rd_cfg_7.thp_pd_ps_cycles.q;
    data_capture_cycles       = reg2hw.fuse_wrapper_rd_cfg_7.data_capture_cycles.q;
    addr_capture_cycles       = reg2hw.fuse_wrapper_rd_cfg_7.addr_capture_cycles.q;
    
    trigger_power_down_cycles = reg2hw.fuse_wrapper_rd_cfg_8.q;

    if(SYNC_sel_wr_timing) begin
      tsur_pd_ps_cycles         = reg2hw.fuse_wrapper_wr_cfg_0.tsur_pd_ps_cycles.q;
      tsur_ps_cycles            = reg2hw.fuse_wrapper_wr_cfg_0.tsur_ps_cycles.q;
      tsur_ps_cs_cycles         = reg2hw.fuse_wrapper_wr_cfg_0.tsur_ps_cs_cycles.q;
      
      tsup_ps_cs_cycles         = reg2hw.fuse_wrapper_wr_cfg_1.tsup_ps_cs_cycles.q;
      tsup_ps_cycles            = reg2hw.fuse_wrapper_wr_cfg_1.tsup_ps_cycles.q;
      tsq_cycles                = reg2hw.fuse_wrapper_wr_cfg_1.tsq_cycles.q;
      
      tsq_m_cycles              = reg2hw.fuse_wrapper_wr_cfg_2.tsq_m_cycles.q;
      tpgm_cycles               = reg2hw.fuse_wrapper_wr_cfg_2.tpgm_cycles.q;
      tsur_ld_cycles            = reg2hw.fuse_wrapper_wr_cfg_2.tsur_ld_cycles.q;
      
      thr_ps_cycles             = reg2hw.fuse_wrapper_wr_cfg_3.thr_ps_cycles.q;
      thp_ps_cycles             = reg2hw.fuse_wrapper_wr_cfg_3.thp_ps_cycles.q;
      thp_cs_cycles             = reg2hw.fuse_wrapper_wr_cfg_3.thp_cs_cycles.q;
      
      thr_cs_cycles             = reg2hw.fuse_wrapper_wr_cfg_4.thr_cs_cycles.q;
      thp_ps_cs_cycles          = reg2hw.fuse_wrapper_wr_cfg_4.thp_ps_cs_cycles.q;
      thr_ps_cs_cycles          = reg2hw.fuse_wrapper_wr_cfg_4.thr_ps_cs_cycles.q;
      
      tsur_a_cycles             = reg2hw.fuse_wrapper_wr_cfg_5.tsur_a_cycles.q;
      tsup_a_cycles             = reg2hw.fuse_wrapper_wr_cfg_5.tsup_a_cycles.q;
      thp_a_cycles              = reg2hw.fuse_wrapper_wr_cfg_5.thp_a_cycles.q;
      tsup_ld_cycles            = reg2hw.fuse_wrapper_wr_cfg_5.tsup_ld_cycles.q;
      
      trd_cycles                = reg2hw.fuse_wrapper_wr_cfg_6.trd_cycles.q;
      trd_m_cycles              = reg2hw.fuse_wrapper_wr_cfg_6.trd_m_cycles.q;
      thr_a_cycles              = reg2hw.fuse_wrapper_wr_cfg_6.thr_a_cycles.q;
      
      thp_pd_ps_cycles          = reg2hw.fuse_wrapper_wr_cfg_7.thp_pd_ps_cycles.q;
      data_capture_cycles       = reg2hw.fuse_wrapper_wr_cfg_7.data_capture_cycles.q;
      addr_capture_cycles       = reg2hw.fuse_wrapper_wr_cfg_7.addr_capture_cycles.q;
      
      trigger_power_down_cycles = reg2hw.fuse_wrapper_wr_cfg_8.q;
    end
  end

/*rivos_tsmc_fuse_wrapper AUTO_TEMPLATE (
    .Width                              (Width),
    .EccWidth                           (TotalEccWidth),
    .Depth                              (Depth),
    .FUSE_NUM_ARRAYS                    (FUSE_NUM_ARRAYS),
    .FUSE_NUM_MBIST_ARRAYS              (FUSE_NUM_MBIST_ARRAYS),
    .FUSE_MBIST_EN                      (FUSE_MBIST_EN),
    .FUSE_MBIST_ARRAY_BASE              (FUSE_MBIST_ARRAY_BASE),
    .FUSE_MBIST_ARRAY_SIZE              (FUSE_MBIST_ARRAY_SIZE),
    .FUSE_MBIST_ECC_ARRAY_BASE          (FUSE_MBIST_ECC_ARRAY_BASE),
    .FUSE_MBIST_ECC_ARRAY_SIZE          (FUSE_MBIST_ECC_ARRAY_SIZE),
    .FUSE_RF_DATA_WIDTH                 (FUSE_RF_DATA_WIDTH),
    .trace_fuse_csb_o                   (trace_fuse_csb_o),
    .trace_fuse_strobe_o                (trace_fuse_strobe_o),
    .trace_fuse_array_sel_o             (trace_fuse_array_sel_o[(FUSE_ARRAY_SEL_WIDTH-1):0]),
    .trace_fuse_load_o                  (trace_fuse_load_o),
    .trace_fuse_pgenb_o                 (trace_fuse_pgenb_o),
    .trace_fuse_ps_o                    (trace_fuse_ps_o),
    .trace_fuse_pd_o                    (trace_fuse_pd_o),
    .trace_final_fuse_mr_o              (trace_final_fuse_mr_o),
    .trace_fuse_address_o               (trace_fuse_address_o[(FUSE_ADDR_WIDTH-1):0]),
    .trace_final_fuse_tcrs_o            (trace_final_fuse_tcrs_o),
    .trace_fuse_test_address_o          (trace_fuse_test_address_o[(FUSE_TEST_ADDR_WIDTH-1):0]),
    .trace_final_fuse_rsb_o             (trace_final_fuse_rsb_o),
    .trace_final_fuse_rwl_o             (trace_final_fuse_rwl_o),
    .trace_fuse_ecc_strobe_o            (trace_fuse_ecc_strobe_o),
    .trace_fuse_ecc_array_sel_o         (trace_fuse_ecc_array_sel_o[(FUSE_ECC_ARRAY_SEL_WIDTH-1):0]),
    .trace_fuse_ecc_ps_o                (trace_fuse_ecc_ps_o),
    .trace_fuse_ecc_address_o           (trace_fuse_ecc_address_o[(FUSE_ADDR_WIDTH-1):0]),
    .trace_fuse_data_o                  (trace_fuse_data_o[(FUSE_NUM_ARRAYS-1):0]),
    .trace_fuse_ecc_data_o              (trace_fuse_ecc_data_o[(FUSE_NUM_ECC_ARRAYS-1):0]),
    .req_i                              (req),
    .write_i                            (wren),
    .addr_i                             (addr),
    .wdata_i                            ({2'b0,wdata_rmw[]}), // padding upper two bits so we never write ecc[7:6] but we can read it
    .mode_i                             (reg2hw.macro_control.macro_mode.q),
    .ecc_sel_i                          (reg2hw.macro_control.ecc_sel.q),
    .margin_i                           (reg2hw.macro_control.read_margin.q),
    .test_row_col_sel_i                 (reg2hw.macro_control.test_row_col_sel.q),
    .rvalid_o                           (rvalid),
    .rdata_o                            (rdata_ecc[(Width+TotalEccWidth-1):0]),
    .err_o                              (),
    .wrapper_ready_o                    (wrapper_ready),
    .tsur_pd_ps_cycles_i                (tsur_pd_ps_cycles),
    .tsur_ps_cycles_i                   (tsur_ps_cycles),
    .tsur_ps_cs_cycles_i                (tsur_ps_cs_cycles),
    .tsup_ps_cs_cycles_i                (tsup_ps_cs_cycles),
    .tsup_ps_cycles_i                   (tsup_ps_cycles),            
    .tsq_cycles_i                       (tsq_cycles),                
    .tsq_m_cycles_i                     (tsq_m_cycles),              
    .tpgm_cycles_i                      (tpgm_cycles),               
    .tsur_ld_cycles_i                   (tsur_ld_cycles),               
    .thr_ps_cycles_i                    (thr_ps_cycles),             
    .thp_ps_cycles_i                    (thp_ps_cycles),             
    .thp_cs_cycles_i                    (thp_cs_cycles),             
    .thr_cs_cycles_i                    (thr_cs_cycles),  
    .thp_ps_cs_cycles_i                 (thp_ps_cs_cycles),   
    .thr_ps_cs_cycles_i                 (thr_ps_cs_cycles),   
    .tsur_a_cycles_i                    (tsur_a_cycles),  
    .tsup_a_cycles_i                    (tsup_a_cycles),  
    .thp_a_cycles_i                     (thp_a_cycles),   
    .tsup_ld_cycles_i                   (tsup_ld_cycles),               
    .trd_cycles_i                       (trd_cycles),     
    .trd_m_cycles_i                     (trd_m_cycles),   
    .thr_a_cycles_i                     (thr_a_cycles),   
    .thp_pd_ps_cycles_i                 (thp_pd_ps_cycles),    
    .data_capture_cycles_i              (data_capture_cycles),
    .addr_capture_cycles_i              (addr_capture_cycles),
    .trigger_power_down_cycles_i        (trigger_power_down_cycles),
    .tstrst_i                           (tstrst_i),
    .tstrstsel_i                        (tstrstsel_i),
    .redundancy_autoinit_disable_i      (reg2hw.macro_control.redundancy_autoinit_disable.q),
    .mbist_sel_i                        (mbist_sel_i),
    .mbist_fuse_csb_i                   (mbist_fuse_csb_i),
    .mbist_fuse_load_i                  (mbist_fuse_load_i),
    .mbist_fuse_pgenb_i                 (mbist_fuse_pgenb_i),
    .mbist_fuse_ps_i                    (mbist_fuse_ps_i),
    .mbist_fuse_pd_i                    (mbist_fuse_pd_i),
    .mbist_fuse_mr_i                    (mbist_fuse_mr_i),
    .mbist_fuse_rwl_i                   (mbist_fuse_rwl_i),
    .mbist_fuse_rsb_i                   (mbist_fuse_rsb_i),
    .mbist_fuse_strobe_array_i          (mbist_fuse_strobe_array_i),
    .mbist_fuse_address_i               (mbist_fuse_address_i),
    .mbist_fuse_rf_data_o               (mbist_fuse_rf_data_o),
    .mbist_fuse_data_o                  (mbist_fuse_data_o),
    .reset_allowed_o                    (reset_allowed_o),
);
*/

rivos_tsmc_fuse_wrapper 
  #(/*AUTOINSTPARAM*/
    // Parameters
    .Width                              (Width),                 // Templated
    .EccWidth                           (TotalEccWidth),         // Templated
    .Depth                              (Depth),                 // Templated
    .FUSE_NUM_ARRAYS                    (FUSE_NUM_ARRAYS),       // Templated
    .FUSE_NUM_MBIST_ARRAYS              (FUSE_NUM_MBIST_ARRAYS), // Templated
    .FUSE_MBIST_EN                      (FUSE_MBIST_EN),         // Templated
    .FUSE_MBIST_ARRAY_BASE              (FUSE_MBIST_ARRAY_BASE), // Templated
    .FUSE_MBIST_ARRAY_SIZE              (FUSE_MBIST_ARRAY_SIZE), // Templated
    .FUSE_MBIST_ECC_ARRAY_BASE          (FUSE_MBIST_ECC_ARRAY_BASE), // Templated
    .FUSE_MBIST_ECC_ARRAY_SIZE          (FUSE_MBIST_ECC_ARRAY_SIZE), // Templated
    .FUSE_ADDR_WIDTH                    (FUSE_ADDR_WIDTH),
    .FUSE_TEST_ADDR_WIDTH               (FUSE_TEST_ADDR_WIDTH),
    .FUSE_DATA_WIDTH                    (FUSE_DATA_WIDTH),
    .FUSE_RF_DATA_WIDTH                 (FUSE_RF_DATA_WIDTH))    // Templated
  u_fuse_wrapper (/*AUTOINST*/
                  // Interfaces
                  .err_o                (),                      // Templated
                  // Outputs
                  .rvalid_o             (rvalid),                // Templated
                  .rdata_o              (rdata_ecc[(Width+TotalEccWidth-1):0]), // Templated
                  .wrapper_ready_o      (wrapper_ready),         // Templated
                  .mbist_fuse_rf_data_o (mbist_fuse_rf_data_o),  // Templated
                  .mbist_fuse_data_o    (mbist_fuse_data_o),     // Templated
                  .reset_allowed_o      (reset_allowed_o),       // Templated
                  .trace_fuse_csb_o     (trace_fuse_csb_o),      // Templated
                  .trace_fuse_strobe_o  (trace_fuse_strobe_o),   // Templated
                  .trace_fuse_array_sel_o(trace_fuse_array_sel_o[(FUSE_ARRAY_SEL_WIDTH-1):0]), // Templated
                  .trace_fuse_load_o    (trace_fuse_load_o),     // Templated
                  .trace_fuse_pgenb_o   (trace_fuse_pgenb_o),    // Templated
                  .trace_fuse_ps_o      (trace_fuse_ps_o),       // Templated
                  .trace_fuse_pd_o      (trace_fuse_pd_o),       // Templated
                  .trace_final_fuse_mr_o(trace_final_fuse_mr_o), // Templated
                  .trace_fuse_address_o (trace_fuse_address_o[(FUSE_ADDR_WIDTH-1):0]), // Templated
                  .trace_final_fuse_tcrs_o(trace_final_fuse_tcrs_o), // Templated
                  .trace_fuse_test_address_o(trace_fuse_test_address_o[(FUSE_TEST_ADDR_WIDTH-1):0]), // Templated
                  .trace_final_fuse_rsb_o(trace_final_fuse_rsb_o), // Templated
                  .trace_final_fuse_rwl_o(trace_final_fuse_rwl_o), // Templated
                  .trace_fuse_ecc_strobe_o(trace_fuse_ecc_strobe_o), // Templated
                  .trace_fuse_ecc_array_sel_o(trace_fuse_ecc_array_sel_o[(FUSE_ECC_ARRAY_SEL_WIDTH-1):0]), // Templated
                  .trace_fuse_ecc_ps_o  (trace_fuse_ecc_ps_o),   // Templated
                  .trace_fuse_ecc_address_o(trace_fuse_ecc_address_o[(FUSE_ADDR_WIDTH-1):0]), // Templated
                  .trace_fuse_data_o    (trace_fuse_data_o[(FUSE_NUM_ARRAYS-1):0]), // Templated
                  .trace_fuse_ecc_data_o(trace_fuse_ecc_data_o[(FUSE_NUM_ECC_ARRAYS-1):0]), // Templated
                  // Inputs
                  .clk_i                (clk_i),
                  .rst_ni               (rst_ni),
                  .clk_efuse_i          (clk_efuse_i),
                  .req_i                (req),                   // Templated
                  .write_i              (wren),                  // Templated
                  .addr_i               (addr),                  // Templated
                  .wdata_i              ({2'b0,wdata_rmw[(Width+EccWidth-1):0]}), // Templated
                  .mode_i               (reg2hw.macro_control.macro_mode.q), // Templated
                  .ecc_sel_i            (reg2hw.macro_control.ecc_sel.q), // Templated
                  .margin_i             (reg2hw.macro_control.read_margin.q), // Templated
                  .test_row_col_sel_i   (reg2hw.macro_control.test_row_col_sel.q), // Templated
                  .tsur_pd_ps_cycles_i  (tsur_pd_ps_cycles),     // Templated
                  .tsur_ps_cycles_i     (tsur_ps_cycles),        // Templated
                  .tsur_ps_cs_cycles_i  (tsur_ps_cs_cycles),     // Templated
                  .tsur_ld_cycles_i     (tsur_ld_cycles),        // Templated
                  .tsup_ld_cycles_i     (tsup_ld_cycles),        // Templated
                  .tsup_ps_cs_cycles_i  (tsup_ps_cs_cycles),     // Templated
                  .tsup_ps_cycles_i     (tsup_ps_cycles),        // Templated
                  .tsq_cycles_i         (tsq_cycles),            // Templated
                  .tsq_m_cycles_i       (tsq_m_cycles),          // Templated
                  .tpgm_cycles_i        (tpgm_cycles),           // Templated
                  .thr_ps_cycles_i      (thr_ps_cycles),         // Templated
                  .thp_ps_cycles_i      (thp_ps_cycles),         // Templated
                  .thp_cs_cycles_i      (thp_cs_cycles),         // Templated
                  .thr_cs_cycles_i      (thr_cs_cycles),         // Templated
                  .thp_ps_cs_cycles_i   (thp_ps_cs_cycles),      // Templated
                  .thr_ps_cs_cycles_i   (thr_ps_cs_cycles),      // Templated
                  .tsur_a_cycles_i      (tsur_a_cycles),         // Templated
                  .tsup_a_cycles_i      (tsup_a_cycles),         // Templated
                  .thp_a_cycles_i       (thp_a_cycles),          // Templated
                  .trd_cycles_i         (trd_cycles),            // Templated
                  .trd_m_cycles_i       (trd_m_cycles),          // Templated
                  .thr_a_cycles_i       (thr_a_cycles),          // Templated
                  .thp_pd_ps_cycles_i   (thp_pd_ps_cycles),      // Templated
                  .data_capture_cycles_i(data_capture_cycles),   // Templated
                  .addr_capture_cycles_i(addr_capture_cycles),   // Templated
                  .trigger_power_down_cycles_i(trigger_power_down_cycles), // Templated
                  .redundancy_autoinit_disable_i(reg2hw.macro_control.redundancy_autoinit_disable.q), // Templated
                  .tstrst_i             (tstrst_i),              // Templated
                  .tstrstsel_i          (tstrstsel_i),           // Templated
                  .mbist_sel_i          (mbist_sel_i),           // Templated
                  .mbist_fuse_csb_i     (mbist_fuse_csb_i),      // Templated
                  .mbist_fuse_load_i    (mbist_fuse_load_i),     // Templated
                  .mbist_fuse_pgenb_i   (mbist_fuse_pgenb_i),    // Templated
                  .mbist_fuse_ps_i      (mbist_fuse_ps_i),       // Templated
                  .mbist_fuse_pd_i      (mbist_fuse_pd_i),       // Templated
                  .mbist_fuse_mr_i      (mbist_fuse_mr_i),       // Templated
                  .mbist_fuse_rwl_i     (mbist_fuse_rwl_i),      // Templated
                  .mbist_fuse_rsb_i     (mbist_fuse_rsb_i),      // Templated
                  .mbist_fuse_strobe_array_i(mbist_fuse_strobe_array_i), // Templated
                  .mbist_fuse_address_i (mbist_fuse_address_i));  // Templated

  // Currently it is assumed that no wrap arounds can occur.
  `ASSERT(NoWrapArounds_A, req |-> (addr >= addr_q))

  //////////
  // Regs //
  //////////

 `PRIM_FLOP_SPARSE_FSM(u_state_regs, state_d, state_q, state_e, ResetSt)

  always_comb begin
    size_d = size_i;

    if(reg2hw.macro_control.macro_mode.q == 2'b01) begin // redundancy mode
      // want reads  to be 32b
      // want writes to be 16b 
      if((cmd_i == Read) || (cmd_i == ReadRaw)) begin
        size_d = SizeWidth'(1'b1);
      end
      else if((cmd_i == Write) || (cmd_i == WriteRaw)) begin
        size_d = SizeWidth'(1'b0);
      end
    end
    else if (reg2hw.macro_control.macro_mode.q == 2'b10) begin // test mode
      // want writes    to be 16b 
      // want row reads to be 32b
      // want col reads to be 16b
      if((cmd_i == Write) || (cmd_i == WriteRaw) || (reg2hw.macro_control.test_row_col_sel.q[1])) begin
        size_d = SizeWidth'(1'b0);
      end
      else if(!reg2hw.macro_control.test_row_col_sel.q[1]) begin
        size_d = SizeWidth'(1'b1);
      end
    end
  end

  always_ff @(posedge clk_i or negedge rst_ni) begin : p_regs
    if (!rst_ni) begin
      valid_q <= '0;
      ecc_valid_q <= '0;
      err_q   <= NoError;
      addr_q  <= '0;
      wdata_q <= '0;
      rdata_q <= '0;
      cnt_q   <= '0;
      size_q  <= '0;
      integrity_en_q <= 1'b0;
    end else begin
      valid_q <= valid_d;
      ecc_valid_q <= ecc_valid_d;
      err_q   <= err_d;
      cnt_q   <= cnt_d;
      integrity_en_q <= integrity_en_d;
      if (ready_o && valid_i) begin
        addr_q  <= addr_i;
        wdata_q <= wdata_i;
        size_q  <= size_d;
      end
      if (rvalid) begin
        rdata_q[cnt_q] <= rdata_d;
      end
    end
  end

  ////////////////
  // Assertions //
  ////////////////

  // Check that the otp_ctrl FSMs only issue legal commands to the wrapper.
  `ASSERT(CheckCommands0_A, state_q == ResetSt && valid_i && ready_o |-> cmd_i == Init)
  `ASSERT(CheckCommands1_A, state_q != ResetSt && valid_i && ready_o
      |-> cmd_i inside {Read, ReadRaw, Write, WriteRaw})


endmodule : prim_rdp_otp
// Local Variables:
// fill-column:1
// verilog-auto-arg-sort:t
// verilog-typedef-regexp: "_[teu]$"
// verilog-library-directories:("." )
// verilog-library-files:("." )
// End:
