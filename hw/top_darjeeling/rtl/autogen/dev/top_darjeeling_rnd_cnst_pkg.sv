// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
//
// util/topgen.py -t hw/top_darjeeling/data/top_darjeeling.hjson \
//                -o hw/top_darjeeling/
//
// File is generated based on the following seed configuration:
//   hw/top_darjeeling/data/top_darjeeling_seed.dev.hjson


package top_darjeeling_rnd_cnst_pkg;

  ////////////////////////////////////////////
  // otp_ctrl
  ////////////////////////////////////////////
  // Compile-time random bits for initial LFSR seed
  parameter otp_ctrl_top_specific_pkg::lfsr_seed_t RndCnstOtpCtrlLfsrSeed = {
    40'hB3_2B4BFB41
  };

  // Compile-time random permutation for LFSR output
  parameter otp_ctrl_top_specific_pkg::lfsr_perm_t RndCnstOtpCtrlLfsrPerm = {
    240'h1966_5E8E0350_2E291274_44C714A6_C325C515_7E53C898_C3A70576_1A461080
  };

  // Compile-time random permutation for scrambling key/nonce register reset value
  parameter otp_ctrl_top_specific_pkg::scrmbl_key_init_t RndCnstOtpCtrlScrmblKeyInit = {
    256'hDC35273B_2F45D645_80907C36_EF8F1EB6_812FD0E1_94BCC6F3_E6F873F1_D28685A4
  };

  // Compile-time scrambling key
  parameter otp_ctrl_top_specific_pkg::key_t RndCnstOtpCtrlScrmblKey0 = {
    128'hF0E2382E_0EE44FA9_895F24BE_4AC18E34
  };

  // Compile-time scrambling key
  parameter otp_ctrl_top_specific_pkg::key_t RndCnstOtpCtrlScrmblKey1 = {
    128'h211E2728_67D8A5B2_8F524626_BD2392B3
  };

  // Compile-time scrambling key
  parameter otp_ctrl_top_specific_pkg::key_t RndCnstOtpCtrlScrmblKey2 = {
    128'h31E66B47_01F65E59_AF83059C_C1BA5509
  };

  // Compile-time scrambling key
  parameter otp_ctrl_top_specific_pkg::key_t RndCnstOtpCtrlScrmblKey3 = {
    128'h12A87427_5AC734B9_3BF8F083_466EF2F3
  };

  // Compile-time digest const
  parameter otp_ctrl_top_specific_pkg::digest_const_t RndCnstOtpCtrlDigestConst0 = {
    128'h5A1C7508_47905CA4_2D31B460_654AEA39
  };

  // Compile-time digest const
  parameter otp_ctrl_top_specific_pkg::digest_const_t RndCnstOtpCtrlDigestConst1 = {
    128'h699A4150_668F160F_FE81243C_9287D208
  };

  // Compile-time digest initial vector
  parameter otp_ctrl_top_specific_pkg::digest_iv_t RndCnstOtpCtrlDigestIV0 = {
    64'hF076E0BA_6366DE58
  };

  // Compile-time digest initial vector
  parameter otp_ctrl_top_specific_pkg::digest_iv_t RndCnstOtpCtrlDigestIV1 = {
    64'hA8764C38_97D3B202
  };

  // OTP invalid partition default for buffered partitions
  parameter logic [163839:0] RndCnstOtpCtrlPartInvDefault = {
    704'({
      320'h16B804150E500E67BAEBD15763563A87060B4625E001576921BE10F789005A1796977F6B44FE52A3,
      384'h6E71603E685D8FC8176F082A72255D50D08CAF486494E0EB064E6BFCDBE9D9759F1A177EE75E0F2E02A96D4B1F386531
    }),
    384'({
      64'h0,
      64'hB4B96B49BFC13A95,
      256'h252FBEDE93CD37C0015E47FB139DDFE12BD761DCA1B66827691211D668CDD1D1
    }),
    1024'({
      64'h0,
      64'hBCEC8797AA2503A2,
      256'h90951309F4A77244630C990A861D6A95D54DFFE97DC11C7B124696289D48217D,
      256'h981BB9027D78744A1178D397D9613202949D5D7BDF74C45DC6E4BFD6B71600AB,
      256'hF5FE978FDB2CF17348F2ECFDA00FF81F9B06BFBE0B53D84EE6E2419AD5E131B,
      128'h6C6123CDB2FED8FA257C8EB73C8CBE4D
    }),
    256'({
      64'h0,
      64'h719E4F5B3F5FF28B,
      128'h55435B602A5AB236378B81C4A4807719
    }),
    384'({
      64'h0,
      64'h3055E3EE9F67513B,
      128'h890E0D04DCF054F0630C6A03511E9153,
      128'h10A3D07EAA1F193FAC7D7291FBAF3E2
    }),
    448'({
      64'h0,
      64'h81C72CA00A0EE6AA,
      32'h0, // unallocated space
      256'h2D09093501B8DC7E58A193A5710B49633FB0B56B9CADE203CBB0A66A4996D48E,
      32'h0
    }),
    192'({
      64'h0,
      64'hEF50A0A92F915523,
      48'h0, // unallocated space
      8'h69,
      8'h69
    }),
    384'({
      64'h0,
      64'hA3B1C77CEC761640,
      256'hE65ED1A810CA3C846BAE953B000ABD46598AFAB911240C43DBB448F23BC47EA5
    }),
    28736'({
      64'hD6086818C79B6C63,
      24576'h0,
      4096'h0
    }),
    4160'({
      64'h63FDCCA98F1E5E73,
      2048'h0,
      2048'h0
    }),
    90432'({
      64'h0,
      64'h22C5BEED02C23E42,
      16768'h0, // unallocated space
      73536'h0
    }),
    8256'({
      64'h0,
      8192'h0
    }),
    1280'({
      64'h0,
      64'h152A4B971F489C29,
      512'h0,
      32'h0,
      32'h0,
      512'h0,
      32'h0,
      32'h0
    }),
    1280'({
      64'h0,
      64'h22FB44BB7D274CF,
      512'h0,
      32'h0,
      32'h0,
      512'h0,
      32'h0,
      32'h0
    }),
    1280'({
      64'h0,
      64'hDA058B9112E129D1,
      512'h0,
      32'h0,
      32'h0,
      512'h0,
      32'h0,
      32'h0
    }),
    1280'({
      64'h0,
      64'hA16E8CB4BABED257,
      512'h0,
      32'h0,
      32'h0,
      512'h0,
      32'h0,
      32'h0
    }),
    1280'({
      64'h0,
      64'hB7953EDFB738EAD4,
      512'h0,
      32'h0,
      32'h0,
      512'h0,
      32'h0,
      32'h0
    }),
    1280'({
      64'h0,
      64'h361453D50B61FC7C,
      512'h0,
      32'h0,
      32'h0,
      512'h0,
      32'h0,
      32'h0
    }),
    1280'({
      64'h0,
      64'h29D9A7CB4087FDA5,
      512'h0,
      32'h0,
      32'h0,
      512'h0,
      32'h0,
      32'h0
    }),
    2752'({
      64'h0,
      64'hCAF13CCA8709C866,
      512'h0,
      128'h0,
      256'h0,
      512'h0,
      32'h0,
      32'h0,
      512'h0,
      32'h0,
      32'h0,
      512'h0,
      32'h0,
      32'h0
    }),
    6400'({
      64'h0,
      64'hC836603E55433E23,
      128'h0,
      6144'h0
    }),
    448'({
      64'h0,
      128'h0,
      128'h0,
      128'h0
    }),
    7808'({
      64'h0,
      64'hF7ED5D88AA992459,
      32'h0, // unallocated space
      32'h0,
      32'h0,
      32'h0,
      32'h0,
      32'h0,
      32'h0,
      32'h0,
      512'h0,
      128'h0,
      128'h0,
      224'h0,
      6304'h0,
      32'h0,
      32'h0,
      32'h0,
      32'h0
    }),
    1536'({
      64'h0,
      64'h40623D68DDD36C05,
      32'h0, // unallocated space
      32'h0,
      32'h0,
      32'h0,
      32'h0,
      32'h0,
      32'h0,
      32'h0,
      32'h0,
      32'h69696969,
      32'h69696969,
      32'h69696969,
      32'h0,
      992'h0
    }),
    576'({
      64'h0,
      64'h989BDB0D3D478148,
      448'h0
    })
  };

  ////////////////////////////////////////////
  // lc_ctrl
  ////////////////////////////////////////////
  // Diversification value used for all invalid life cycle states.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivInvalid = {
    128'hF355F72B_611D5652_D64357BE_40F691BF
  };

  // Diversification value used for the TEST_UNLOCKED* life cycle states.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivTestUnlocked = {
    128'hA0933852_B77F31FA_8CA3711E_69C2DC35
  };

  // Diversification value used for the DEV life cycle state.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivDev = {
    128'h89CB05EB_C5A6127B_DE4A548A_616105D0
  };

  // Diversification value used for the PROD/PROD_END life cycle states.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivProduction = {
    128'hEDF98CA3_08594783_4F20F8C5_743463B1
  };

  // Diversification value used for the RMA life cycle state.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivRma = {
    128'h5B05DC93_32084A51_F812A1C9_E5D139CE
  };

  // Compile-time random bits used for invalid tokens in the token mux
  parameter lc_ctrl_pkg::lc_token_mux_t RndCnstLcCtrlInvalidTokens = {
    256'hD883451D_E75A31A1_7164A55B_7B63F36A_1FDEC483_6F95FF7F_93FC45F3_A040F968,
    256'hA66269F5_ADBC3987_4D0FD759_5A4FE290_4C507C76_37B96AB9_6EA9FA51_59E141FF,
    256'hFE2ACD7E_9B4300DC_B9E7FA3F_9EE3496E_F3B39F0D_0A3E8F03_4819B51A_0BD224C7,
    256'h42D5464A_FE5291C6_AF924006_28DB87E3_122C8E7A_B4B794C9_FB8F1264_E4C41CC5
  };

  ////////////////////////////////////////////
  // alert_handler
  ////////////////////////////////////////////
  // Compile-time random bits for initial LFSR seed
  parameter alert_handler_pkg::lfsr_seed_t RndCnstAlertHandlerLfsrSeed = {
    32'h6AD0FCCD
  };

  // Compile-time random permutation for LFSR output
  parameter alert_handler_pkg::lfsr_perm_t RndCnstAlertHandlerLfsrPerm = {
    160'hD244D356_FEFA07D5_B3219B9E_0C1CB682_894DCA3C
  };

  ////////////////////////////////////////////
  // sram_ctrl_ret_aon
  ////////////////////////////////////////////
  // Compile-time random reset value for SRAM scrambling key.
  parameter otp_ctrl_pkg::sram_key_t RndCnstSramCtrlRetAonSramKey = {
    128'h2786311D_5E97E8F1_1887B129_EDA81399
  };

  // Compile-time random reset value for SRAM scrambling nonce.
  parameter otp_ctrl_pkg::sram_nonce_t RndCnstSramCtrlRetAonSramNonce = {
    128'hECEF31C2_0932FEA4_BE4C50E1_B7DDE95E
  };

  // Compile-time random bits for initial LFSR seed
  parameter sram_ctrl_pkg::lfsr_seed_t RndCnstSramCtrlRetAonLfsrSeed = {
    64'h6EB2922B_1AE5A610
  };

  // Compile-time random permutation for LFSR output
  parameter sram_ctrl_pkg::lfsr_perm_t RndCnstSramCtrlRetAonLfsrPerm = {
    128'h7DDE60F2_1C2DBBD3_FE43B949_3998DA52,
    256'h80669F4C_88EAB5C6_D95E2928_4591A8BF_E2613783_DD2C5B90_D1423001_F3BEC735
  };

  ////////////////////////////////////////////
  // aes
  ////////////////////////////////////////////
  // Default seed of the PRNG used for register clearing.
  parameter aes_pkg::clearing_lfsr_seed_t RndCnstAesClearingLfsrSeed = {
    64'h56FAB59A_80403AB2
  };

  // Permutation applied to the LFSR of the PRNG used for clearing.
  parameter aes_pkg::clearing_lfsr_perm_t RndCnstAesClearingLfsrPerm = {
    128'hEDB7A14D_CA170E6E_7F04E47A_DB49EFAC,
    256'h07D0218C_84B7DCCD_B8F1D6A4_5954F15F_9276AC02_8242A366_2E0BB373_3127519A
  };

  // Permutation applied to the clearing PRNG output for clearing the second share of registers.
  parameter aes_pkg::clearing_lfsr_perm_t RndCnstAesClearingSharePerm = {
    128'h2D0C1421_790A6A78_D6F7814C_1BECEDDA,
    256'h2F3A49EB_32EEE45B_BE5D7F38_D8377D90_15C79A53_3E1AE670_9A87074A_040980DD
  };

  // Default seed of the PRNG used for masking.
  parameter aes_pkg::masking_lfsr_seed_t RndCnstAesMaskingLfsrSeed = {
    32'hBB733617,
    256'h750180AF_8CFFB4A2_B532BE96_1A90C7C4_AFFEDCD8_84701D7C_9E9C4B4A_0D8543CE
  };

  // Permutation applied to the output of the PRNG used for masking.
  parameter aes_pkg::masking_lfsr_perm_t RndCnstAesMaskingLfsrPerm = {
    256'h85887B69_278D9150_28613C80_60317616_365A7F1D_67993E15_664E2635_03095B87,
    256'h6D0B7806_2E7E5D3F_71465477_86402B94_0A90708C_64829579_20744321_8A450058,
    256'h3D2C5C14_9C309B13_9357021F_0C7A416C_9D0D8F49_979E2F6A_39470138_2D9F101E,
    256'h044D341A_1B086B92_4A127381_37330718_24727552_4C5F598B_6884627D_8E3A9A23,
    256'h4F325105_6E655529_2A3B6F22_4B255E17_42110E19_4889440F_1C56967C_63985383
  };

  ////////////////////////////////////////////
  // kmac
  ////////////////////////////////////////////
  // Compile-time random data for PRNG default seed
  parameter kmac_pkg::lfsr_seed_t RndCnstKmacLfsrSeed = {
    32'h7324735D,
    256'h0C69B49B_47470DD3_5C36BF88_47F4A778_E3E9D366_4480F6C0_ACFBF945_4DAA8147
  };

  // Compile-time random permutation for PRNG output
  parameter kmac_pkg::lfsr_perm_t RndCnstKmacLfsrPerm = {
    64'h2FAED209_4DB4004B,
    256'h8A859252_90FADC1A_5BC0F13E_63713BAD_65639153_171D039B_B63E1308_5B121620,
    256'h6CCAE428_FA2AAAE4_A84C54C5_204E659E_30A1C556_1E832818_1D9743B0_DE2123EA,
    256'h859AFEB7_9EE72688_74D8777C_8654AAA4_0DBD3A68_97E0B185_05F8BCEB_BA57536A,
    256'hE725ACD8_CDDD8712_CA6D2E9B_3036D034_7D1DE27C_0142C979_D9507CC2_287C20BB,
    256'h905B6DD0_5D061398_D92602C3_209E2CD5_B509EC18_EB45BABE_4C91084A_2EBE5CC2,
    256'h2CADB0DB_9A1935C6_9183CE9F_8203D0BE_B972A7EC_250D8612_BAE99112_59B07B02,
    256'h98CCE224_5A5ECA53_05F697DB_88325997_A1092EBF_6B9490C1_002D6F41_45D120C0,
    256'h0029EA29_9860B9FA_3188D58F_140D66F8_FA0F32A7_460E7D01_EC96F876_2C9231F8,
    256'h804929C8_6CF5449C_8AEDE7A6_8D41FEE4_4584F98A_4C3B514C_35A68754_65DAF304,
    256'h994AC0E5_7541610F_11B017AC_15679CCE_81CF065E_70E139D6_09225B94_289B62D1,
    256'h64156E80_505EF07C_4BF6A592_73651B2E_F7B68CCA_BDCE49CF_F8D8748A_F0F671EF,
    256'h76C422B1_2135ECE1_AAE80449_C062CFC2_C5457045_50717807_0C7FAD70_D802C607,
    256'h0990A34C_46D695C4_135459B8_EF470E09_5CC2A4E8_C5622909_AD2A0E5B_4F184292,
    256'h5058ABC4_C1083464_A9A5737C_0CDC72BD_B8C7B025_39A38BD1_58DC761A_BA02842A,
    256'h5E53D204_9C844ADA_429E5077_B52590E7_77AEDD60_9931E624_5B6230A5_FBB28BA5,
    256'h2D895A6A_6C6C3871_49511C46_1796F18A_F1BE20B5_B2388696_847CDEB0_4BC9FC3F,
    256'hB1A26768_BBB60062_745062C4_8752F6A9_15D681CB_1917067A_96622821_62FF800A,
    256'h239D5144_46667E0D_82477C23_1EA8DA4A_78A1808D_03101B91_48A9A95A_A44F243E,
    256'h2CA88DF9_9CB76554_8784C051_D5417270_464A7BE8_B07FE877_E5908A8C_382A5565,
    256'hDE889DAC_5846F1AF_04391AD8_451E3E5E_98DC6894_D2DA610E_706EC052_C25FCDB0,
    256'h228ABEED_115C2B43_0B4A0619_38E5424E_FD2ACA8C_4A526A92_6631175F_6AB789CF,
    256'hA75E675C_0D24A999_C6A72387_84828B3A_934C7C27_4F4B6919_2F196A11_4C0C408A,
    256'hF9626807_3078F031_7DDDC749_094FE3A0_CF1968ED_6BA81993_8FE2516A_B32AD105,
    256'h5E718FC1_CAB355E0_78D23203_DE33C1A1_66580B84_2D61410A_E0232824_88552834,
    256'h83A88940_3ED72591_7766960A_3E7A4066_09993A8D_490AA5B6_BBCC7B65_F26591A2,
    256'h22E696AA_0958D362_B154CD9D_AC899A48_C91288C9_041FB540_39864F70_A90174EC,
    256'h5AE7B26C_6E8A0F71_D543C02A_C80D784D_E058F6C7_3887D475_366C2443_C49A6885,
    256'h5781F58E_695ADDB7_AC5550AA_7C6C922B_F2C53748_757CB921_1C32454A_B11063DA,
    256'h944E23FA_964DA35F_D6D47C09_40B7014E_C599883A_402E1443_5B10564F_8355A820,
    256'h45B0E701_BD513B4E_757F0408_7A3B8C2D_41814C1B_01AB7D4F_12EB56FD_819711B3,
    256'h85E48C4C_BB8247A5_DA73F5AF_5F0CF5C5_C73B8D88_5867412F_29ADD9B2_2175F93B
  };

  // Compile-time random data for PRNG buffer default seed
  parameter kmac_pkg::buffer_lfsr_seed_t RndCnstKmacBufferLfsrSeed = {
    32'hB67B7FD9,
    256'h80FF521C_C6D095FA_6BD8BCBA_EDC43FBC_E07AE412_A847EAE7_93FDF593_8AF33831,
    256'h91616A36_862CF1A8_8C497A96_38D45BEB_796B2850_EF6F7E71_4EC8B9BE_550DEC89,
    256'h4B1A86AE_72D5A12F_5502E7FF_F2DECCDD_52804C53_A10134BD_8ADB6B9C_C701EEF1
  };

  // Compile-time random permutation for LFSR Message output
  parameter kmac_pkg::msg_perm_t RndCnstKmacMsgPerm = {
    128'hC62508EA_65AE00AF_4383EFF9_B611C237,
    256'h239FE10C_05CECAB5_05190F6F_C1939D2A_1568932B_11C2DDDA_57A3BFBA_57D18DD9
  };

  ////////////////////////////////////////////
  // otbn
  ////////////////////////////////////////////
  // Default seed of the PRNG used for URND.
  parameter otbn_pkg::urnd_prng_seed_t RndCnstOtbnUrndPrngSeed = {
    256'h64D338B0_068E492D_5DBF299B_32784855_4BD78E6C_B5B258D5_7A195A5E_069FEA70
  };

  // Compile-time random reset value for IMem/DMem scrambling key.
  parameter otp_ctrl_pkg::otbn_key_t RndCnstOtbnOtbnKey = {
    128'h8041BCE6_9F5C7420_20203692_1F4ED455
  };

  // Compile-time random reset value for IMem/DMem scrambling nonce.
  parameter otp_ctrl_pkg::otbn_nonce_t RndCnstOtbnOtbnNonce = {
    64'hD1093666_6D7B149C
  };

  ////////////////////////////////////////////
  // keymgr_dpe
  ////////////////////////////////////////////
  // Compile-time random bits for initial LFSR seed
  parameter keymgr_pkg::lfsr_seed_t RndCnstKeymgrDpeLfsrSeed = {
    64'h04D22DE2_4FBA09D5
  };

  // Compile-time random permutation for LFSR output
  parameter keymgr_pkg::lfsr_perm_t RndCnstKeymgrDpeLfsrPerm = {
    128'hF2034E24_221D5689_43F61E4F_D8CB84C9,
    256'hACD98EF4_547A2927_5F0631A4_11ACF964_07034D6D_E1BEBB7F_F4F72DC4_8A166AAB
  };

  // Compile-time random permutation for entropy used in share overriding
  parameter keymgr_pkg::rand_perm_t RndCnstKeymgrDpeRandPerm = {
    160'h946CE030_55D8F194_1C9E8366_90BE8AE6_BA6FAEE5
  };

  // Compile-time random bits for revision seed
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeRevisionSeed = {
    256'hD3C7B5DA_91F92D26_603D7160_8D11DFF2_FE679E73_923A08F6_9B2B313F_35E21DC1
  };

  // Compile-time random bits for software generation seed
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeSoftOutputSeed = {
    256'hF0DC50F6_13305A3B_D0649F94_6DFDE30B_39E0930F_59DD2B3F_356EAC67_C8E02D98
  };

  // Compile-time random bits for hardware generation seed
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeHardOutputSeed = {
    256'hB9444C53_0CF9F2C6_C8EB6553_849A513A_D5BC3C08_7BC188D7_D33F57B2_74420B32
  };

  // Compile-time random bits for generation seed when aes destination selected
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeAesSeed = {
    256'h49DABBE2_1E7E8310_8734BFD5_39865377_06638863_1CF68EDF_F9E99F89_531FFF1E
  };

  // Compile-time random bits for generation seed when kmac destination selected
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeKmacSeed = {
    256'hB9CCF256_BF6FF67C_6A07B169_FAD7DDD9_8E9E01FE_2772E851_1A320B24_2306DFDC
  };

  // Compile-time random bits for generation seed when otbn destination selected
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeOtbnSeed = {
    256'h4084CB3D_4DA21D16_3C007099_3270A2D2_A94B466A_1D7641EC_D34918FE_43E3DB0B
  };

  // Compile-time random bits for generation seed when no destination selected
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeNoneSeed = {
    256'h29736B86_B8D69144_1FA5D262_0E71B0BD_784D8DEB_951E74C5_B4241377_963DC7F7
  };

  ////////////////////////////////////////////
  // csrng
  ////////////////////////////////////////////
  // Compile-time random bits for csrng state group diversification value
  parameter csrng_pkg::cs_keymgr_div_t RndCnstCsrngCsKeymgrDivNonProduction = {
    128'hE11A33ED_9ED3D7B3_2E6E9EC7_56EEC0D7,
    256'h13707398_B3C4BF69_F9B78701_AF8BCE26_443C9C0C_05CFCFFA_E5B001E6_6F8B69D7
  };

  // Compile-time random bits for csrng state group diversification value
  parameter csrng_pkg::cs_keymgr_div_t RndCnstCsrngCsKeymgrDivProduction = {
    128'h3DC5679C_54EECE99_3B065A58_97BA8658,
    256'h3CAFCBA5_C198863A_B538ED09_EFD6AA87_78726FC0_08FDB91F_E718CF78_7475F9B6
  };

  ////////////////////////////////////////////
  // sram_ctrl_main
  ////////////////////////////////////////////
  // Compile-time random reset value for SRAM scrambling key.
  parameter otp_ctrl_pkg::sram_key_t RndCnstSramCtrlMainSramKey = {
    128'hC633DE89_CC3671E2_380A788A_F2BD5C43
  };

  // Compile-time random reset value for SRAM scrambling nonce.
  parameter otp_ctrl_pkg::sram_nonce_t RndCnstSramCtrlMainSramNonce = {
    128'h31E3C2C3_0AA6C060_577D3B69_9444600E
  };

  // Compile-time random bits for initial LFSR seed
  parameter sram_ctrl_pkg::lfsr_seed_t RndCnstSramCtrlMainLfsrSeed = {
    64'h43A5715F_3E99A5FE
  };

  // Compile-time random permutation for LFSR output
  parameter sram_ctrl_pkg::lfsr_perm_t RndCnstSramCtrlMainLfsrPerm = {
    128'h22B1DA89_04569A95_74138F12_6F230D01,
    256'h4B45E8F6_5DC02DC9_2BF05CC6_3A86A33D_8EB20975_9E4F98BA_F87D7C3E_57ECB793
  };

  ////////////////////////////////////////////
  // sram_ctrl_mbox
  ////////////////////////////////////////////
  // Compile-time random reset value for SRAM scrambling key.
  parameter otp_ctrl_pkg::sram_key_t RndCnstSramCtrlMboxSramKey = {
    128'hA034DDF1_60FF98E5_916D6F44_A718E526
  };

  // Compile-time random reset value for SRAM scrambling nonce.
  parameter otp_ctrl_pkg::sram_nonce_t RndCnstSramCtrlMboxSramNonce = {
    128'hB69D6E57_5DE83DA8_A33A86E0_8E65BCA8
  };

  // Compile-time random bits for initial LFSR seed
  parameter sram_ctrl_pkg::lfsr_seed_t RndCnstSramCtrlMboxLfsrSeed = {
    64'h644F5EE8_768EF3E4
  };

  // Compile-time random permutation for LFSR output
  parameter sram_ctrl_pkg::lfsr_perm_t RndCnstSramCtrlMboxLfsrPerm = {
    128'h834ED0A9_9A0923A5_13570B71_BDEDA13C,
    256'h3B0AF371_AE61B07E_AD7CF9D7_DE3F7661_E29DCCA4_7DA48501_62E93519_4E08C8C4
  };

  ////////////////////////////////////////////
  // rom_ctrl0
  ////////////////////////////////////////////
  // Fixed nonce used for address / data scrambling
  parameter bit [63:0] RndCnstRomCtrl0ScrNonce = {
    64'hF7378049_E629B0EB
  };

  // Randomised constant used as a scrambling key for ROM data
  parameter bit [127:0] RndCnstRomCtrl0ScrKey = {
    128'h423C5E45_1571A80F_5F842CB0_C356BA06
  };

  ////////////////////////////////////////////
  // rom_ctrl1
  ////////////////////////////////////////////
  // Fixed nonce used for address / data scrambling
  parameter bit [63:0] RndCnstRomCtrl1ScrNonce = {
    64'h5C30ED9F_924E9E46
  };

  // Randomised constant used as a scrambling key for ROM data
  parameter bit [127:0] RndCnstRomCtrl1ScrKey = {
    128'h717A83C5_159F938F_5C27BF3E_BCB99FA1
  };

  ////////////////////////////////////////////
  // rv_core_ibex
  ////////////////////////////////////////////
  // Default seed of the PRNG used for random instructions.
  parameter ibex_pkg::lfsr_seed_t RndCnstRvCoreIbexLfsrSeed = {
    32'hF48F1D4F
  };

  // Permutation applied to the LFSR of the PRNG used for random instructions.
  parameter ibex_pkg::lfsr_perm_t RndCnstRvCoreIbexLfsrPerm = {
    160'hF59857A9_68225DBC_B475C4FA_6D70E2BF_E8184412
  };

  // Default icache scrambling key
  parameter logic [ibex_pkg::SCRAMBLE_KEY_W-1:0] RndCnstRvCoreIbexIbexKeyDefault = {
    128'h88C3C741_F40B62C6_CF238A0C_08DDD9C5
  };

  // Default icache scrambling nonce
  parameter logic [ibex_pkg::SCRAMBLE_NONCE_W-1:0] RndCnstRvCoreIbexIbexNonceDefault = {
    64'h6F122353_DCBAC0C5
  };

endpackage : top_darjeeling_rnd_cnst_pkg
