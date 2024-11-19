// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

`include "prim_assert.sv"

module prim_rdp_clock_mux2 #(
  parameter bit NoFpgaBufG = 1'b0 // this parameter serves no function in the rdp model
) (
  input        clk0_i,
  input        clk1_i,
  input        sel_i,
  output logic clk_o
);

import rdplib_pkg::*;

  logic sel_bar;
  logic clk0_and;
  logic clk1_and;

  RDP_GATE_CKINV
  #(
    .STATUS(SIZE_ONLY)
  )
  sel_inv
  (
    .I(sel_i),
    .Z(sel_bar)
  );

  RDP_GATE_CKAN2
  #(
    .STATUS(SIZE_ONLY)
  )
  clk1_sel
  (
    .A1(sel_i),
    .A2(clk1_i),
    .Z(clk1_and)
  );

  RDP_GATE_CKAN2
  #(
    .STATUS(SIZE_ONLY)
  )
  clk0_sel
  (
    .A1(sel_bar),
    .A2(clk0_i),
    .Z(clk0_and)
  );

  RDP_GATE_CKOR2
  #(
    .STATUS(SIZE_ONLY)
  )
  mux_or
  (
    .A1(clk1_and),
    .A2(clk0_and),
    .Z(clk_o)
  );

  // make sure sel is never X (including during reset)
  // need to use ##1 as this could break with inverted clocks that
  // start with a rising edge at the beginning of the simulation.
  `ASSERT(selKnown0, ##1 !$isunknown(sel_i), clk0_i, 0)
  `ASSERT(selKnown1, ##1 !$isunknown(sel_i), clk1_i, 0)

endmodule : prim_rdp_clock_mux2
