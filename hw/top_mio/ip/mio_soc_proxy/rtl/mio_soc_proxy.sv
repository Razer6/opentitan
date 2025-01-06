// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

// SoC Proxy

`include "prim_assert.sv"

module mio_soc_proxy
  import mio_soc_proxy_reg_pkg::*;
  import mio_soc_proxy_pkg::*;
#(
  parameter logic [NumAlerts-1:0] AlertAsyncOn = {NumAlerts{1'b1}}
) (
  input  logic clk_i,
  input  logic rst_ni,

  input  tlul_pkg::tl_h2d_t core_tl_i,
  output tlul_pkg::tl_d2h_t core_tl_o,

  input  tlul_pkg::tl_h2d_t ctn_tl_i,
  output tlul_pkg::tl_d2h_t ctn_tl_o,

  input  prim_alert_pkg::alert_rx_t [NumAlerts-1:0] alert_rx_i,
  output prim_alert_pkg::alert_tx_t [NumAlerts-1:0] alert_tx_o,

  output logic [NumExternalIrqs-1:0] intr_external_o,

  input  logic [7:0] soc_lsio_trigger_i,
  output dma_pkg::lsio_trigger_t dma_lsio_trigger_o,

  output tlul_pkg::tl_h2d_t ctn_tl_h2d_o,
  input  tlul_pkg::tl_d2h_t ctn_tl_d2h_i,

  input  logic [NumExternalIrqs-1:0] soc_intr_async_i,

  input  lc_ctrl_pkg::lc_tx_t       lc_hw_debug_en_ext_i,
  output lc_ctrl_pkg::lc_tx_t       lc_hw_debug_en_o,

  input  lc_ctrl_pkg::lc_tx_t lc_escalate_en_ext_i,
  output  lc_ctrl_pkg::lc_tx_t lc_escalate_en_o,
  output  prim_mubi_pkg::mubi8_t mubi8_true_o
);

  // Feed through
  assign lc_hw_debug_en_o = lc_hw_debug_en_ext_i;
  assign lc_escalate_en_o = lc_escalate_en_ext_i;

  // Feed CTN TL-UL ports through.
  assign ctn_tl_h2d_o = ctn_tl_i;
  assign ctn_tl_o = ctn_tl_d2h_i;

  // Provide a MUBI8 true constant for the design
  assign mubi8_true_o = prim_mubi_pkg::MuBi8True; 

  // Register node
  mio_soc_proxy_core_reg2hw_t reg2hw;
  mio_soc_proxy_core_hw2reg_t hw2reg;
  logic reg_top_intg_err;
  mio_soc_proxy_core_reg_top u_reg (
    .clk_i,
    .rst_ni,
    .tl_i       (core_tl_i),
    .tl_o       (core_tl_o),
    .reg2hw,
    .hw2reg,
    .intg_err_o (reg_top_intg_err)
  );

  //////////////////////////////////////////////////////////////////////////////
  // Alerts
  //////////////////////////////////////////////////////////////////////////////
  logic [NumAlerts-1:0] alert_test, alert;

  assign alert[0]   = reg_top_intg_err;
  assign alert_test = {reg2hw.alert_test.q & reg2hw.alert_test.qe};

  for (genvar i = 0; i < NumAlerts; i++) begin : gen_alert_tx
    prim_alert_sender #(
      .AsyncOn(AlertAsyncOn[i]),
      .IsFatal(1'b1)
    ) u_prim_alert_sender (
      .clk_i         ( clk_i         ),
      .rst_ni        ( rst_ni        ),
      .alert_test_i  ( alert_test[i] ),
      .alert_req_i   ( alert[i]      ),
      .alert_ack_o   (               ),
      .alert_state_o (               ),
      .alert_rx_i    ( alert_rx_i[i] ),
      .alert_tx_o    ( alert_tx_o[i] )
    );
  end

  // Synchronize external interrupt signals
  logic [NumExternalIrqs-1:0] soc_intr;
  for (genvar i = 0; i < NumExternalIrqs; i++) begin : gen_sync_external_irqs
    prim_flop_2sync #(
      .Width(1)
    ) u_prim_flop_2sync (
      .clk_i,
      .rst_ni,
      .d_i(soc_intr_async_i[i]),
      .q_o(soc_intr[i])
    );
  end

  // Handle external interrupts
  prim_intr_hw #(
    .Width(NumExternalIrqs)
  ) u_prim_intr_hw (
    .clk_i,
    .rst_ni,
    .event_intr_i           (soc_intr),
    .reg2hw_intr_enable_q_i (reg2hw.intr_enable.q),
    .reg2hw_intr_test_q_i   (reg2hw.intr_test.q),
    .reg2hw_intr_test_qe_i  (reg2hw.intr_test.qe),
    .reg2hw_intr_state_q_i  (reg2hw.intr_state.q),
    .hw2reg_intr_state_de_o (hw2reg.intr_state.de),
    .hw2reg_intr_state_d_o  (hw2reg.intr_state.d),
    .intr_o                 (intr_external_o)
  );


  // Collate LSIO trigger inputs into signal for DMA
  // FIXME: Decide on assignment
  assign dma_lsio_trigger_o = {
    soc_lsio_trigger_i,
    3'b0
  };

  // All outputs should be known value after reset
  `ASSERT_KNOWN(AlertsKnown_A, alert_tx_o)

  // Assertions
  `ASSERT_PRIM_REG_WE_ONEHOT_ERROR_TRIGGER_ALERT(RegWeOnehotCheck_A, u_reg, alert_tx_o[0])
endmodule
