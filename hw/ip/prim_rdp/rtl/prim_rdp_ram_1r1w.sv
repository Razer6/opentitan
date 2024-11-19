// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Synchronous two-port SRAM register model
//   This module is for simulation and small size SRAM.
//   Implementing ECC should be done inside wrapper not this model.
`include "prim_assert.sv"

module prim_rdp_ram_1r1w import prim_ram_2p_pkg::*; #(
  parameter  int Width           = 32, // bit
  parameter  int Depth           = 128,
  parameter  int DataBitsPerMask = 1, // Number of data bits per bit of write mask
  parameter      MemInitFile     = "", // VMEM file to initialize the memory with

  parameter  bit SyncDftCfg      = 0,

  localparam int Aw              = $clog2(Depth)  // derived parameter
) (
  input clk_a_i,
  input clk_b_i,
  input rst_a_ni,
  input rst_b_ni,

  // Port A can only write
  input                    a_req_i,
  input        [Aw-1:0]    a_addr_i,
  input        [Width-1:0] a_wdata_i,
  input  logic [Width-1:0] a_wmask_i,

  // Port B can only read
  input                    b_req_i,
  input        [Aw-1:0]    b_addr_i,
  output logic [Width-1:0] b_rdata_o,

  input  prim_misc_dft_pkg::spi_sram_test_cfg_t sram_test_cfg,
  input  prim_misc_dft_pkg::sram_err_inj_in_t   sram_err_inj_in,
  output logic                                  err_inj_done,
  output prim_misc_dft_pkg::spi_sram_dft_t      sram_dft,

  input ram_2p_cfg_t         cfg_i
);

// For certain synthesis experiments we compile the design with generic models to get an unmapped
// netlist (GTECH). In these synthesis experiments, we typically black-box the memory models since
// these are going to be simulated using plain RTL models in netlist simulations. This can be done
// by analyzing and elaborating the design, and then removing the memory submodules before writing
// out the verilog netlist. However, memory arrays can take a long time to elaborate, and in case
// of two port rams they can even trigger elab errors due to multiple processes writing to the
// same memory variable concurrently. To this end, we exclude the entire logic in this module in
// these runs with the following macro.
`ifndef SYNTHESIS_MEMORY_BLACK_BOXING

  logic unused_cfg;
  assign unused_cfg = ^cfg_i;

  logic err_inj_done_int;

  prim_misc_dft_pkg::spi_sram_test_cfg_t sync_sram_test_cfg;
  prim_misc_dft_pkg::sram_err_inj_in_t   mod_sync_sram_err_inj_in;
  genvar g_i;

  if(SyncDftCfg) begin : gen_sync_dft_cfg
    for(g_i = 0; g_i < $bits(prim_misc_dft_pkg::spi_sram_test_cfg_t); g_i++) begin : gen_test_cfg_sync
      RDP_SYNC sram_test_cfg_sync (
        .clk(clk_a_i),
        .rst_l(rst_a_ni),
        .async_in(sram_test_cfg[g_i]),
        .sync_out(sync_sram_test_cfg[g_i])
      );
    end

    prim_misc_dft_pkg::sram_err_inj_in_t   sync_sram_err_inj_in;
    logic                                  sync_sram_err_inj_in_val;

    SCS_CDC_BUF_DFT #(
      .DTYPE(prim_misc_dft_pkg::sram_err_inj_in_t)
    ) sram_err_inj_in_sync (
      .wr_clk       (clk_a_i),
      .wr_rst_l     (rst_a_ni),
      .rd_clk       (clk_b_i),
      .rd_rst_l     (rst_b_ni),
      .data_in      (sram_err_inj_in),
      .data_in_val  (sram_err_inj_in.err_inj_en),
      .data_out     (sync_sram_err_inj_in),
      .data_out_val (sync_sram_err_inj_in_val),

      // tstrst and tstrstsel packed into sram_test_cfg to not disturb OT interfaces
      .tstrst       (sram_test_cfg.tstrst),
      .tstrstsel    (sram_test_cfg.tstrstsel)
    );

    always_comb begin : err_inj_en_assignment
      mod_sync_sram_err_inj_in            = sync_sram_err_inj_in;
      mod_sync_sram_err_inj_in.err_inj_en = sync_sram_err_inj_in_val;
    end

  end else begin : gen_no_sync_dft_cfg
    assign sync_sram_test_cfg   = sram_test_cfg;
    assign mod_sync_sram_err_inj_in = sram_err_inj_in;
  end

  RDP_AFFR #(
    .WIDTH(1) 
  ) err_inj_done_aff (
    .clk(clk_a_i),
    .rst_l(rst_a_ni),
    .en(1'b1), 
    .d(err_inj_done_int),
    .q(err_inj_done)
  );

  if(Depth==128) begin : gen_spi2sys_mem
    rvscs_spi2sys_sram u_spi2sys_sram
    (
      .clka      (clk_a_i),
      .clkb      (clk_b_i),
      .reseta_   (rst_a_ni),
      .resetb_   (rst_b_ni),

      .rdEn      (b_req_i),
      .rdAddr    (b_addr_i),
      .rdData    (b_rdata_o),

      .wrEn           (a_req_i),
      .wrAddr         (a_addr_i),
      .wrData         (a_wdata_i),
      .bitWriteEnable (a_wmask_i),

      .tie__sram_loc (mod_sync_sram_err_inj_in.tie__sram_loc),
      .err_inj_en    (mod_sync_sram_err_inj_in.err_inj_en),
      .err_inj_type  (mod_sync_sram_err_inj_in.err_inj_type),
      .err_inj_count (mod_sync_sram_err_inj_in.err_inj_count),
      .err_inj_loc   (mod_sync_sram_err_inj_in.err_inj_loc),
      .err_inj_done  (err_inj_done_int),

      .DFT_TME       (sram_dft.DFT_TME),
      .DFT_TRE       (sram_dft.DFT_TRE),
      .DFT_RDATA     (sram_dft.DFT_RDATA),
    
      .RMA        (sync_sram_test_cfg.rma),        // Have SW control for this pin from a register.
      .RMB        (sync_sram_test_cfg.rmb),        // Have SW control for this pin from a register.
      .RMEA       (sync_sram_test_cfg.rmea),       // Have SW control for this pin from a register.
      .RMEB       (sync_sram_test_cfg.rmeb),       // Have SW control for this pin from a register.
      .LS         (sync_sram_test_cfg.ls),         // Light sleep.
      .TEST_RNM   (sync_sram_test_cfg.test_rnm),   // Have SW control for this pin from a register.
      .TEST1A     (sync_sram_test_cfg.test1a),     // Have SW control for this pin from a register.
      .TEST1B     (sync_sram_test_cfg.test1b),     // Have SW control for this pin from a register.
      .DFD_StopWE (sync_sram_test_cfg.DFD_StopWE)  // Have SW control for this pin from a register.
    );
  end else if(Depth==1024) begin : gen_sys2spi_mem
    rvscs_sys2spi_sram u_sys2spi_sram
    (
      .clka      (clk_a_i),
      .clkb      (clk_b_i),
      .reseta_   (rst_a_ni),
      .resetb_   (rst_b_ni),

      .rdEn      (b_req_i),
      .rdAddr    (b_addr_i),
      .rdData    (b_rdata_o),

      .wrEn           (a_req_i),
      .wrAddr         (a_addr_i),
      .wrData         (a_wdata_i),
      .bitWriteEnable (a_wmask_i),

      .tie__sram_loc (mod_sync_sram_err_inj_in.tie__sram_loc),
      .err_inj_en    (mod_sync_sram_err_inj_in.err_inj_en),
      .err_inj_type  (mod_sync_sram_err_inj_in.err_inj_type),
      .err_inj_count (mod_sync_sram_err_inj_in.err_inj_count),
      .err_inj_loc   (mod_sync_sram_err_inj_in.err_inj_loc),
      .err_inj_done  (err_inj_done_int),
    
      .DFT_TME       (sram_dft.DFT_TME),
      .DFT_TRE       (sram_dft.DFT_TRE),
      .DFT_RDATA     (sram_dft.DFT_RDATA),
    
      .RMA        (sync_sram_test_cfg.rma),        // Have SW control for this pin from a register.
      .RMB        (sync_sram_test_cfg.rmb),        // Have SW control for this pin from a register.
      .RMEA       (sync_sram_test_cfg.rmea),       // Have SW control for this pin from a register.
      .RMEB       (sync_sram_test_cfg.rmeb),       // Have SW control for this pin from a register.
      .LS         (sync_sram_test_cfg.ls),         // Light sleep.
      .TEST_RNM   (sync_sram_test_cfg.test_rnm),   // Have SW control for this pin from a register.
      .TEST1A     (sync_sram_test_cfg.test1a),     // Have SW control for this pin from a register.
      .TEST1B     (sync_sram_test_cfg.test1b),     // Have SW control for this pin from a register.
      .DFD_StopWE (sync_sram_test_cfg.DFD_StopWE)  // Have SW control for this pin from a register.
    );
  end else begin : gen_ot_default
    // (neal) default OT sim only code 

    // Width of internal write mask. Note *_wmask_i input into the module is always assumed
    // to be the full bit mask.
    localparam int MaskWidth = Width / DataBitsPerMask;
    
    logic [Width-1:0]     mem [Depth];
    logic [MaskWidth-1:0] a_wmask;
    for (genvar k = 0; k < MaskWidth; k++) begin : gen_wmask
      assign a_wmask[k] = &a_wmask_i[k*DataBitsPerMask +: DataBitsPerMask];
    
      // Ensure that all mask bits within a group have the same value for a write
      `ASSERT(MaskCheckPortA_A, a_req_i |->
          a_wmask_i[k*DataBitsPerMask +: DataBitsPerMask] inside {{DataBitsPerMask{1'b1}}, '0},
          clk_a_i, '0)
    end
      
    // Xilinx FPGA specific Two-port RAM coding style
    // using always instead of always_ff to avoid 'ICPD  - illegal combination of drivers' error
    // thrown due to 'mem' being driven by two always processes below
    always @(posedge clk_a_i) begin
      if (a_req_i) begin
        for (int i=0; i < MaskWidth; i = i + 1) begin
          if (a_wmask[i]) begin
            mem[a_addr_i][i*DataBitsPerMask +: DataBitsPerMask] <=
              a_wdata_i[i*DataBitsPerMask +: DataBitsPerMask];
          end
        end
      end
    end
    
    always @(posedge clk_b_i) begin
      if (b_req_i) begin
        b_rdata_o <= mem[b_addr_i];
      end
    end
    `include "prim_util_memload.svh"
  end
`endif
endmodule
