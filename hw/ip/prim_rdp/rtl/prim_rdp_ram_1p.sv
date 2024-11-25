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

  localparam int Aw              = prim_util_pkg::vbits(Depth)  // derived parameter
) (
  input  logic             clk_i,
  input  logic             rst_ni,
  input  logic             req_i,
  input  logic             write_i,
  input  logic [Aw-1:0]    addr_i,
  input  logic [Width-1:0] wdata_i,
  input  logic [Width-1:0] wmask_i,
  output logic [Width-1:0] rdata_o, // Read data. Data is returned one cycle after req_i is high.
  output logic             rvalid_o, // Read data. Data is returned one cycle after req_i is high.

  input prim_misc_dft_pkg::sram_test_cfg_t   sram_test_cfg_i,
  input prim_misc_dft_pkg::sram_err_inj_in_t sram_err_inj_in_i,
  output logic                               err_inj_done_o,
  output prim_misc_dft_pkg::sram_dft_t       sram_dft_o,
  input ram_1p_cfg_t                         cfg_i
);
  logic unused_cfg;
  assign unused_cfg = ^cfg_i;

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
      .sram_test_cfg   (sram_test_cfg_i),
      .sram_err_inj_in (sram_err_inj_in_i),
      .err_inj_done    (err_inj_done_o),
      .sram_dft        (sram_dft_o),
      .rdata_o         (rdata_o),
      .rvalid_o        (rvalid_o)
    );
  end else begin : gen_generic_sram
    logic unused_signals;
    assign unused_signals = ^{sram_test_cfg_i, sram_err_inj_in_i};

    assign err_inj_done_o = 1'b0;
    assign sram_dft_o     = '0;

    // Width must be fully divisible by DataBitsPerMask
    `ASSERT_INIT(DataBitsPerMaskCheck_A, (Width % DataBitsPerMask) == 0)

    // Width of internal write mask. Note wmask_i input into the module is always assumed
    // to be the full bit mask
    localparam int MaskWidth = Width / DataBitsPerMask;

    logic [Width-1:0]     mem [Depth];
    logic [MaskWidth-1:0] wmask;

    for (genvar k = 0; k < MaskWidth; k++) begin : gen_wmask
      assign wmask[k] = &wmask_i[k*DataBitsPerMask +: DataBitsPerMask];

      // Ensure that all mask bits within a group have the same value for a write
      `ASSERT(MaskCheck_A, req_i && write_i |->
          wmask_i[k*DataBitsPerMask +: DataBitsPerMask] inside {{DataBitsPerMask{1'b1}}, '0},
          clk_i, '0)
    end

    // using always instead of always_ff to avoid 'ICPD  - illegal combination of drivers' error
    // thrown when using $readmemh system task to backdoor load an image
    always @(posedge clk_i) begin
      if (req_i) begin
        if (write_i) begin
          for (int i=0; i < MaskWidth; i = i + 1) begin
            if (wmask[i]) begin
              mem[addr_i][i*DataBitsPerMask +: DataBitsPerMask] <=
                wdata_i[i*DataBitsPerMask +: DataBitsPerMask];
            end
          end
        end else begin
          rdata_o <= mem[addr_i];
        end
      end
    end

    always_ff @(posedge clk_i or negedge rst_ni) begin
      if (!rst_ni) begin
        rvalid_o <= 1'b0;
      end else begin
        rvalid_o <= req_i & ~write_i;
      end
    end

    `include "prim_util_memload.svh"
  end
endmodule
