// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Clock inverter
//   Varies on the process

module prim_rdp_clock_inv #(
  parameter bit HasScanMode = 1'b1,
  parameter bit NoFpgaBufG  = 1'b0 // only used in FPGA case
) (
  input        clk_i,
  input        scanmode_i,
  output logic clk_no      // Inverted
);

import rdplib_pkg::*;

RDP_GATE_CKINV
  #(
    .STATUS(SIZE_ONLY)
  )
  ckinv_prim
  (
    .I(clk_i),
    .Z(clk_no)
  );

endmodule : prim_rdp_clock_inv
