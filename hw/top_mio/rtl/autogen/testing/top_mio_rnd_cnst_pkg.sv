// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
//
// util/topgen.py -t hw/top_mio/data/top_mio.hjson \
//                -o hw/top_mio/
//
// File is generated based on the following seed configuration:
//   hw/top_mio/data/top_mio_seed.testing.hjson


package top_mio_rnd_cnst_pkg;

  ////////////////////////////////////////////
  // sram_ctrl_ret_aon
  ////////////////////////////////////////////
  // Compile-time random reset value for SRAM scrambling key.
  parameter otp_ctrl_pkg::sram_key_t RndCnstSramCtrlRetAonSramKey = {
    128'hC5BB5EAC_1B50F6BF_20DCCBA6_C88548A2
  };

  // Compile-time random reset value for SRAM scrambling nonce.
  parameter otp_ctrl_pkg::sram_nonce_t RndCnstSramCtrlRetAonSramNonce = {
    128'h82B7D3D9_90AE66FC_A0F1DDC8_51351453
  };

  // Compile-time random bits for initial LFSR seed
  parameter sram_ctrl_pkg::lfsr_seed_t RndCnstSramCtrlRetAonLfsrSeed = {
    64'h2DFD1FCD_E2547613
  };

  // Compile-time random permutation for LFSR output
  parameter sram_ctrl_pkg::lfsr_perm_t RndCnstSramCtrlRetAonLfsrPerm = {
    128'hF8203A98_6F6E851C_ED39EA62_3C3D965F,
    256'h87085354_81F286F7_3502EF27_2B2333F6_19AD596A_29A1DD9F_B4F91717_E4134830
  };

  ////////////////////////////////////////////
  // sram_ctrl_main
  ////////////////////////////////////////////
  // Compile-time random reset value for SRAM scrambling key.
  parameter otp_ctrl_pkg::sram_key_t RndCnstSramCtrlMainSramKey = {
    128'hDC8E7F11_763279E0_1340A3E5_AD9F7AF4
  };

  // Compile-time random reset value for SRAM scrambling nonce.
  parameter otp_ctrl_pkg::sram_nonce_t RndCnstSramCtrlMainSramNonce = {
    128'h6D153037_EF1D93FF_64629143_A9ECAA01
  };

  // Compile-time random bits for initial LFSR seed
  parameter sram_ctrl_pkg::lfsr_seed_t RndCnstSramCtrlMainLfsrSeed = {
    64'h39B25B40_C4450DA3
  };

  // Compile-time random permutation for LFSR output
  parameter sram_ctrl_pkg::lfsr_perm_t RndCnstSramCtrlMainLfsrPerm = {
    128'hDC1B29AF_A6BC4B48_6EC7D08B_5B6E00B6,
    256'h570D0E6B_DE544C8A_7D367F31_D5F3609C_14EC83A0_8A4168E4_F9D1A9BF_901A31F5
  };

  ////////////////////////////////////////////
  // sram_ctrl_mbox
  ////////////////////////////////////////////
  // Compile-time random reset value for SRAM scrambling key.
  parameter otp_ctrl_pkg::sram_key_t RndCnstSramCtrlMboxSramKey = {
    128'h68C5CF48_C92FE464_2D78114A_48A03997
  };

  // Compile-time random reset value for SRAM scrambling nonce.
  parameter otp_ctrl_pkg::sram_nonce_t RndCnstSramCtrlMboxSramNonce = {
    128'h45873B59_792CEF69_F6635995_ABABE81C
  };

  // Compile-time random bits for initial LFSR seed
  parameter sram_ctrl_pkg::lfsr_seed_t RndCnstSramCtrlMboxLfsrSeed = {
    64'h846C908D_2398C15D
  };

  // Compile-time random permutation for LFSR output
  parameter sram_ctrl_pkg::lfsr_perm_t RndCnstSramCtrlMboxLfsrPerm = {
    128'h1943D6D2_8AB33266_A372BECA_C4264322,
    256'h2A61E7C4_9176F240_DD83B8C1_57D71CD6_C193A2EC_DBD17FCB_5967110B_537A0FAE
  };

  ////////////////////////////////////////////
  // rv_core_ibex_mio
  ////////////////////////////////////////////
  // Default seed of the PRNG used for random instructions.
  parameter ibex_pkg::lfsr_seed_t RndCnstRvCoreIbexMioLfsrSeed = {
    32'h4FAA89E5
  };

  // Permutation applied to the LFSR of the PRNG used for random instructions.
  parameter ibex_pkg::lfsr_perm_t RndCnstRvCoreIbexMioLfsrPerm = {
    160'hCA4F8E86_571187A8_454E692D_FD96A0E3_E8B67A68
  };

  // Default icache scrambling key
  parameter logic [ibex_pkg::SCRAMBLE_KEY_W-1:0] RndCnstRvCoreIbexMioIbexKeyDefault = {
    128'hC7F9EF3A_0BB542B7_A4E6470D_AB218002
  };

  // Default icache scrambling nonce
  parameter logic [ibex_pkg::SCRAMBLE_NONCE_W-1:0] RndCnstRvCoreIbexMioIbexNonceDefault = {
    64'hFDCA1DC4_1668D202
  };

endpackage : top_mio_rnd_cnst_pkg
