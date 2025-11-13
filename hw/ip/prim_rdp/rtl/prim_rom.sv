// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

`include "prim_assert.sv"

module prim_rom import prim_rom_pkg::*; #(
  parameter  int Width       = 32,
  parameter  int Depth       = 2048, // 8kB default
  parameter      MemInitFile = "", // VMEM file to initialize the memory with

  localparam int Aw          = $clog2(Depth)
) (
  input  logic             clk_i,
  input  logic             rst_ni,
  input  logic             req_i,
  input  logic [Aw-1:0]    addr_i,
  output logic [Width-1:0] rdata_o,
  input  rom_cfg_t         cfg_i
);

  logic unused_signals;
  assign unused_signals = ^{cfg_i, req_i};

  if(Width > 32) begin : gen_ecc_rom
    if (Depth == 32'h2000)  begin : gen_32k_rom
        rvscs_ot_32k_ecc_rom u_rom (
            .clk            (clk_i),
            .reset_         (rst_ni),
            .cEn            (rst_ni),
            .addr           (addr_i),
            .rdData         (rdata_o),
            // Software controller ports
            .LS             (1'b0),
            .ram_controls   (cfg_i.test_cfg),
            .ram_dft_signals(cfg_i.dft_cfg)
        );
      end else begin : gen_64k_rom
        rvscs_ot_64k_ecc_rom u_rom (
            .clk            (clk_i),
            .reset_         (rst_ni),
            .cEn            (rst_ni),
            .addr           (addr_i),
            .rdData         (rdata_o),
            // Software controller ports
            .LS             (1'b0),
            .ram_controls   (cfg_i.test_cfg),
            .ram_dft_signals(cfg_i.dft_cfg)
        );
      end
  end else begin : gen_no_ecc_rom
    if (Depth == 32'h2000)  begin : gen_32k_rom
      rvscs_ot_32k_rom u_rom (
          .clk            (clk_i),
          .reset_         (rst_ni),
          .cEn            (rst_ni),
          .addr           (addr_i),
          .rdData         (rdata_o),
          // Software controller ports
          .LS             (1'b0),
          .ram_controls   (cfg_i.test_cfg),
          .ram_dft_signals(cfg_i.dft_cfg)
      );
    end else begin : gen_64k_rom
      rvscs_ot_64k_rom u_rom (
          .clk            (clk_i),
          .reset_         (rst_ni),
          .cEn            (rst_ni),
          .addr           (addr_i),
          .rdData         (rdata_o),
          // Software controller ports
          .LS             (1'b0),
          .ram_controls   (cfg_i.test_cfg),
          .ram_dft_signals(cfg_i.dft_cfg)
      );
    end
  end
endmodule
