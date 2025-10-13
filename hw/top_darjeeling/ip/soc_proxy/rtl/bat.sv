// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

module bat (
  // Input port
  input  tlul_pkg::tl_h2d_t tl_in_h2d_i,
  output tlul_pkg::tl_d2h_t tl_in_d2h_o,

  // Integrator bits used for custom BAT
  input logic [3:0]         integrator_id_i,

  // Translated output port
  output tlul_pkg::tl_h2d_t tl_out_h2d_o,
  input  tlul_pkg::tl_d2h_t tl_out_d2h_i
);

  // A valid request in the range [1G,3G) or a broadcast request is considered to be valid
  logic ctn_request;
  assign ctn_request = tl_in_h2d_i.a_valid & (tl_in_h2d_i.a_address[31:30] >= 2'b01)
                                           & (tl_in_h2d_i.a_address[31:30] <  2'b11);

  logic [1:0] post_bat_addr_31_30;
  assign post_bat_addr_31_30 = tl_in_h2d_i.a_address[31:30] - 2'b01;

  // Need to subtract my socket and chip ID's before sending to SCX
  // so that transaction targeting our own SCS instance will stay on our SCX
  // before sending the transaction to CTN, the scsctnif module will add
  // my socket and chip ID's back
  logic[1:0] post_bat_sid, post_bat_cid;
  assign post_bat_sid = tl_in_h2d_i.a_address[29:28] - integrator_id_i[3:2]; // Socket ID
  assign post_bat_cid = tl_in_h2d_i.a_address[27:26] - integrator_id_i[1:0]; // Chiplet ID

  logic broadcast_pwc;
  assign broadcast_pwc = (tl_in_h2d_i.a_address[31:30] == 2'd01) &  // decode on pre-bat addr
                         (tl_in_h2d_i.a_address[25:21] == 5'd31) &
                         (tl_in_h2d_i.a_address[20:16] == 5'd9);

  // up-lift PWC.bcastAddr by 32K, assume there are less than 32K bcast registers
  logic [3:0] post_bat_page_id;
  assign post_bat_page_id = broadcast_pwc ? (tl_in_h2d_i.a_address[15:12] + 4'd8) :
                                             tl_in_h2d_i.a_address[15:12];

  logic [top_pkg::TL_AW-1:0] bat_address;

  // If there is a valid CTN request, perform the BAT (downlift to 0-1GB),
  // else use the original address
  assign bat_address = ctn_request ?          // CTN: [1G,2G), indicates wether addr[29:28],
    {                                         // [27:26] need to be recovered
      post_bat_addr_31_30,                    // Need to zero out [31:30] to shift ibex 1G-3G down to
                                              // system 0-2G
      post_bat_sid,                           // offset'ed SID, to-be-recovered
      post_bat_cid,                           // offset'ed CID, to-be-recovered
      tl_in_h2d_i.a_address[25:21],           // SSID is NOT altered, SSID for SCS is looped back by SCX,
                                              // otherwise routed to SCS's CTR
      tl_in_h2d_i.a_address[20:16],           // UID is not altered
      post_bat_page_id,                       // PageID is altered/recovered if {SSID = 31, UID = 9 = PWC}
      tl_in_h2d_i.a_address[11:0]
    }
    : tl_in_h2d_i.a_address;

  // Assemble the new TLUL request with the BAT'ed address
  tlul_pkg::tl_h2d_t tl_out_h2d_pre;
  assign tl_out_h2d_pre = '{
    a_valid:    tl_in_h2d_i.a_valid,
    a_opcode:   tl_in_h2d_i.a_opcode,
    a_size:     tl_in_h2d_i.a_size,
    a_source:   tl_in_h2d_i.a_source,
    a_address:  bat_address,
    a_mask:     tl_in_h2d_i.a_mask,
    a_user:     tl_in_h2d_i.a_user,
    a_data:     tl_in_h2d_i.a_data,
    a_param:    tl_in_h2d_i.a_param,
    d_ready:    tl_in_h2d_i.d_ready
  };

  // Regenerate integrity values after address change
  tlul_cmd_intg_gen u_cmd_intg_gen (
    .tl_i(tl_out_h2d_pre),
    .tl_o(tl_out_h2d_o)
  );

  // Feed back the response port
  assign tl_in_d2h_o = tl_out_d2h_i;

  // Integrator ID is unused in the open-source BAT
  logic unused_signals;
  assign unused_signals = ^integrator_id_i;
endmodule
