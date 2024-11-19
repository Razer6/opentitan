// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

`include "prim_assert.sv"

module prim_rdp_clock_buf #(
  // Turning off these verilator lints because keeping these parameters makes it consistent with
  // the IP in hw/ip/prim_xilinx/rtl/ .
  /* verilator lint_off UNUSED */
  parameter bit NoFpgaBuf = 1'b0, // serves no function in rdp
  parameter bit RegionSel = 1'b0  // serves no function in rdp
  /* verilator lint_on UNUSED */
) (
  input clk_i,
  output logic clk_o
);

import rdplib_pkg::*;

RDP_GATE_CKBUF
  #(
    .STATUS(SIZE_ONLY)
  )
  ckbuf_prim
  (
    .I(clk_i),
    .Z(clk_o)
  );

endmodule // prim_rdp_clock_buf
