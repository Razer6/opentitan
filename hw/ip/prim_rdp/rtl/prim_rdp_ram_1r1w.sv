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

  input  ram_2p_cfg_t      cfg_i,
  output ram_2p_cfg_rsp_t  cfg_rsp_o
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

  logic err_inj_done_int;

  RDP_AFFR #(
    .WIDTH(1) 
  ) err_inj_done_aff (
    .clk(clk_a_i),
    .rst_l(rst_a_ni),
    .en(1'b1), 
    .d(err_inj_done_int),
    .q(cfg_rsp_o.err_inj_done)
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

      .tie__sram_loc (cfg_i.sram_err_inj.tie__sram_loc),
      .err_inj_en    (cfg_i.sram_err_inj.err_inj_en),
      .err_inj_type  (cfg_i.sram_err_inj.err_inj_type),
      .err_inj_count (cfg_i.sram_err_inj.err_inj_count),
      .err_inj_loc   (cfg_i.sram_err_inj.err_inj_loc),
      .err_inj_done  (err_inj_done_int),

      .DFT_TME       (cfg_i.sram_dft.DFT_TME),
      .DFT_TRE       (cfg_i.sram_dft.DFT_TRE),
      .DFT_RDATA     (cfg_i.sram_dft.DFT_RDATA),
    
      .RMA        (sram_test_cfg.rma),        // Have SW control for this pin from a register.
      .RMB        (sram_test_cfg.rmb),        // Have SW control for this pin from a register.
      .RMEA       (sram_test_cfg.rmea),       // Have SW control for this pin from a register.
      .RMEB       (sram_test_cfg.rmeb),       // Have SW control for this pin from a register.
      .LS         (sram_test_cfg.ls),         // Light sleep.
      .TEST_RNM   (sram_test_cfg.test_rnm),   // Have SW control for this pin from a register.
      .TEST1A     (sram_test_cfg.test1a),     // Have SW control for this pin from a register.
      .TEST1B     (sram_test_cfg.test1b),     // Have SW control for this pin from a register.
      .DFD_StopWE (sram_test_cfg.DFD_StopWE)  // Have SW control for this pin from a register.
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

      .tie__sram_loc (cfg_i.sram_err_inj.tie__sram_loc),
      .err_inj_en    (cfg_i.sram_err_inj.err_inj_en),
      .err_inj_type  (cfg_i.sram_err_inj.err_inj_type),
      .err_inj_count (cfg_i.sram_err_inj.err_inj_count),
      .err_inj_loc   (cfg_i.sram_err_inj.err_inj_loc),
      .err_inj_done  (err_inj_done_int),
    
      .DFT_TME       (cfg_i.sram_dft.DFT_TME),
      .DFT_TRE       (cfg_i.sram_dft.DFT_TRE),
      .DFT_RDATA     (cfg_i.sram_dft.DFT_RDATA),
    
      .RMA        (sram_test_cfg.rma),        // Have SW control for this pin from a register.
      .RMB        (sram_test_cfg.rmb),        // Have SW control for this pin from a register.
      .RMEA       (sram_test_cfg.rmea),       // Have SW control for this pin from a register.
      .RMEB       (sram_test_cfg.rmeb),       // Have SW control for this pin from a register.
      .LS         (sram_test_cfg.ls),         // Light sleep.
      .TEST_RNM   (sram_test_cfg.test_rnm),   // Have SW control for this pin from a register.
      .TEST1A     (sram_test_cfg.test1a),     // Have SW control for this pin from a register.
      .TEST1B     (sram_test_cfg.test1b),     // Have SW control for this pin from a register.
      .DFD_StopWE (sram_test_cfg.DFD_StopWE)  // Have SW control for this pin from a register.
    );
  end else begin : gen_ot_default
    prim_generic_ram_1r1w #(
      .Width(Width),
      .Depth(Depth),
      .DataBitsPerMask(DataBitsPerMask),
      .MemInitFile(MemInitFile)
    ) u_ram_1r1w (
      .*
    );
  end
`endif
endmodule
