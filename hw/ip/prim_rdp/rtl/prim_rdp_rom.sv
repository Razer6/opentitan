// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

`include "prim_assert.sv"

module prim_rdp_rom import prim_rom_pkg::*; #(
  parameter  int Width       = 32,
  parameter  int Depth       = 2048, // 8kB default
  parameter      MemInitFile = "", // VMEM file to initialize the memory with

  parameter  bit EnableECC   = 1'b0,
  localparam int Aw          = $clog2(Depth)
) (
  input  logic             clk_i,
  input  logic             rst_ni,
  input  logic             req_i,
  input  logic [Aw-1:0]    addr_i,
  output logic [Width-1:0] rdata_o,
  input  rom_cfg_t         cfg_i,
  input  prim_misc_dft_pkg::rom_test_cfg_t rom_test_cfg_i
);

  logic unused_signals;
  assign unused_signals = ^{cfg_i, req_i};

  if(EnableECC) begin : gen_ecc_rom
    if (Depth == 32'h2000)  begin : gen_32k_rom
        rvscs_ot_32k_ecc_rom #(
            .WIDTH       (Width),
            .DEPTH       (Depth)
        ) u_rom (
            .clk            (clk_i),
            .reset_         (rst_ni),
            .cEn            (rst_ni),
            .addr           (addr_i),
            .rdData         (rdata_o),
            // Software controller ports
            .RM             (rom_test_cfg_i.rm),
            .RME            (rom_test_cfg_i.rme),
            .LS             (rom_test_cfg_i.ls),
            .TEST1          (rom_test_cfg_i.test1)
        );
      end else begin : gen_64k_rom
        rvscs_ot_64k_ecc_rom #(
            .WIDTH       (Width),
            .DEPTH       (Depth)
        ) u_rom (
            .clk            (clk_i),
            .reset_         (rst_ni),
            .cEn            (rst_ni),
            .addr           (addr_i),
            .rdData         (rdata_o),
            // Software controller ports
            .RM             (rom_test_cfg_i.rm),
            .RME            (rom_test_cfg_i.rme),
            .LS             (rom_test_cfg_i.ls),
            .TEST1          (rom_test_cfg_i.test1)
        );
      end
  end else begin : gen_no_ecc_rom
    if (Depth == 32'h2000)  begin : gen_32k_rom
      rvscs_ot_32k_rom #(
          .WIDTH       (Width),
          .DEPTH       (Depth)
      ) u_rom (
          .clk            (clk_i),
          .reset_         (rst_ni),
          .cEn            (rst_ni),
          .addr           (addr_i),
          .rdData         (rdata_o),
          // Software controller ports
          .RM             (rom_test_cfg_i.rm),
          .RME            (rom_test_cfg_i.rme),
          .LS             (rom_test_cfg_i.ls),
          .TEST1          (rom_test_cfg_i.test1)
      );
    end else begin : gen_64k_rom
      rvscs_ot_64k_rom #(
          .WIDTH       (Width),
          .DEPTH       (Depth)
      ) u_rom (
          .clk            (clk_i),
          .reset_         (rst_ni),
          .cEn            (rst_ni),
          .addr           (addr_i),
          .rdData         (rdata_o),
          // Software controller ports
          .RM             (rom_test_cfg_i.rm),
          .RME            (rom_test_cfg_i.rme),
          .LS             (rom_test_cfg_i.ls),
          .TEST1          (rom_test_cfg_i.test1)
      );
    end
  end
endmodule
