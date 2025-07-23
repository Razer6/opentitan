// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

`include "prim_assert.sv"

module prim_rdp_rom import prim_rom_pkg::*; #(
  parameter  int Width       = 32,
  parameter  int Depth       = 2048, // 8kB default
  parameter int unsigned Latency     = 1,
  parameter      MemInitFile = "", // VMEM file to initialize the memory with

  localparam int Aw          = $clog2(Depth),

  // Rivos: rom_ctrl does not know that our rom macro already delays by 1 cycle.
  //        For our rom zero-cycle is not possible and a latency of 1 is the minimum.
  //        So our queue needs to 1 less than the Latency parameter.
  localparam int unsigned QueueSize = Latency - 1
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

  `ASSERT_INIT(LatencyIsLegal_A, (Latency > 0))
  logic [Width-1:0] rdData;
  if (QueueSize > 0) begin : gen_queue
    logic [QueueSize-1:0][Width-1:0] queue;
    always_ff @(posedge clk_i) begin
      queue <= (queue << Width) | rdData;
    end
    assign rdata_o = queue[QueueSize-1];
  end else begin : gen_no_queue
    assign rdata_o = rdData;
  end

  if(Width > 32) begin : gen_ecc_rom
    if (Depth == 32'h2000)  begin : gen_32k_rom
        rvscs_ot_32k_ecc_rom u_rom (
            .clk            (clk_i),
            .reset_         (rst_ni),
            .cEn            (rst_ni),
            .addr           (addr_i),
            .rdData         (rdData),
            // Software controller ports
            .LS             (cfg_i.test_cfg.ls),
            .ram_controls   (12'd4),
            .ram_dft_signals('0)
        );
      end else begin : gen_64k_rom
        rvscs_ot_64k_ecc_rom u_rom (
            .clk            (clk_i),
            .reset_         (rst_ni),
            .cEn            (rst_ni),
            .addr           (addr_i),
            .rdData         (rdData),
            // Software controller ports
            .LS             (cfg_i.test_cfg.ls),
            .ram_controls   (12'd4),
            .ram_dft_signals('0)
        );
      end
  end else begin : gen_no_ecc_rom
    if (Depth == 32'h2000)  begin : gen_32k_rom
      rvscs_ot_32k_rom u_rom (
          .clk            (clk_i),
          .reset_         (rst_ni),
          .cEn            (rst_ni),
          .addr           (addr_i),
          .rdData         (rdData),
          // Software controller ports
          .LS             (cfg_i.test_cfg.ls),
          .ram_controls   (12'd4),
          .ram_dft_signals('0)
      );
    end else begin : gen_64k_rom
      rvscs_ot_64k_rom u_rom (
          .clk            (clk_i),
          .reset_         (rst_ni),
          .cEn            (rst_ni),
          .addr           (addr_i),
          .rdData         (rdData),
          // Software controller ports
          .LS             (cfg_i.test_cfg.ls),
          .ram_controls   (12'd4),
          .ram_dft_signals('0)
      );
    end
  end
endmodule
