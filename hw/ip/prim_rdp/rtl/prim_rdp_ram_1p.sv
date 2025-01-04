// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Synchronous single-port SRAM model

`include "prim_assert.sv"

module prim_rdp_ram_1p
  import prim_ram_1p_pkg::*;
  import prim_util_pkg::*;
#(
  parameter  int Width           = 32, // bit
  parameter  int Depth           = 128,
  parameter  int DataBitsPerMask = 1, // Number of data bits per bit of write mask
  parameter      MemInitFile     = "", // VMEM file to initialize the memory with

  // Select between compiled RAM and OT generic
  parameter bit UseCompiledRam   = 0,

  localparam int Aw              = $clog2(Depth)  // derived parameter
) (
  input  logic             clk_i,
  input  logic             rst_ni,

  input  logic             req_i,
  input  logic             write_i,
  input  logic [Aw-1:0]    addr_i,
  input  logic [Width-1:0] wdata_i,
  input  logic [Width-1:0] wmask_i,
  output logic [Width-1:0] rdata_o, // Read data. Data is returned one cycle after req_i is high.
  input  ram_1p_cfg_t      cfg_i,
  output ram_1p_cfg_rsp_t  cfg_rsp_o
);
  if (UseCompiledRam) begin : gen_compiled_sram
    rvscs_ot_sram_wrap #(
      .WIDTH(Width),
      .DEPTH(Depth),
      .USE_COMPILED_RAM(UseCompiledRam)
    ) u_ram (
      .clk_i           (clk_i),
      .rst_ni          (rst_ni),
      .req_i           (req_i),
      .write_i         (write_i),
      .addr_i          (addr_i),
      .wdata_i         (wdata_i),
      .wmask_i         (wmask_i),
      .sram_test_cfg   (cfg_i.sram_test_cfg),
      .sram_err_inj_in (cfg_i.sram_err_inj),
      .err_inj_done    (cfg_rsp_o.err_inj_done),
      .sram_dft        (cfg_rsp_o.sram_dft),
      .rdata_o         (rdata_o)
    );
  end else begin : gen_generic_sram
    prim_generic_ram_1p #(
      .Width(Width),
      .Depth(Depth),
      .DataBitsPerMask(DataBitsPerMask),
      .MemInitFile(MemInitFile)
    ) u_ram_1p (
      .*
    );
  end
endmodule
