// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

`include "prim_assert.sv"

module otp_macro
  import otp_ctrl_macro_pkg::*;
  import otp_macro_reg_pkg::*;
  import otp_macro_pkg::*;
#(
  // Native OTP word size. This determines the size_i granule.
  parameter  int    Width            = 16,
  parameter  int    Depth            = 1024,
  // This determines the maximum number of native words that
  // can be transferred across the interface in one cycle.
  parameter  int    SizeWidth        = 2,
  // Derived parameters
  localparam int    AddrWidth        = prim_util_pkg::vbits(Depth),
  // VMEM file to initialize the memory with
  parameter         MemInitFile   = "",

  parameter  bit FUSE_MBIST_EN                     = prim_otp_cfg_pkg::FUSE_MBIST_EN,
  parameter  int FUSE_MBIST_ARRAY_BASE             = prim_otp_cfg_pkg::FUSE_MBIST_ARRAY_BASE,
  parameter  int FUSE_MBIST_ARRAY_SIZE             = prim_otp_cfg_pkg::FUSE_MBIST_ARRAY_SIZE,
  parameter  int FUSE_MBIST_ECC_ARRAY_BASE         = prim_otp_cfg_pkg::FUSE_MBIST_ECC_ARRAY_BASE,
  parameter  int FUSE_MBIST_ECC_ARRAY_SIZE         = prim_otp_cfg_pkg::FUSE_MBIST_ECC_ARRAY_SIZE,
  parameter  int FUSE_NUM_MBIST_ARRAYS             = prim_otp_cfg_pkg::FUSE_NUM_MBIST_ARRAYS,
  parameter  int FUSE_RF_DATA_WIDTH                = prim_otp_cfg_pkg::FUSE_RF_DATA_WIDTH,
  // tsmc fuse macro wrapper parameters
  parameter  int FUSE_NUM_ARRAYS                   = prim_otp_cfg_pkg::FUSE_NUM_ARRAYS,
  parameter  int FUSE_ADDR_WIDTH                   = prim_otp_cfg_pkg::FUSE_ADDR_WIDTH,
  parameter  int FUSE_TEST_ADDR_WIDTH              = prim_otp_cfg_pkg::FUSE_TEST_ADDR_WIDTH,
  parameter  int FUSE_DATA_WIDTH                   = prim_otp_cfg_pkg::FUSE_DATA_WIDTH,

  // Vendor test partition offset and size (both in bytes)
  parameter  int    VendorTestOffset = 0,
  parameter  int    VendorTestSize   = 0,
  // Type definitions of the config in response ports
  parameter type OtpReqType_t     = otp_ctrl_macro_req_t,
  parameter type OtpRspType_t     = otp_ctrl_macro_rsp_t,
  // Type definitions of the config in response ports
  parameter type CfgType_t        = prim_otp_cfg_pkg::otp_cfg_t,
  parameter type CfgRspType_t     = prim_otp_cfg_pkg::otp_cfg_rsp_t,
  // RACL definitions
  parameter bit  EnableRacl       = 1'b0,
  parameter bit  RaclErrorRsp     = 1'b1,
  parameter top_racl_pkg::racl_policy_sel_t RaclPolicySelVec[otp_macro_reg_pkg::NumRegsPrim] =
    '{otp_macro_reg_pkg::NumRegsPrim{0}}
) (
  input                          clk_i,
  input                          rst_ni,
  // Bus interface
  input                          tlul_pkg::tl_h2d_t prim_tl_i,
  output                         tlul_pkg::tl_d2h_t prim_tl_o,

  // Lifecycle broadcast inputs
  // SEC_CM: LC_CTRL.INTERSIG.MUBI
  input                          lc_ctrl_pkg::lc_tx_t lc_dft_en_i,

  input                          ast_pkg::ast_obs_ctrl_t obs_ctrl_i,
  output logic [7:0]             otp_obs_o,
  // Macro-specific power sequencing signals to/from AST
  output pwr_seq_t               pwr_seq_o,
  input  pwr_seq_t               pwr_seq_h_i,
  // External programming voltage
  inout wire                     ext_voltage_h_io,
  // Test interfaces
  input                          otp_test_req_t test_i,
  output                         otp_test_rsp_t test_o,
  output                         otp_test_vect_t cio_test_o,
  output                         otp_test_vect_t cio_test_en_o,
  // Other DFT signals
  input                          prim_mubi_pkg::mubi4_t scanmode_i,
  input                          scan_en_i,
  input                          scan_rst_ni,

  // Incoming request from OTP_CTRL
  input                          OtpReqType_t otp_i,
  output                         OtpRspType_t otp_o,

  // RACL interface
  input  top_racl_pkg::racl_policy_vec_t  racl_policies_i,
  output top_racl_pkg::racl_error_log_t   racl_error_o,

  // DFT config and response port
  input CfgType_t                         cfg_i,
  output CfgRspType_t                     cfg_rsp_o
);
  // SEC_CM: MACRO.MEM.INTEGRITY
  // SEC_CM: MACRO.MEM.CM
  import prim_mubi_pkg::MuBi4False;

  localparam int FUSE_ARRAY_SEL_WIDTH     = prim_util_pkg::vbits(FUSE_NUM_ARRAYS);
  localparam int FUSE_NUM_ECC_ARRAYS      = (FUSE_NUM_ARRAYS > 1) ? (FUSE_NUM_ARRAYS >> 1) : 1;
  localparam int FUSE_ECC_ARRAY_SEL_WIDTH = prim_util_pkg::vbits(FUSE_NUM_ECC_ARRAYS);

  // This is only restricted by the supported ECC poly further
  // below, and is straightforward to extend, if needed.
  localparam int TotalEccWidth = 8;  // used to log all ecc fuses in register to enable mbist access path

  `ASSERT_INIT(SecDecWidth_A, Width == 16)
  // Use a standard Hamming ECC for OTP, parameterized by Width.
  // Check that the secded width and type combination is supported.
  if (!prim_secded_pkg::is_width_valid(prim_secded_pkg::SecdedHamming, Width))
    $error("Width %0d is not supported for SecdedHamming", Width);

  // The ECC syndrome width is parameterized based on Width.
  localparam int EccWidth = prim_secded_pkg::get_synd_width(prim_secded_pkg::SecdedHamming, Width);

  // Not supported in open-source emulation model.
  pwr_seq_t unused_pwr_seq_h;
  assign unused_pwr_seq_h = pwr_seq_h_i;
  assign pwr_seq_o = '0;

  logic unused_obs;
  assign unused_obs = |obs_ctrl_i;
  assign otp_obs_o = '0;

  wire unused_ext_voltage;
  assign unused_ext_voltage = ext_voltage_h_io;

  logic unused_test_ctrl_i;
  assign unused_test_ctrl_i = ^test_i.ctrl;

  logic unused_scan;
  assign unused_scan = ^{scanmode_i, scan_en_i, scan_rst_ni};

  logic lc_fsm_err, intg_err, fsm_err;
  assign otp_o.fatal_lc_fsm_err = lc_fsm_err;
  assign otp_o.fatal_alert = intg_err || fsm_err;
  assign otp_o.recov_alert = 1'b0;

  otp_test_vect_t test_vect;
  assign test_vect = '0;
  assign test_o.status = '0;

  logic        integrity_disable;

  ///////////////////////////////////////
  // Life Cycle Signal Synchronization //
  ///////////////////////////////////////

  lc_ctrl_pkg::lc_tx_t [2:0] lc_dft_en;

  prim_lc_sync #(
    .NumCopies(3)
  ) u_prim_lc_sync_dft_en (
    .clk_i,
    .rst_ni,
    .lc_en_i(lc_dft_en_i),
    .lc_en_o(lc_dft_en)
  );

  // Test-related GPIOs.
  // SEC_CM: TEST.BUS.LC_GATED
  assign cio_test_o    = (lc_ctrl_pkg::lc_tx_test_true_strict(lc_dft_en[1])) ?
                         test_vect            : '0;
  assign cio_test_en_o = (lc_ctrl_pkg::lc_tx_test_true_strict(lc_dft_en[2])) ?
                         {OtpTestVectWidth{1'b1}} : '0;

  ////////////////////////////////////
  // TL-UL Test Interface Emulation //
  ////////////////////////////////////
  tlul_pkg::tl_h2d_t           tl_h2d_gated;
  tlul_pkg::tl_d2h_t           tl_d2h_gated;

  // Life cycle qualification of TL-UL test interface.
  // SEC_CM: TEST.BUS.LC_GATED
  // SEC_CM: TEST_TL_LC_GATE.FSM.SPARSE
  tlul_lc_gate #(
    .NumGatesPerDirection(2)
  ) u_tlul_lc_gate (
    .clk_i,
    .rst_ni,
    .tl_h2d_i(prim_tl_i),
    .tl_d2h_o(prim_tl_o),
    .tl_h2d_o(tl_h2d_gated),
    .tl_d2h_i(tl_d2h_gated),
    .lc_en_i (lc_dft_en[0]),
    .flush_req_i('0),
    .flush_ack_o(),
    .resp_pending_o(),
    .err_o   (lc_fsm_err)
  );

  otp_macro_reg_pkg::otp_macro_prim_reg2hw_t reg2hw;
  otp_macro_reg_pkg::otp_macro_prim_hw2reg_t hw2reg;
  otp_macro_prim_reg_top #(
    .EnableRacl       ( EnableRacl       ),
    .RaclErrorRsp     ( RaclErrorRsp     ),
    .RaclPolicySelVec ( RaclPolicySelVec )
  ) u_reg_top (
    .clk_i,
    .rst_ni,
    .tl_i      (tl_h2d_gated ),
    .tl_o      (tl_d2h_gated ),
    .reg2hw    (reg2hw    ),
    .hw2reg    (hw2reg    ),
    .intg_err_o(intg_err  ),
    .racl_policies_i,
    .racl_error_o
  );

  // logic unused_reg_sig;
  // assign unused_reg_sig = ^reg2hw;

  // Rivos: Provide current macro mode OTP ctrl for DAI operations
  assign otp_o.macro_mode = reg2hw.macro_control.macro_mode.q;

  ///////////////////
  // Control logic //
  ///////////////////

  // Encoding generated with:
  // $ ./util/design/sparse-fsm-encode.py -d 5 -m 16 -n 12 \
  //     -s 761853025 --language=sv
  //
  // Hamming distance histogram:
  //
  //  0: --
  //  1: --
  //  2: --
  //  3: --
  //  4: --
  //  5: ||||||||||||||| (25.00%)
  //  6: |||||||||||||||||||| (33.33%)
  //  7: ||||||||||||||| (25.83%)
  //  8: |||||||| (13.33%)
  //  9: | (2.50%)
  // 10: --
  // 11: --
  // 12: --
  //
  // Minimum Hamming distance: 5
  // Maximum Hamming distance: 9
  // Minimum Hamming weight: 3
  // Maximum Hamming weight: 9
  //
  localparam int StateWidth = 12;
  typedef enum logic [StateWidth-1:0] {
    ResetSt         = 12'b111100111010,
    InitSt          = 12'b001111110001,
    IdleSt          = 12'b101001101100,
    ReadSt          = 12'b010101000100,
    ReadWaitSt      = 12'b001010001111,
    WriteCheckSt    = 12'b111111001101,
    WriteWaitSt     = 12'b000000011001,
    IssueWriteSt    = 12'b100001100011,
    WriteSt         = 12'b110010010100,
    ZerWriteCheckSt = 12'b100111010010,
    ZerWriteWaitSt  = 12'b011100100111,
    ZerIssueWriteSt = 12'b000110101000,
    ZerWriteSt      = 12'b010011111111,
    ZerReadSt       = 12'b111000000001,
    ZerReadWaitSt   = 12'b001101011110,
    ErrorSt         = 12'b100100110101
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
  logic zer_en;


  assign cnt_d = (cnt_clr) ? '0           :
                 (cnt_en)  ? cnt_q + 1'b1 : cnt_q;

  assign otp_o.rvalid = valid_q;
  assign otp_o.err   = err_q;

  assign integrity_disable = reg2hw.macro_control.ecc_disable.q ||
                             (reg2hw.macro_control.macro_mode.q != 2'b00);  // only want integrity in array mode

  assign cfg_rsp_o.macro_mode = reg2hw.macro_control.macro_mode.q;

  always_comb begin : p_fsm
    // Default
    state_d        = state_q;
    otp_o.ready    = 1'b0;
    valid_d        = 1'b0;
    ecc_valid_d    = 1'b0;
    err_d          = err_q;
    req            = 1'b0;
    wren           = 1'b0;
    cnt_clr        = 1'b0;
    cnt_en         = 1'b0;
    read_ecc_on    = 1'b1;
    write_ecc_on   = 1'b1;
    fsm_err        = 1'b0;
    integrity_en_d = integrity_en_q;
    zer_en = 1'b0;

    unique case (state_q)
      // Wait here until we receive an initialization command.
      ResetSt: begin
        err_d = NoError;
        otp_o.ready = 1'b1;
        if (otp_i.valid) begin
          if (otp_i.cmd == Init) begin
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
        otp_o.ready = 1'b1;
        err_d = NoError;
        if (otp_i.valid) begin
          cnt_clr = 1'b1;
          err_d = NoError;
          unique case (otp_i.cmd)
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
            Zeroize: begin
              state_d = ZerWriteCheckSt;
              integrity_en_d = 1'b0;
            end
            default: ;
          endcase // otp_i.cmd
        end
      end
      // Issue a read command to the macro.
      ReadSt: begin
        if (wrapper_ready) begin
          state_d = ReadWaitSt;
          req     = 1'b1;
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
      // Rivos: Wait in this state for write to complete
      WriteSt: begin
        // need handshake from fuse wrapper that write has completed
        if (rvalid) begin
          cnt_en = 1'b1;

          if (cnt_q == size_q) begin
            valid_d = 1'b1;
            state_d = IdleSt;
          end else begin
            state_d = IssueWriteSt;
          end
        end
      end

      // First, read out to perform the write blank check and
      // read-modify-write operation.
      ZerWriteCheckSt: begin
        if (wrapper_ready) begin
          state_d = ZerWriteWaitSt;
          req     = 1'b1;
        end
        // Register raw memory contents without correction so that we can
        // perform the read-modify-write correctly.
        read_ecc_on = 1'b0;
      end
      // Wait for readout to complete first.
      ZerWriteWaitSt: begin
        // Register raw memory contents without correction so that we can
        // perform the read-modify-write correctly.
        read_ecc_on = 1'b0;
        if (rvalid) begin
          cnt_en = 1'b1;

          if (cnt_q == size_q) begin
            cnt_clr = 1'b1;
            state_d = ZerIssueWriteSt;
          end else begin
            state_d = ZerWriteCheckSt;
          end
        end
      end
      // Zeroize the word.
      ZerIssueWriteSt: begin
        req = 1'b1;
        wren = 1'b1;
        zer_en = 1'b1;

        state_d = ZerWriteSt;
      end
      // Rivos: Wait in this state for the zeroize write to complete
      ZerWriteSt: begin
        // need handshake from fuse wrapper that write has completed
        if (rvalid) begin
          cnt_en = 1'b1;

          if (cnt_q == size_q) begin
            state_d = ZerReadSt;
            cnt_clr = 1'b1;
          end else begin
            state_d = ZerIssueWriteSt;
          end
        end
      end
      // Read back the zeroized word.
      ZerReadSt: begin
        if (wrapper_ready) begin
          state_d = ZerReadWaitSt;
          req     = 1'b1;
          read_ecc_on = 1'b0;
        end
      end
      // Wait for the read out to complete.
      ZerReadWaitSt: begin
        read_ecc_on = 1'b0;
        if (rvalid) begin
          cnt_en = 1'b1;
          if (cnt_q == size_q) begin
            state_d = IdleSt;
            valid_d = 1'b1;
          end else begin
            state_d = ZerReadSt;
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

  // Instantiate secded encoder and decoder based on parameters.
`include "prim_secded_inc.svh"

`SECDED_INST_ENC(prim_secded_pkg::SecdedHamming, Width, u_enc, wdata_q[cnt_q], wdata_ecc)

`SECDED_INST_DEC(prim_secded_pkg::SecdedHamming, Width, u_dec, rdata_ecc[Width+EccWidth-1:0], rdata_corr, , rerror)

`undef SECDED_INST_DEC
`undef SECDED_INST_ENC

  assign rdata_d = (read_ecc_on) ? {rdata_ecc[Width+:TotalEccWidth], rdata_corr}
                                 : rdata_ecc;

  // Read-modify-write (OTP can only set bits to 1, but not clear to 0).
  // If the write is a zeroization simply set ECC and data to 1.
  always_comb begin
    // Initialize to all zeros
    wdata_rmw = '0;
    
    if (zer_en) begin
      // Zeroize: set bits for unset fuses (invert the current state)
      wdata_rmw = ~rdata_q[cnt_q][Width+EccWidth-1:0];
    end else begin
      // Normal write mode
      if (!write_ecc_on) begin
        // Only write data bits, not ECC bits
        wdata_rmw[Width-1:0] = wdata_ecc[Width-1:0];
      end else begin
        // Write both data and ECC bits
        wdata_rmw = wdata_ecc;
      end
      
      // Apply RMW logic: don't write if fuse already blown (in array mode)
      if (reg2hw.macro_control.macro_mode.q == 2'b00) begin
        // Array mode: mask out already-blown fuses
        wdata_rmw &= ~rdata_q[cnt_q][Width+EccWidth-1:0];
      end
    end
  end

  // This indicates if the write data is inconsistent (i.e., if the operation attempts to
  // clear an already programmed bit to zero). Disable the writeblank check for zeroization writes.
  // recoded as below):
  // Rivos: Only check for inconsitencies in array mode
  always_comb begin
    wdata_inconsistent = '0;
    
    // Only check data consistency in array mode
    if (reg2hw.macro_control.macro_mode.q == 2'b00) begin
      if (!write_ecc_on) begin
        // ECC disabled: only check data bits for consistency
        wdata_inconsistent = |(rdata_q[cnt_q][Width-1:0] & ~wdata_ecc[Width-1:0]);
      end else begin
        // ECC enabled: check all bits for consistency
        wdata_inconsistent = |(rdata_q[cnt_q][Width+EccWidth-1:0] & ~wdata_ecc);
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
      otp_o.rdata    = '0;
      otp_o.rdata[0] = rdata_reshaped[0][0];
    end
    else begin
      otp_o.rdata = rdata_reshaped;
    end
  end

  assign hw2reg.macro_control.reset_allowed.de = 1'b1;
  assign hw2reg.macro_control.reset_allowed.d  = cfg_rsp_o.reset_allowed;

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

/*prim_otp_mem AUTO_TEMPLATE (
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
    .FUSE_ADDR_WIDTH                    (FUSE_ADDR_WIDTH),
    .FUSE_TEST_ADDR_WIDTH               (FUSE_TEST_ADDR_WIDTH),
    .FUSE_DATA_WIDTH                    (FUSE_DATA_WIDTH),
    .trace_fuse_csb_o                   (cfg_rsp_o.trace_fuse_csb),
    .trace_fuse_strobe_o                (cfg_rsp_o.trace_fuse_strobe),
    .trace_fuse_array_sel_o             (cfg_rsp_o.trace_fuse_array_sel[(FUSE_ARRAY_SEL_WIDTH-1):0]),
    .trace_fuse_load_o                  (cfg_rsp_o.trace_fuse_load),
    .trace_fuse_pgenb_o                 (cfg_rsp_o.trace_fuse_pgenb),
    .trace_fuse_ps_o                    (cfg_rsp_o.trace_fuse_ps),
    .trace_fuse_pd_o                    (cfg_rsp_o.trace_fuse_pd),
    .trace_final_fuse_mr_o              (cfg_rsp_o.trace_final_fuse_mr),
    .trace_fuse_address_o               (cfg_rsp_o.trace_fuse_address[(FUSE_ADDR_WIDTH-1):0]),
    .trace_final_fuse_tcrs_o            (cfg_rsp_o.trace_final_fuse_tcrs),
    .trace_fuse_test_address_o          (cfg_rsp_o.trace_fuse_test_address[(FUSE_TEST_ADDR_WIDTH-1):0]),
    .trace_final_fuse_rsb_o             (cfg_rsp_o.trace_final_fuse_rsb),
    .trace_final_fuse_rwl_o             (cfg_rsp_o.trace_final_fuse_rwl),
    .trace_fuse_ecc_strobe_o            (cfg_rsp_o.trace_fuse_ecc_strobe),
    .trace_fuse_ecc_array_sel_o         (cfg_rsp_o.trace_fuse_ecc_array_sel[(FUSE_ECC_ARRAY_SEL_WIDTH-1):0]),
    .trace_fuse_ecc_ps_o                (cfg_rsp_o.trace_fuse_ecc_ps),
    .trace_fuse_ecc_address_o           (cfg_rsp_o.trace_fuse_ecc_address[(FUSE_ADDR_WIDTH-1):0]),
    .trace_fuse_data_o                  (cfg_rsp_o.trace_fuse_data[(FUSE_NUM_ARRAYS-1):0]),
    .trace_fuse_ecc_data_o              (cfg_rsp_o.trace_fuse_ecc_data[(FUSE_NUM_ECC_ARRAYS-1):0]),
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
    .scan_en_i                          (cfg_i.scan_en),
    .tstrst_i                           (cfg_i.tstrst),
    .tstrstsel_i                        (cfg_i.tstrstsel),
    .sel_wr_timing_i                    (cfg_i.sel_wr_timing),
    .clk_efuse_i                        (cfg_i.clk_efuse),
    .rst_efuse_ni                       (cfg_i.rst_efuse_n),
    .mbist_sel_i                        (cfg_i.mbist_sel),
    .mbist_fuse_csb_i                   (cfg_i.mbist_fuse_csb),
    .mbist_fuse_load_i                  (cfg_i.mbist_fuse_load),
    .mbist_fuse_pgenb_i                 (cfg_i.mbist_fuse_pgenb),
    .mbist_fuse_ps_i                    (cfg_i.mbist_fuse_ps),
    .mbist_fuse_pd_i                    (cfg_i.mbist_fuse_pd),
    .mbist_fuse_mr_i                    (cfg_i.mbist_fuse_mr),
    .mbist_fuse_rwl_i                   (cfg_i.mbist_fuse_rwl),
    .mbist_fuse_rsb_i                   (cfg_i.mbist_fuse_rsb),
    .mbist_fuse_strobe_array_i          (cfg_i.mbist_fuse_strobe_array),
    .mbist_fuse_address_i               (cfg_i.mbist_fuse_address),
    .mbist_fuse_rf_data_o               (cfg_rsp_o.mbist_fuse_rf_data),
    .mbist_fuse_data_o                  (cfg_rsp_o.mbist_fuse_data),
    .reset_allowed_o                    (cfg_rsp_o.reset_allowed),
);
*/

prim_otp_mem
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
    .FUSE_ADDR_WIDTH                    (FUSE_ADDR_WIDTH),       // Templated
    .FUSE_TEST_ADDR_WIDTH               (FUSE_TEST_ADDR_WIDTH),  // Templated
    .FUSE_DATA_WIDTH                    (FUSE_DATA_WIDTH),       // Templated
    .FUSE_RF_DATA_WIDTH                 (FUSE_RF_DATA_WIDTH))    // Templated
  u_otp_mem (/*AUTOINST*/
             // Outputs
             .rvalid_o                  (rvalid),                // Templated
             .rdata_o                   (rdata_ecc[(Width+TotalEccWidth-1):0]), // Templated
             .err_o                     (),                      // Templated
             .wrapper_ready_o           (wrapper_ready),         // Templated
             .mbist_fuse_rf_data_o      (cfg_rsp_o.mbist_fuse_rf_data), // Templated
             .mbist_fuse_data_o         (cfg_rsp_o.mbist_fuse_data), // Templated
             .reset_allowed_o           (cfg_rsp_o.reset_allowed), // Templated
             .trace_fuse_csb_o          (cfg_rsp_o.trace_fuse_csb), // Templated
             .trace_fuse_strobe_o       (cfg_rsp_o.trace_fuse_strobe), // Templated
             .trace_fuse_array_sel_o    (cfg_rsp_o.trace_fuse_array_sel[(FUSE_ARRAY_SEL_WIDTH-1):0]), // Templated
             .trace_fuse_load_o         (cfg_rsp_o.trace_fuse_load), // Templated
             .trace_fuse_pgenb_o        (cfg_rsp_o.trace_fuse_pgenb), // Templated
             .trace_fuse_ps_o           (cfg_rsp_o.trace_fuse_ps), // Templated
             .trace_fuse_pd_o           (cfg_rsp_o.trace_fuse_pd), // Templated
             .trace_final_fuse_mr_o     (cfg_rsp_o.trace_final_fuse_mr), // Templated
             .trace_fuse_address_o      (cfg_rsp_o.trace_fuse_address[(FUSE_ADDR_WIDTH-1):0]), // Templated
             .trace_final_fuse_tcrs_o   (cfg_rsp_o.trace_final_fuse_tcrs), // Templated
             .trace_fuse_test_address_o (cfg_rsp_o.trace_fuse_test_address[(FUSE_TEST_ADDR_WIDTH-1):0]), // Templated
             .trace_final_fuse_rsb_o    (cfg_rsp_o.trace_final_fuse_rsb), // Templated
             .trace_final_fuse_rwl_o    (cfg_rsp_o.trace_final_fuse_rwl), // Templated
             .trace_fuse_ecc_strobe_o   (cfg_rsp_o.trace_fuse_ecc_strobe), // Templated
             .trace_fuse_ecc_array_sel_o(cfg_rsp_o.trace_fuse_ecc_array_sel[(FUSE_ECC_ARRAY_SEL_WIDTH-1):0]), // Templated
             .trace_fuse_ecc_ps_o       (cfg_rsp_o.trace_fuse_ecc_ps), // Templated
             .trace_fuse_ecc_address_o  (cfg_rsp_o.trace_fuse_ecc_address[(FUSE_ADDR_WIDTH-1):0]), // Templated
             .trace_fuse_data_o         (cfg_rsp_o.trace_fuse_data[(FUSE_NUM_ARRAYS-1):0]), // Templated
             .trace_fuse_ecc_data_o     (cfg_rsp_o.trace_fuse_ecc_data[(FUSE_NUM_ECC_ARRAYS-1):0]), // Templated
             // Inputs
             .clk_i                     (clk_i),
             .rst_ni                    (rst_ni),
             .clk_efuse_i               (cfg_i.clk_efuse),       // Templated
             .rst_efuse_ni              (cfg_i.rst_efuse_n),     // Templated
             .req_i                     (req),                   // Templated
             .write_i                   (wren),                  // Templated
             .addr_i                    (addr),                  // Templated
             .wdata_i                   ({2'b0,wdata_rmw[(Width+EccWidth-1):0]}), // Templated
             .mode_i                    (reg2hw.macro_control.macro_mode.q), // Templated
             .ecc_sel_i                 (reg2hw.macro_control.ecc_sel.q), // Templated
             .margin_i                  (reg2hw.macro_control.read_margin.q), // Templated
             .test_row_col_sel_i        (reg2hw.macro_control.test_row_col_sel.q), // Templated
             .reg2hw                    (reg2hw),
             .sel_wr_timing_i           (cfg_i.sel_wr_timing),   // Templated
             .scan_en_i                 (cfg_i.scan_en),         // Templated
             .tstrst_i                  (cfg_i.tstrst),          // Templated
             .tstrstsel_i               (cfg_i.tstrstsel),       // Templated
             .mbist_sel_i               (cfg_i.mbist_sel),       // Templated
             .mbist_fuse_csb_i          (cfg_i.mbist_fuse_csb),  // Templated
             .mbist_fuse_load_i         (cfg_i.mbist_fuse_load), // Templated
             .mbist_fuse_pgenb_i        (cfg_i.mbist_fuse_pgenb), // Templated
             .mbist_fuse_ps_i           (cfg_i.mbist_fuse_ps),   // Templated
             .mbist_fuse_pd_i           (cfg_i.mbist_fuse_pd),   // Templated
             .mbist_fuse_mr_i           (cfg_i.mbist_fuse_mr),   // Templated
             .mbist_fuse_rwl_i          (cfg_i.mbist_fuse_rwl),  // Templated
             .mbist_fuse_rsb_i          (cfg_i.mbist_fuse_rsb),  // Templated
             .mbist_fuse_strobe_array_i (cfg_i.mbist_fuse_strobe_array), // Templated
             .mbist_fuse_address_i      (cfg_i.mbist_fuse_address)); // Templated

  // Currently it is assumed that no wrap arounds can occur.
  `ASSERT(NoWrapArounds_A, req |-> (addr >= addr_q))

  //////////
  // Regs //
  //////////

 `PRIM_FLOP_SPARSE_FSM(u_state_regs, state_d, state_q, state_e, ResetSt)

  always_comb begin
    size_d = otp_i.size;

    if(reg2hw.macro_control.macro_mode.q == 2'b01) begin // redundancy mode
      // want reads  to be 32b
      // want writes to be 16b
      if((otp_i.cmd == Read) || (otp_i.cmd == ReadRaw)) begin
        size_d = SizeWidth'(1'b1);
      end
      else if((otp_i.cmd == Write) || (otp_i.cmd == WriteRaw)) begin
        size_d = SizeWidth'(1'b0);
      end
    end
    else if (reg2hw.macro_control.macro_mode.q == 2'b10) begin // test mode
      // want writes    to be 16b
      // want row reads to be 32b
      // want col reads to be 16b
      if((otp_i.cmd == Write) || (otp_i.cmd == WriteRaw) || (reg2hw.macro_control.test_row_col_sel.q[1])) begin
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
      if (otp_o.ready  && otp_i.valid) begin
        addr_q  <= otp_i.addr;
        wdata_q <= otp_i.wdata;
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
  `ASSERT(CheckCommands0_A, state_q == ResetSt && otp_i.valid && otp_o.ready |-> otp_i.cmd == Init)
  `ASSERT(CheckCommands1_A, state_q != ResetSt && otp_i.valid && otp_o.ready
      |-> otp_i.cmd inside {Read, ReadRaw, Write, WriteRaw, Zeroize})

  // Check all parameters are as expected.
  // `ASSERT_INIT(WidthMatches_A, Width == otp_ctrl_macro_pkg::OtpWidth)
  // `ASSERT_INIT(DepthMatches_A, Depth == otp_ctrl_macro_pkg::OtpDepth)
  // `ASSERT_INIT(SizeWidthMatches_A, SizeWidth == otp_ctrl_macro_pkg::OtpSizeWidth)
  // `ASSERT_INIT(VendorTestOffsetMatches_A, VendorTestOffset == otp_ctrl_reg_pkg::VendorTestOffset)
  // `ASSERT_INIT(VendorTestSizeMatches_A, VendorTestSize == otp_ctrl_reg_pkg::VendorTestSize)

  `ASSERT_KNOWN(OtpAstPwrSeqKnown_A, pwr_seq_o)
  `ASSERT_KNOWN(OtpMacroTlOutKnown_A, prim_tl_o)

  // Assertions for countermeasures inside otp_macro are done in three parts
  // - Assert invalid conditions propagate to otp_o.fatal_alert
  // - Check that otp_o.fatal_alert is connected to u_otp_ctrl.otp_macro_i as a connectivity check
  // - Check that u_otp_ctrl.otp_macro_i is connected to u_otp_ctrl.alert_tx_o[3]
  `ASSERT_ERROR_TRIGGER_ERR(PrimFsmCheck_A, u_state_regs, otp_o.fatal_alert, 0,
      `_SEC_CM_ALERT_MAX_CYC, unused_err_o, `ASSERT_DEFAULT_CLK, `ASSERT_DEFAULT_RST)
  `ASSUME_FPV(PrimFsmCheck_ATriggerAfterAlertInit_S,
              $stable(rst_ni) == 0 |-> u_state_regs.unused_err_o == 0 [*10])

  `ASSERT_ERROR_TRIGGER_ERR(TlLcGateFsm_A, u_tlul_lc_gate.u_state_regs, otp_o.fatal_lc_fsm_err, 0,
      `_SEC_CM_ALERT_MAX_CYC, unused_err_o, `ASSERT_DEFAULT_CLK, `ASSERT_DEFAULT_RST)
  `ASSUME_FPV(TlLcGateFsm_ATriggerAfterAlertInit_S,
              $stable(rst_ni) == 0 |-> u_tlul_lc_gate.u_state_regs.unused_err_o == 0 [*10])

  `ASSERT_ERROR_TRIGGER_ERR(PrimRegWeOnehotCheck_A,
      u_reg_top.u_prim_reg_we_check.u_prim_onehot_check, otp_o.fatal_alert, 0,
      `_SEC_CM_ALERT_MAX_CYC, err_o, `ASSERT_DEFAULT_CLK, `ASSERT_DEFAULT_RST)
  `ASSUME_FPV(PrimRegWeOneHotCheck_ATriggerAfterAlertInit_S,
              $stable(rst_ni) == 0 |-> u_state_regs.err_o == 0 [*10])

endmodule : otp_macro
// Local Variables:
// fill-column:1
// verilog-auto-arg-sort:t
// verilog-typedef-regexp: "_[etu]$"
// End:
