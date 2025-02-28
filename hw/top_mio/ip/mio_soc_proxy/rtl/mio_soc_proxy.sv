// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

// SoC Proxy

`include "prim_assert.sv"

module mio_soc_proxy
  import mio_soc_proxy_reg_pkg::*;
#(
  parameter logic [NumAlerts-1:0] AlertAsyncOn = {NumAlerts{1'b1}}
) (
  input  logic clk_i,
  input  logic rst_ni,

  // Device interface
  input  tlul_pkg::tl_h2d_t core_tl_i,
  output tlul_pkg::tl_d2h_t core_tl_o,

  // Egress port to CTN from fabric, to be muxed
  input  tlul_pkg::tl_h2d_t ctn_tl_i,
  output tlul_pkg::tl_d2h_t ctn_tl_o,

  // Incomig TL ports to get muxed
  input  tlul_pkg::tl_h2d_t dma_tl_h2d_i,
  output tlul_pkg::tl_d2h_t dma_tl_d2h_o,

  // Muxed TLUL port going to AC-Ranges
  output tlul_pkg::tl_h2d_t muxed_tl_h2d_o,
  input tlul_pkg::tl_d2h_t  muxed_tl_d2h_i,

  // AC-Range checked incoming port, to be BAT'ed
  input  tlul_pkg::tl_h2d_t ac_range_tl_h2d_i,
  output tlul_pkg::tl_d2h_t ac_range_tl_d2h_o,

  // Final egress port to CTN
  output tlul_pkg::tl_h2d_t ctn_tl_h2d_o,
  input  tlul_pkg::tl_d2h_t ctn_tl_d2h_i,

  input  prim_alert_pkg::alert_rx_t [NumAlerts-1:0] alert_rx_i,
  output prim_alert_pkg::alert_tx_t [NumAlerts-1:0] alert_tx_o,

  input  logic [7:0] soc_lsio_trigger_i,
  output dma_pkg::lsio_trigger_t dma_lsio_trigger_o,

  // Integrator bits used for custom BAT
  input logic [3:0] integrator_id_i,

  input  lc_ctrl_pkg::lc_tx_t       lc_hw_debug_en_ext_i,
  output lc_ctrl_pkg::lc_tx_t       lc_hw_debug_en_o,

  input  lc_ctrl_pkg::lc_tx_t lc_escalate_en_ext_i,
  output  lc_ctrl_pkg::lc_tx_t lc_escalate_en_o,
  output  prim_mubi_pkg::mubi8_t mubi8_true_o
);
  localparam int unsigned TLUL_HOST_CNT = 2;

  // TLUL egress port muxing. First stage all incoming TLUL ports and them mux them
  tlul_pkg::tl_h2d_t host_tl_h2d[TLUL_HOST_CNT];
  tlul_pkg::tl_d2h_t host_tl_d2h[TLUL_HOST_CNT];

  assign host_tl_h2d [0] = ctn_tl_i;
  assign ctn_tl_o        = host_tl_d2h[0];

  assign host_tl_h2d [1] = dma_tl_h2d_i;
  assign dma_tl_d2h_o    = host_tl_d2h[1];

  // Add a MUX with a pipeline stage to shorten path through AC ranges
  tlul_socket_m1 #(
    .M         ( TLUL_HOST_CNT         ),
    .HReqPass  ( {TLUL_HOST_CNT{1'b1}} ),
    .HRspPass  ( {TLUL_HOST_CNT{1'b1}} ),
    .HReqDepth ( {TLUL_HOST_CNT{4'd2}} ),
    .HRspDepth ( {TLUL_HOST_CNT{4'd2}} ),
    .DReqPass  ( 0                     ),
    .DRspPass  ( 0                     ),
    .DReqDepth ( 4'd4                  ),
    .DRspDepth ( 4'd4                  )
  ) u_ctn_egress_mux (
    .clk_i  ( clk_i          ),
    .rst_ni ( rst_ni         ),
    .tl_h_i ( host_tl_h2d    ),
    .tl_h_o ( host_tl_d2h    ),
    .tl_d_o ( muxed_tl_h2d_o ),
    .tl_d_i ( muxed_tl_d2h_i )
  );

  // Perform the base address translation of the incoming AC-Range-checked port before leaving
  bat u_bat (
    .tl_in_h2d_i     ( ac_range_tl_h2d_i ),
    .tl_in_d2h_o     ( ac_range_tl_d2h_o ),
    .integrator_id_i ( integrator_id_i   ),
    .tl_out_h2d_o    ( ctn_tl_h2d_o      ),
    .tl_out_d2h_i    ( ctn_tl_d2h_i      )
  );

  // Feed through
  assign lc_hw_debug_en_o = lc_hw_debug_en_ext_i;
  assign lc_escalate_en_o = lc_escalate_en_ext_i;

  // Provide a MUBI8 true constant for the design
  assign mubi8_true_o = prim_mubi_pkg::MuBi8True; 

  // Collate LSIO trigger inputs into signal for DMA
  // FIXME: Decide on assignment
  assign dma_lsio_trigger_o = {
    soc_lsio_trigger_i,
    3'b0
  };
endmodule
