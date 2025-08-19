// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
//
// util/topgen.py -t hw/top_pwc/data/top_pwc.hjson \
//                -o hw/top_pwc/
//
// File is generated based on the following seed configuration:
//   hw/top_pwc/data/top_pwc_seed.dev.hjson


package top_pwc_rnd_cnst_pkg;

  ////////////////////////////////////////////
  // sram_ctrl_ret_aon
  ////////////////////////////////////////////
  // Compile-time random reset value for SRAM scrambling key.
  parameter otp_ctrl_pkg::sram_key_t RndCnstSramCtrlRetAonSramKey = {
    128'h8896974D_5F98EB1D_6290B7BB_E63D4B82
  };

  // Compile-time random reset value for SRAM scrambling nonce.
  parameter otp_ctrl_pkg::sram_nonce_t RndCnstSramCtrlRetAonSramNonce = {
    128'h626D6005_3C15CE1D_8CAAAFAB_F740C96D
  };

  // Compile-time random bits for initial LFSR seed
  parameter sram_ctrl_pkg::lfsr_seed_t RndCnstSramCtrlRetAonLfsrSeed = {
    64'h4039450E_325D5D56
  };

  // Compile-time random permutation for LFSR output
  parameter sram_ctrl_pkg::lfsr_perm_t RndCnstSramCtrlRetAonLfsrPerm = {
    128'h3837C2A3_79E1BD5E_40CFC6E3_997FF8D6,
    256'hEAD18ADA_4F736164_1D8F596B_250B9742_3AFB1250_B2A13B78_14CC29DC_065A048D
  };

  ////////////////////////////////////////////
  // sram_ctrl_main
  ////////////////////////////////////////////
  // Compile-time random reset value for SRAM scrambling key.
  parameter otp_ctrl_pkg::sram_key_t RndCnstSramCtrlMainSramKey = {
    128'h02548F22_F6E6C8CB_CCBFD6AE_D7D14714
  };

  // Compile-time random reset value for SRAM scrambling nonce.
  parameter otp_ctrl_pkg::sram_nonce_t RndCnstSramCtrlMainSramNonce = {
    128'h81103B5F_76D723C2_419DF4BE_83410D04
  };

  // Compile-time random bits for initial LFSR seed
  parameter sram_ctrl_pkg::lfsr_seed_t RndCnstSramCtrlMainLfsrSeed = {
    64'h1CC4590E_721008E8
  };

  // Compile-time random permutation for LFSR output
  parameter sram_ctrl_pkg::lfsr_perm_t RndCnstSramCtrlMainLfsrPerm = {
    128'h32DC2700_1E4BFEA6_513A25B1_221D136E,
    256'h0CA66A37_977C476B_F9548FF2_8BEEDE94_140981BB_147D73EB_635CE099_0A0EC97D
  };

  ////////////////////////////////////////////
  // sram_ctrl_mbox
  ////////////////////////////////////////////
  // Compile-time random reset value for SRAM scrambling key.
  parameter otp_ctrl_pkg::sram_key_t RndCnstSramCtrlMboxSramKey = {
    128'h9DAA7FD5_5DF626FE_693FC3AF_E61BC595
  };

  // Compile-time random reset value for SRAM scrambling nonce.
  parameter otp_ctrl_pkg::sram_nonce_t RndCnstSramCtrlMboxSramNonce = {
    128'hC095D102_7BD20ECE_CFFBA09B_074C0A27
  };

  // Compile-time random bits for initial LFSR seed
  parameter sram_ctrl_pkg::lfsr_seed_t RndCnstSramCtrlMboxLfsrSeed = {
    64'hF823C38C_97BFA0B0
  };

  // Compile-time random permutation for LFSR output
  parameter sram_ctrl_pkg::lfsr_perm_t RndCnstSramCtrlMboxLfsrPerm = {
    128'h3B2D0A8B_DD6951B6_3311C193_1D603604,
    256'hF81F251A_E53035EA_7AFC3B9F_19A8FD90_BEF12DED_B8D2E1E0_555DE634_2CE8891A
  };

  ////////////////////////////////////////////
  // rv_core_ibex_pwc
  ////////////////////////////////////////////
  // Default seed of the PRNG used for random instructions.
  parameter ibex_pkg::lfsr_seed_t RndCnstRvCoreIbexPwcLfsrSeed = {
    32'h3670D523
  };

  // Permutation applied to the LFSR of the PRNG used for random instructions.
  parameter ibex_pkg::lfsr_perm_t RndCnstRvCoreIbexPwcLfsrPerm = {
    160'hEBC5A987_F267B002_70AD51E9_15EEAE35_A091DD19
  };

  // Default icache scrambling key
  parameter logic [ibex_pkg::SCRAMBLE_KEY_W-1:0] RndCnstRvCoreIbexPwcIbexKeyDefault = {
    128'h4057CDAE_6DD80E2E_CD33A5FD_7C52AEDE
  };

  // Default icache scrambling nonce
  parameter logic [ibex_pkg::SCRAMBLE_NONCE_W-1:0] RndCnstRvCoreIbexPwcIbexNonceDefault = {
    64'h2F256E6D_E57E267D
  };

endpackage : top_pwc_rnd_cnst_pkg
