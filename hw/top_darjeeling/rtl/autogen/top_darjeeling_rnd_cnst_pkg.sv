// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
//
// util/topgen.py -t hw/top_darjeeling/data/top_darjeeling.hjson \
//                -o hw/top_darjeeling/ \
//                --rnd_cnst_seed \
//                1017106219537032642877583828875051302543807092889754935647094601236425074047


package top_darjeeling_rnd_cnst_pkg;

  ////////////////////////////////////////////
  // otp_ctrl
  ////////////////////////////////////////////
  // Compile-time random bits for initial LFSR seed
  parameter otp_ctrl_top_specific_pkg::lfsr_seed_t RndCnstOtpCtrlLfsrSeed = {
    40'hDC_BE6B240C
  };

  // Compile-time random permutation for LFSR output
  parameter otp_ctrl_top_specific_pkg::lfsr_perm_t RndCnstOtpCtrlLfsrPerm = {
    240'h64D5_E1943460_7081533A_49815404_129C9884_8DF6DD79_63CB6872_8661408C
  };

  // Compile-time random permutation for scrambling key/nonce register reset value
  parameter otp_ctrl_top_specific_pkg::scrmbl_key_init_t RndCnstOtpCtrlScrmblKeyInit = {
    256'h1439A9DD_E6320801_FDCF25A4_FBA52839_9117069E_77C887F5_3DDA6FB4_EF8758B9
  };

  ////////////////////////////////////////////
  // lc_ctrl
  ////////////////////////////////////////////
  // Diversification value used for all invalid life cycle states.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivInvalid = {
    128'h9027B6AA_7468BC0B_D8D70368_E7CFB11A
  };

  // Diversification value used for the TEST_UNLOCKED* life cycle states.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivTestUnlocked = {
    128'h99675B14_62406193_35A9E2D1_23834D18
  };

  // Diversification value used for the DEV life cycle state.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivDev = {
    128'h744778BE_5E63C087_E36838B5_6B1A45F6
  };

  // Diversification value used for the PROD/PROD_END life cycle states.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivProduction = {
    128'hFD312F53_53FA7B2C_E9FC83DD_AF1DD8C5
  };

  // Diversification value used for the RMA life cycle state.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivRma = {
    128'hA42E2AD2_4FA02221_B6FF5AAD_7A9C09D5
  };

  // Compile-time random bits used for invalid tokens in the token mux
  parameter lc_ctrl_pkg::lc_token_mux_t RndCnstLcCtrlInvalidTokens = {
    256'hD9FDD1CF_CF512835_C0CFAE2E_D0C69FA4_88685CEA_9BC1C89B_FB7399AE_F5C6EB5D,
    256'h6E4E2341_6A0AA6D7_AC7EC9C3_304470FB_E505F964_9400CA98_64FD4CE4_9D2CFC6E,
    256'hCC102540_EAD87347_00A52071_32689471_AA822BC5_1CDD4D37_AC2D246C_4264F37E,
    256'hC1982017_94ADDA1B_16929DF5_E06A56AA_DED44325_9FFB5736_DD680121_5B98E162
  };

  ////////////////////////////////////////////
  // alert_handler
  ////////////////////////////////////////////
  // Compile-time random bits for initial LFSR seed
  parameter alert_handler_pkg::lfsr_seed_t RndCnstAlertHandlerLfsrSeed = {
    32'hDCC09E31
  };

  // Compile-time random permutation for LFSR output
  parameter alert_handler_pkg::lfsr_perm_t RndCnstAlertHandlerLfsrPerm = {
    160'h95EBC8BC_06B05981_CFDF5260_B6EB62A3_899414FD
  };

  ////////////////////////////////////////////
  // sram_ctrl_ret_aon
  ////////////////////////////////////////////
  // Compile-time random reset value for SRAM scrambling key.
  parameter otp_ctrl_pkg::sram_key_t RndCnstSramCtrlRetAonSramKey = {
    128'h6D6DBB8E_C647D1E0_B0EB4A62_07CFD23A
  };

  // Compile-time random reset value for SRAM scrambling nonce.
  parameter otp_ctrl_pkg::sram_nonce_t RndCnstSramCtrlRetAonSramNonce = {
    128'hFC55C8CD_2624B091_B0DACF22_1B8A66FD
  };

  // Compile-time random bits for initial LFSR seed
  parameter sram_ctrl_pkg::lfsr_seed_t RndCnstSramCtrlRetAonLfsrSeed = {
    64'h23A69CF3_4B6A0CD0
  };

  // Compile-time random permutation for LFSR output
  parameter sram_ctrl_pkg::lfsr_perm_t RndCnstSramCtrlRetAonLfsrPerm = {
    128'h1641F9A7_B4CF63FB_A835D50B_061DA3BF,
    256'h3710120F_27197F5E_ABA496AF_E7CA972D_62230011_E2C2710E_D3B455AD_C299B319
  };

  ////////////////////////////////////////////
  // aes
  ////////////////////////////////////////////
  // Default seed of the PRNG used for register clearing.
  parameter aes_pkg::clearing_lfsr_seed_t RndCnstAesClearingLfsrSeed = {
    64'hD201BDB4_35D5CFF9
  };

  // Permutation applied to the LFSR of the PRNG used for clearing.
  parameter aes_pkg::clearing_lfsr_perm_t RndCnstAesClearingLfsrPerm = {
    128'hC4354ACD_A74091FD_AD8D897B_8896C75B,
    256'h02E617C5_0DFF7335_0BAA9EBE_BB11BB91_1283D1A7_721A533B_4E0123EC_8F668417
  };

  // Permutation applied to the clearing PRNG output for clearing the second share of registers.
  parameter aes_pkg::clearing_lfsr_perm_t RndCnstAesClearingSharePerm = {
    128'hE7AEE859_9F32BDD0_408B6D5B_A9730E4B,
    256'h850B0959_20FE322B_F5C84A3C_91917E9C_2E4D06A6_9DE1ECCF_40C4171F_AD365DD8
  };

  // Default seed of the PRNG used for masking.
  parameter aes_pkg::masking_lfsr_seed_t RndCnstAesMaskingLfsrSeed = {
    32'h31CD3062,
    256'hADF6D00B_7E756F81_353C10AC_316A9C7A_EF342B29_63C98809_813C2B4C_006E43BC
  };

  // Permutation applied to the output of the PRNG used for masking.
  parameter aes_pkg::masking_lfsr_perm_t RndCnstAesMaskingLfsrPerm = {
    256'h0168021C_9E070E67_51423310_8274922C_2E7A570F_1B41935C_75187889_7C8C9D15,
    256'h88614D34_0D5A861F_9C5B6F4B_1A9F7F5F_65808A54_293B9811_3E2B0B9B_63486630,
    256'h054F2153_878F7139_4A12722D_522F905E_4C403756_9547080C_64270A35_136A2836,
    256'h7E008D96_5997048B_7B833216_0617736C_50253F24_94311D4E_77691923_5D62911E,
    256'h459A588E_3D6D262A_993A6E43_60467D44_84767970_85388103_0914203C_6B495522
  };

  ////////////////////////////////////////////
  // kmac
  ////////////////////////////////////////////
  // Compile-time random data for PRNG default seed
  parameter kmac_pkg::lfsr_seed_t RndCnstKmacLfsrSeed = {
    32'h25FC8053,
    256'h5F277451_D2BE0C46_FDD2B23A_E8010A1D_8BEAE685_A77EA3E9_E9E8961F_5C2DF97B
  };

  // Compile-time random permutation for PRNG output
  parameter kmac_pkg::lfsr_perm_t RndCnstKmacLfsrPerm = {
    64'h2A6130CC_E3104178,
    256'h944D5C24_C69605A9_0A4BF014_4F2B64E5_E7C7A8A6_389B9892_B06A4116_6AB8C4B7,
    256'h5ED58192_DC936293_F8795493_53B2EB03_5D5B0681_6EA970E0_EEB429F1_4661A812,
    256'h2BDF071C_9505327E_73E9890C_579E0351_884BB39A_149A1AA4_DB6821F6_101C3C18,
    256'h2171AFF4_5A791802_F74682B2_E3A0AE4E_892B38A1_AF5570D1_9CDBC5B0_309D38AA,
    256'h1D8252EC_AC40B598_6BB69FC6_A5CD8BE6_96B64A61_CBF1409F_47D927A6_D911C761,
    256'h79AAA007_5A427273_0CA07A8B_BD436428_2576E0E5_FE7D240A_D7E619B9_9345910C,
    256'hA208B632_DD8D1574_75C0A9F1_C8360C1C_4F991A38_5CD27595_E2296475_29331271,
    256'h716CB9C2_C2392E6D_06284A88_63342ED7_F5EB3A1D_C2C978C6_E67902F9_5D9C21B6,
    256'hD7565CA2_39AE1718_4B46BA6E_3003F06E_369E5844_CEA999EB_61207108_4C754571,
    256'hC707B556_24CF89BA_0668E1FA_72863D02_40647A15_0222D47B_88E36BC6_E882C3FB,
    256'h32851FD9_C6361E15_6BC0C59D_AD11C550_895750F3_4EF2974C_C56E6F53_61B7510B,
    256'hB94E69C5_5E278026_546CB50E_280E9A21_947920D8_199EA260_AB9EC6F1_8415B0C3,
    256'h78F4FAB9_1414B67F_968ED0F0_77B48821_6812082D_53F69517_E3C9B106_422FB8AA,
    256'h49606100_3EA9C417_C60E3E69_136B3E87_7FC4CABD_725D2AE6_D4AE77A2_244D8299,
    256'h2CD3C8F1_0E997B59_8A97D24A_0F13C163_F9A00539_046AA9FA_61509AFC_3D1AAF05,
    256'hC5D26802_9664524B_23578626_72103BE0_7C5A6C28_9D772282_68CABD3C_D5A738A1,
    256'h580A2625_6F4FD948_B6096894_26E5B22D_0CDAD4A8_539A82C2_42461236_FCD44540,
    256'hA4F48C51_8AF5F869_B6C95111_EF52D861_144313F0_E9C27701_A0F401FB_9ADE635C,
    256'hC61F81F4_DDCBADD6_764E7C3A_AF69CCAA_9E968496_14174972_66B96EF1_40EC32A5,
    256'h0EFB1708_9411299B_0200C74B_7C65C552_E53D5122_011759B1_A3D7D01E_6A277121,
    256'h39620C05_38119A4C_42A4A8C2_78D5CC2B_185AE007_6590B031_932DF51F_5DF62128,
    256'h5AACA411_217CEE9A_FA523ECE_0970A635_51974C1C_8840C316_C67A31A6_46B2AC0E,
    256'h1A490DB8_5BDBEAA1_004F6C3C_56704872_59D7010A_04A41BA7_81DBBC83_57EE7BF6,
    256'h8D202BBB_8C0896E0_2A6D2F9D_68954C34_97AAD025_BE469305_20BE450D_2B2218BB,
    256'h9E0366A3_8C16E950_E73DDEE8_5A9947A6_5370E53F_D6D9598B_23691510_2829C4A3,
    256'h3C85161E_47C61230_E177C2C7_0F91094E_44245496_F000A321_55E5AB87_70C74257,
    256'h93CF06D0_39344EB9_1660B7A5_53D56331_1073022B_7B0BA870_9AB8AF38_B0782C5A,
    256'hC0410503_8D6BA998_98D0E726_59A942C8_04E9B82F_E4ED3A82_9F405A51_6DCC7BD2,
    256'h332D8C17_F9A7775F_8C058032_4BD880DF_45E742B2_D3C2575C_450123E8_E8E57A44,
    256'h56C8BA3B_9D99F7C9_326CC480_4CBB1089_C204BC0B_AAC1CDDA_46D3E7DC_DD699B08,
    256'h1D96248C_88DCDEC1_06828EB8_502C4714_B863CB35_0C2DC7D0_2A76C966_E9696161
  };

  // Compile-time random data for PRNG buffer default seed
  parameter kmac_pkg::buffer_lfsr_seed_t RndCnstKmacBufferLfsrSeed = {
    32'hA985028F,
    256'hAE5ECA76_2B77B0AA_A69486CF_F6100543_FA654B77_1979A70D_DE33FF89_CF0ED4D4,
    256'h84BCBD6B_2AE72E35_145B5F97_C0E9B65E_98CEA48C_3DF21934_0A563DA5_B6396FCE,
    256'h53002A29_61AC84BD_DA1315AD_D2F8A394_A094C63C_8AF07091_9CD8B168_CAB6A734
  };

  // Compile-time random permutation for LFSR Message output
  parameter kmac_pkg::msg_perm_t RndCnstKmacMsgPerm = {
    128'h419E264C_FD04EE20_D7F1B2C6_00E818CE,
    256'h3FDDD77D_9FB7D554_06C6B94B_AF91C9EB_DC9C2AE1_256969C0_81E43311_6E34AAA8
  };

  ////////////////////////////////////////////
  // otbn
  ////////////////////////////////////////////
  // Default seed of the PRNG used for URND.
  parameter otbn_pkg::urnd_prng_seed_t RndCnstOtbnUrndPrngSeed = {
    256'hD9795D5F_519AA8CD_47AC68B6_5650A1BB_5A4A6DBF_0BC7C1C7_AF8402BA_CD250ED8
  };

  // Compile-time random reset value for IMem/DMem scrambling key.
  parameter otp_ctrl_pkg::otbn_key_t RndCnstOtbnOtbnKey = {
    128'h960C88B4_B17EA986_7B47AE9A_95AAF96D
  };

  // Compile-time random reset value for IMem/DMem scrambling nonce.
  parameter otp_ctrl_pkg::otbn_nonce_t RndCnstOtbnOtbnNonce = {
    64'hBE43A447_2DC0C72F
  };

  ////////////////////////////////////////////
  // keymgr_dpe
  ////////////////////////////////////////////
  // Compile-time random bits for initial LFSR seed
  parameter keymgr_pkg::lfsr_seed_t RndCnstKeymgrDpeLfsrSeed = {
    64'h2488D40C_CAD75753
  };

  // Compile-time random permutation for LFSR output
  parameter keymgr_pkg::lfsr_perm_t RndCnstKeymgrDpeLfsrPerm = {
    128'h39668FD6_48086545_43E8DA82_DEDEF2BD,
    256'h2B104E1A_C16318A7_2E973CD8_9446FF39_5FA2675B_E0513D2B_47971F0B_808FEE4C
  };

  // Compile-time random permutation for entropy used in share overriding
  parameter keymgr_pkg::rand_perm_t RndCnstKeymgrDpeRandPerm = {
    160'h3CA7D2EC_D5BE7825_0D1E7E29_04841AF9_1965BA2D
  };

  // Compile-time random bits for revision seed
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeRevisionSeed = {
    256'h18AA49D1_25B4DEFB_1F3C0BE8_A29BE065_C26D2355_0BBC139F_F6461763_D7E966A8
  };

  // Compile-time random bits for software generation seed
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeSoftOutputSeed = {
    256'hA7219EB2_E8EF9F11_A152E6C7_1AA23B88_64416E75_0C01A333_9C6C7AA1_1244ECD2
  };

  // Compile-time random bits for hardware generation seed
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeHardOutputSeed = {
    256'h8A62CB1B_851078C2_A5F18EEE_28D0B562_043B7312_EFAD871F_92E7527D_A865D661
  };

  // Compile-time random bits for generation seed when aes destination selected
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeAesSeed = {
    256'h281FE98D_FCD72E3C_6D150A85_D6300959_6F7966C5_C68CAEDD_E4AB7C65_FB8D5961
  };

  // Compile-time random bits for generation seed when kmac destination selected
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeKmacSeed = {
    256'h8284064D_7194E470_7ADA81F8_A6DB14CA_845BEEE6_0798289A_D4FB0DF1_76829639
  };

  // Compile-time random bits for generation seed when otbn destination selected
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeOtbnSeed = {
    256'h0152700E_078EC5A9_51B627CF_2CCD155D_84FDACED_736E9336_2C8DA83C_5F4DD209
  };

  // Compile-time random bits for generation seed when no destination selected
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeNoneSeed = {
    256'h3E4D2A70_DD99DCF4_CCAC341A_2F1A2704_F5E21287_FA168AF2_51B370D0_34CDA605
  };

  ////////////////////////////////////////////
  // csrng
  ////////////////////////////////////////////
  // Compile-time random bits for csrng state group diversification value
  parameter csrng_pkg::cs_keymgr_div_t RndCnstCsrngCsKeymgrDivNonProduction = {
    128'h152662F4_D11B3245_D5943EA5_FD2E4BEA,
    256'h016B7911_DEAF01DF_74254737_1445D6E3_955145E3_074D9CA9_E8A4EF06_A6F14A5C
  };

  // Compile-time random bits for csrng state group diversification value
  parameter csrng_pkg::cs_keymgr_div_t RndCnstCsrngCsKeymgrDivProduction = {
    128'h8FCAC0D6_396E606A_620A9FFB_23756BDA,
    256'h420A9E7B_D1A7C41E_3A37B747_D3D7B758_B37D1D1C_A19A079C_48D7D4E6_7100A6AA
  };

  ////////////////////////////////////////////
  // sram_ctrl_main
  ////////////////////////////////////////////
  // Compile-time random reset value for SRAM scrambling key.
  parameter otp_ctrl_pkg::sram_key_t RndCnstSramCtrlMainSramKey = {
    128'hEBE45B6F_09AEFB72_895EC90D_876315DB
  };

  // Compile-time random reset value for SRAM scrambling nonce.
  parameter otp_ctrl_pkg::sram_nonce_t RndCnstSramCtrlMainSramNonce = {
    128'h9AD8BBE6_3ECACE31_278DA3AC_FC873EC5
  };

  // Compile-time random bits for initial LFSR seed
  parameter sram_ctrl_pkg::lfsr_seed_t RndCnstSramCtrlMainLfsrSeed = {
    64'hA22829BD_781EFE2B
  };

  // Compile-time random permutation for LFSR output
  parameter sram_ctrl_pkg::lfsr_perm_t RndCnstSramCtrlMainLfsrPerm = {
    128'hC904C9CC_42E2A86E_9102459B_BDF39499,
    256'hA65E5E8D_FB774C7E_A4260C9F_C3ED82B8_76B870C8_C2357917_595C28DE_3FB3D052
  };

  ////////////////////////////////////////////
  // sram_ctrl_mbox
  ////////////////////////////////////////////
  // Compile-time random reset value for SRAM scrambling key.
  parameter otp_ctrl_pkg::sram_key_t RndCnstSramCtrlMboxSramKey = {
    128'h866FE88A_8BAA3B3B_2F5E3917_A7A7D4B5
  };

  // Compile-time random reset value for SRAM scrambling nonce.
  parameter otp_ctrl_pkg::sram_nonce_t RndCnstSramCtrlMboxSramNonce = {
    128'hE53C38B3_CEDC4094_6CF3635F_0C112F43
  };

  // Compile-time random bits for initial LFSR seed
  parameter sram_ctrl_pkg::lfsr_seed_t RndCnstSramCtrlMboxLfsrSeed = {
    64'h5205EF40_D4B50CBD
  };

  // Compile-time random permutation for LFSR output
  parameter sram_ctrl_pkg::lfsr_perm_t RndCnstSramCtrlMboxLfsrPerm = {
    128'hECE6BD04_97A90961_47C94574_4B7136FD,
    256'h1B2E9A8A_80D599FE_C0FE654D_F1A2E8CA_FC0CA5DB_C6040D22_3E1872FC_DD2E4B61
  };

  ////////////////////////////////////////////
  // rom_ctrl0
  ////////////////////////////////////////////
  // Fixed nonce used for address / data scrambling
  parameter bit [63:0] RndCnstRomCtrl0ScrNonce = {
    64'h680B1248_93C22E6A
  };

  // Randomised constant used as a scrambling key for ROM data
  parameter bit [127:0] RndCnstRomCtrl0ScrKey = {
    128'h22F5AD2E_7591ECAD_6CCA220D_E3C0051A
  };

  ////////////////////////////////////////////
  // rom_ctrl1
  ////////////////////////////////////////////
  // Fixed nonce used for address / data scrambling
  parameter bit [63:0] RndCnstRomCtrl1ScrNonce = {
    64'h862508D4_CE0015F9
  };

  // Randomised constant used as a scrambling key for ROM data
  parameter bit [127:0] RndCnstRomCtrl1ScrKey = {
    128'h376719BD_15980C9E_525DCBC7_A2E75C94
  };

  ////////////////////////////////////////////
  // rv_core_ibex
  ////////////////////////////////////////////
  // Default seed of the PRNG used for random instructions.
  parameter ibex_pkg::lfsr_seed_t RndCnstRvCoreIbexLfsrSeed = {
    32'h580BC5DA
  };

  // Permutation applied to the LFSR of the PRNG used for random instructions.
  parameter ibex_pkg::lfsr_perm_t RndCnstRvCoreIbexLfsrPerm = {
    160'hBF3DA8E7_EE4D1F26_63633F4A_0455AA15_8D35C081
  };

  // Default icache scrambling key
  parameter logic [ibex_pkg::SCRAMBLE_KEY_W-1:0] RndCnstRvCoreIbexIbexKeyDefault = {
    128'hE73D3051_DB61B781_DB955509_7E808D93
  };

  // Default icache scrambling nonce
  parameter logic [ibex_pkg::SCRAMBLE_NONCE_W-1:0] RndCnstRvCoreIbexIbexNonceDefault = {
    64'h7D8AEC55_8F1D774B
  };

endpackage : top_darjeeling_rnd_cnst_pkg
