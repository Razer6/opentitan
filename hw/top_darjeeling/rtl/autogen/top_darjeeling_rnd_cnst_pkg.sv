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
    40'h7E_31C7B94C
  };

  // Compile-time random permutation for LFSR output
  parameter otp_ctrl_top_specific_pkg::lfsr_perm_t RndCnstOtpCtrlLfsrPerm = {
    240'h5100_D1086822_3DD3235D_A9C44939_057C135B_95C54E25_69882D86_611DE00A
  };

  // Compile-time random permutation for scrambling key/nonce register reset value
  parameter otp_ctrl_top_specific_pkg::scrmbl_key_init_t RndCnstOtpCtrlScrmblKeyInit = {
    256'hCDA9A5FC_EBA680BB_B8E9C0F3_699CD980_3542888F_A690C16D_D41B3D1F_A05F7ECC
  };

  ////////////////////////////////////////////
  // lc_ctrl
  ////////////////////////////////////////////
  // Diversification value used for all invalid life cycle states.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivInvalid = {
    128'h83245CCC_8577DAAF_B97C26A7_01198848
  };

  // Diversification value used for the TEST_UNLOCKED* life cycle states.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivTestUnlocked = {
    128'h1250C2C8_2DEB519D_69C7051A_AB9FC45A
  };

  // Diversification value used for the DEV life cycle state.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivDev = {
    128'h1658FA90_63CE216C_0B412615_D73F4765
  };

  // Diversification value used for the PROD/PROD_END life cycle states.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivProduction = {
    128'h29A96A1A_8ACA4B0B_DCBE6B24_0C310951
  };

  // Diversification value used for the RMA life cycle state.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivRma = {
    128'h62E41BF9_9B2BC41E_9EDBB468_5F7EB27E
  };

  // Compile-time random bits used for invalid tokens in the token mux
  parameter lc_ctrl_pkg::lc_token_mux_t RndCnstLcCtrlInvalidTokens = {
    256'hB3B35F35_2752E34F_64CE9783_05BFC348_1A2162EA_2792B750_8F1EAB06_7AF954DD,
    256'hA5491439_A9DDE632_0801FDCF_25A4FBA5_28399117_069E77C8_87F53DDA_6FB4EF87,
    256'h58B99027_B6AA7468_BC0BD8D7_0368E7CF_B11A9967_5B146240_619335A9_E2D12383,
    256'h4D187447_78BE5E63_C087E368_38B56B1A_45F6FD31_2F5353FA_7B2CE9FC_83DDAF1D
  };

  ////////////////////////////////////////////
  // alert_handler
  ////////////////////////////////////////////
  // Compile-time random bits for initial LFSR seed
  parameter alert_handler_pkg::lfsr_seed_t RndCnstAlertHandlerLfsrSeed = {
    32'hD8C5A42E
  };

  // Compile-time random permutation for LFSR output
  parameter alert_handler_pkg::lfsr_perm_t RndCnstAlertHandlerLfsrPerm = {
    160'hC381C18B_3E3C228B_F58D91BE_A0CDF55D_B64A2745
  };

  ////////////////////////////////////////////
  // sram_ctrl_ret_aon
  ////////////////////////////////////////////
  // Compile-time random reset value for SRAM scrambling key.
  parameter otp_ctrl_pkg::sram_key_t RndCnstSramCtrlRetAonSramKey = {
    128'h6A0AA6D7_AC7EC9C3_304470FB_E505F964
  };

  // Compile-time random reset value for SRAM scrambling nonce.
  parameter otp_ctrl_pkg::sram_nonce_t RndCnstSramCtrlRetAonSramNonce = {
    128'h9400CA98_64FD4CE4_9D2CFC6E_CC102540
  };

  // Compile-time random bits for initial LFSR seed
  parameter sram_ctrl_pkg::lfsr_seed_t RndCnstSramCtrlRetAonLfsrSeed = {
    32'hEAD87347
  };

  // Compile-time random permutation for LFSR output
  parameter sram_ctrl_pkg::lfsr_perm_t RndCnstSramCtrlRetAonLfsrPerm = {
    160'h64548F6B_1F584533_BED9EDF6_919615E4_9A671280
  };

  ////////////////////////////////////////////
  // aes
  ////////////////////////////////////////////
  // Default seed of the PRNG used for register clearing.
  parameter aes_pkg::clearing_lfsr_seed_t RndCnstAesClearingLfsrSeed = {
    64'hD443259F_FB5736DD
  };

  // Permutation applied to the LFSR of the PRNG used for clearing.
  parameter aes_pkg::clearing_lfsr_perm_t RndCnstAesClearingLfsrPerm = {
    128'h412BAAF1_50C406B9_339428B6_29F7B526,
    256'hC6798F2D_0787BF9B_7063CDB6_F513817A_3FC7A169_77D44B38_C9F0DD8E_2658801A
  };

  // Permutation applied to the clearing PRNG output for clearing the second share of registers.
  parameter aes_pkg::clearing_lfsr_perm_t RndCnstAesClearingSharePerm = {
    128'h14D82770_7F7950F4_E39212EF_CB5633A9,
    256'hD404A387_865FBE81_496A7C7C_A970AE22_2E011DAC_271FED3B_E55ADC29_9B319D03
  };

  // Default seed of the PRNG used for masking.
  parameter aes_pkg::masking_lfsr_seed_t RndCnstAesMaskingLfsrSeed = {
    32'hD201BDB4,
    256'h35D5CFF9_5C40A164_3CC8F540_230522D3_3A4EA485_719E18A0_8049CF12_401BB3F0
  };

  // Permutation applied to the output of the PRNG used for masking.
  parameter aes_pkg::masking_lfsr_perm_t RndCnstAesMaskingLfsrPerm = {
    256'h8A054530_4019519E_8D9D0629_9A7D9B1C_3B262875_2C8E5416_8F255546_6B792F92,
    256'h6E608C10_3900724E_36787470_41509437_9C5A8695_3F040F96_204D1D83_02807E2B,
    256'h9F991803_81247F31_337A0A01_131B934A_7C855E4B_90642E09_563D6D2A_23633843,
    256'h151E6C12_870D8B5F_3E529771_88279184_89354C4F_3C0E5967_6907980B_626F765B,
    256'h3461771F_21321A53_58665722_49683A5C_145D172D_6A0C6573_0842117B_44488247
  };

  ////////////////////////////////////////////
  // kmac
  ////////////////////////////////////////////
  // Compile-time random data for PRNG default seed
  parameter kmac_pkg::lfsr_seed_t RndCnstKmacLfsrSeed = {
    32'h6DCD3DE7,
    256'h7D589299_20453CED_C4BB4632_D2EE9D3B_62DA487F_4BA0D848_2F0D2D65_C5468708
  };

  // Compile-time random permutation for PRNG output
  parameter kmac_pkg::lfsr_perm_t RndCnstKmacLfsrPerm = {
    64'h0D143BB5_AA238E66,
    256'h768A4846_78F4BFA3_8ECBFF10_AACFA65A_9F60E195_F22D6A45_38E02F9D_6EB81CF8,
    256'h30D8826D_89ABD529_FC5A7C40_09CAC431_F0C54450_BB9F609B_0DC7E203_5C9396DE,
    256'h03951009_58080920_9F4AC5D8_FF614900_E1F78485_F186272A_02A3E587_A4174574,
    256'hFC9C2C3B_811375DC_CB340D47_9862CE64_72ADBACA_0D7270AB_65390191_F4884E3D,
    256'h12C461D5_255C1B56_212E4482_0C7A7008_CAEE6A4B_96DB0545_40E0B07E_8C409271,
    256'h12742F59_B51A468D_4871A512_085B7286_8B9AF021_9AF8BF0C_BAD01829_8EFBD51D,
    256'h8027C632_F776CF1B_614F8B17_E90CBE6E_A960A311_55292200_F68D9C25_EA9C005D,
    256'hE7E54472_03618ADF_31A0425E_BE1957D6_3C6B52CB_28C665B6_93163409_4930B6E2,
    256'hACA99656_E6B30FE5_81561B1C_9999510A_AA40A521_B4889386_4CB015C5_4B841E4A,
    256'h8DB2AE09_4A1554D1_25C3A8DA_DA183FB1_D7FD4C33_4755009A_0E4162E8_A3ADDC38,
    256'h0C12526D_173DA74C_A2336961_3769B092_3304EFE0_444C468F_B42E77B7_47B6046D,
    256'h2A62E136_62B49B0A_1EE76555_39CC94AA_01587023_8456A02C_6C300F3B_305206C8,
    256'h2A26E89D_ABCBB27E_BD86EA86_5C1BD092_05E587DF_545A3F03_E6D8040C_214E80EE,
    256'h9D435E67_701D1064_89762A40_05EBA6C2_6BDC7BC1_A6672141_62CF9271_B83A9E90,
    256'h5D1218B8_0E9B562E_6C573135_9A3267E3_BA9DB168_5CE71267_2EDD0415_35BC5581,
    256'h821D7A1A_D451E16A_1BE1F078_0A64D38A_974228FA_4D01A19F_4A04B524_4A24F4B6,
    256'h91D0CBCE_68758795_B2175BC2_2B3AC85A_5634B680_566BA67A_5100C8A3_C1B20D51,
    256'h5446EFC0_6666F1E4_5ED72411_AB84C5DC_7A796524_C331230C_55A61030_BF4A77BA,
    256'hBF340141_D3154DB0_94AEC637_F0368A30_1DDFE72E_5295F183_60AF0F87_32966145,
    256'hE0C6B2F2_4EC98072_2B221BB9_6A40211F_C8E5EB27_DF03C990_43E561C2_E3AD5065,
    256'h809C9115_E74EE692_9BFAA840_5FE71C3C_EE68C5B6_683C5C66_9C5A831A_1B6324DE,
    256'hA8E1A538_E11FC02B_2EC57763_E15A1590_819129D9_75177170_D952B124_98F7321E,
    256'hF5E291BA_8C4C14D2_3F42B2D2_B8A106A7_7CBC3083_D7CCD50C_9A502304_965642B4,
    256'h070DED4B_EE6FC5F0_04DEF493_A1E26688_3525378F_08660AA2_3DDA4FA6_E38DEA13,
    256'hD67AC447_2B810BE4_64A54E93_59F8AF4C_17622498_16E6084B_B41296F4_9E22D5B0,
    256'h9D73A91E_C64A7BB5_9C593EE4_955A0979_D25A2507_A6DEB880_5234CF98_EB95D53C,
    256'hB958E83C_591F9A40_B9E72263_A10E374C_E106BA0A_97EDC57E_D30B6058_BEC7AB47,
    256'h18F2CA4C_2C0BE820_37229C51_2F9E0C5A_BAA54701_72929A0B_19734CE0_038F5559,
    256'h3F2C4E7A_15575424_5465C6A6_4CE629ED_2DC7D7EA_161D804C_711B51F1_9534E40C,
    256'hE7A50991_3B4EA345_FD5AE263_2970A8AB_0C1CA07C_962B5E28_78AA092E_98248498,
    256'h2306A510_E11A2573_6C9259FB_A0979C6A_06114421_8D3A1449_D505B33A_E3441C1A
  };

  // Compile-time random data for PRNG buffer default seed
  parameter kmac_pkg::buffer_lfsr_seed_t RndCnstKmacBufferLfsrSeed = {
    32'h23868B58,
    256'h5534B613_E2828B04_24F0F9EB_900313DC_DDD6F820_7B25A5B5_B3F673BA_36487D1E,
    256'hCAF61806_CCC0803E_75180AB6_5EE3EEEB_76AFEBE2_EE4702F6_03C3A142_29ABA07B,
    256'h90A436DA_FA38F4BB_783125D6_7B16B706_A5ED3831_F50F4F72_BB2121BB_7CB13609
  };

  // Compile-time random permutation for LFSR Message output
  parameter kmac_pkg::msg_perm_t RndCnstKmacMsgPerm = {
    128'hD8A16BAB_A7B3F4E1_B901F3C2_C2505351,
    256'hD8FE661A_38116DF5_68D98BF1_1D31718B_600C9422_B3F92923_B5D2BCC6_E75721EE
  };

  ////////////////////////////////////////////
  // otbn
  ////////////////////////////////////////////
  // Default seed of the PRNG used for URND.
  parameter otbn_pkg::urnd_prng_seed_t RndCnstOtbnUrndPrngSeed = {
    256'h3473B544_0B76763B_45BCA816_6865FDAF_59F386D5_174CC7F5_FD1F544B_3A82C54E
  };

  // Compile-time random reset value for IMem/DMem scrambling key.
  parameter otp_ctrl_pkg::otbn_key_t RndCnstOtbnOtbnKey = {
    128'h1481730F_66854723_D0056094_5B6C126F
  };

  // Compile-time random reset value for IMem/DMem scrambling nonce.
  parameter otp_ctrl_pkg::otbn_nonce_t RndCnstOtbnOtbnNonce = {
    64'hFEC03BF1_A985028F
  };

  ////////////////////////////////////////////
  // keymgr_dpe
  ////////////////////////////////////////////
  // Compile-time random bits for initial LFSR seed
  parameter keymgr_pkg::lfsr_seed_t RndCnstKeymgrDpeLfsrSeed = {
    64'hAE5ECA76_2B77B0AA
  };

  // Compile-time random permutation for LFSR output
  parameter keymgr_pkg::lfsr_perm_t RndCnstKeymgrDpeLfsrPerm = {
    128'hEF66243A_657A46FC_2BB494C8_6F7839C5,
    256'hCF007F8B_B4A141EC_0AAD4F8E_7F975853_4B29AF72_88C0FF78_67526500_44CE1969
  };

  // Compile-time random permutation for entropy used in share overriding
  parameter keymgr_pkg::rand_perm_t RndCnstKeymgrDpeRandPerm = {
    160'h1B591FDD_27B015EE_18BB1651_D7E9D30D_6045CA98
  };

  // Compile-time random bits for revision seed
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeRevisionSeed = {
    256'h2F28C02C_460AA8D2_A575B899_B4CAAE05_6CF2B853_53E1A339_75E7B120_9B868A4A
  };

  // Compile-time random bits for software generation seed
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeSoftOutputSeed = {
    256'hCD919ED9_795D5F51_9AA8CD47_AC68B656_50A1BB5A_4A6DBF0B_C7C1C7AF_8402BACD
  };

  // Compile-time random bits for hardware generation seed
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeHardOutputSeed = {
    256'h250ED896_0C88B4B1_7EA9867B_47AE9A95_AAF96DBE_43A4472D_C0C72F24_88D40CCA
  };

  // Compile-time random bits for generation seed when aes destination selected
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeAesSeed = {
    256'hD7575333_E5E48F00_BBC1F91E_5EEA7AD0_29C21314_1EE86E77_B99BF0A1_BCD67FB8
  };

  // Compile-time random bits for generation seed when kmac destination selected
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeKmacSeed = {
    256'h941C331A_44277BC0_8F711D2D_33E72BC4_0A36399D_8364DCD5_9508D525_078E802F
  };

  // Compile-time random bits for generation seed when otbn destination selected
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeOtbnSeed = {
    256'h91D85838_04FDE712_71F1738C_1CAC987A_6B8A7758_B762216E_DD630709_49C7834A
  };

  // Compile-time random bits for generation seed when no destination selected
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeNoneSeed = {
    256'hB6EE6E7A_D485FF3C_A72C2242_223CE6D7_0F17B4F4_B32818AA_49D125B4_DEFB1F3C
  };

  ////////////////////////////////////////////
  // csrng
  ////////////////////////////////////////////
  // Compile-time random bits for csrng state group diversification value
  parameter csrng_pkg::cs_keymgr_div_t RndCnstCsrngCsKeymgrDivNonProduction = {
    128'h0BE8A29B_E065C26D_23550BBC_139FF646,
    256'h1763D7E9_66A8A721_9EB2E8EF_9F11A152_E6C71AA2_3B886441_6E750C01_A3339C6C
  };

  // Compile-time random bits for csrng state group diversification value
  parameter csrng_pkg::cs_keymgr_div_t RndCnstCsrngCsKeymgrDivProduction = {
    128'h7AA11244_ECD28A62_CB1B8510_78C2A5F1,
    256'h8EEE28D0_B562043B_7312EFAD_871F92E7_527DA865_D661281F_E98DFCD7_2E3C6D15
  };

  ////////////////////////////////////////////
  // sram_ctrl_main
  ////////////////////////////////////////////
  // Compile-time random reset value for SRAM scrambling key.
  parameter otp_ctrl_pkg::sram_key_t RndCnstSramCtrlMainSramKey = {
    128'h0A85D630_09596F79_66C5C68C_AEDDE4AB
  };

  // Compile-time random reset value for SRAM scrambling nonce.
  parameter otp_ctrl_pkg::sram_nonce_t RndCnstSramCtrlMainSramNonce = {
    128'h7C65FB8D_59618284_064D7194_E4707ADA
  };

  // Compile-time random bits for initial LFSR seed
  parameter sram_ctrl_pkg::lfsr_seed_t RndCnstSramCtrlMainLfsrSeed = {
    32'h81F8A6DB
  };

  // Compile-time random permutation for LFSR output
  parameter sram_ctrl_pkg::lfsr_perm_t RndCnstSramCtrlMainLfsrPerm = {
    160'hC5F83236_A64FFD16_21F4B2B6_7975C1D1_6605C322
  };

  ////////////////////////////////////////////
  // sram_ctrl_mbox
  ////////////////////////////////////////////
  // Compile-time random reset value for SRAM scrambling key.
  parameter otp_ctrl_pkg::sram_key_t RndCnstSramCtrlMboxSramKey = {
    128'h736E9336_2C8DA83C_5F4DD209_3E4D2A70
  };

  // Compile-time random reset value for SRAM scrambling nonce.
  parameter otp_ctrl_pkg::sram_nonce_t RndCnstSramCtrlMboxSramNonce = {
    128'hDD99DCF4_CCAC341A_2F1A2704_F5E21287
  };

  // Compile-time random bits for initial LFSR seed
  parameter sram_ctrl_pkg::lfsr_seed_t RndCnstSramCtrlMboxLfsrSeed = {
    32'hFA168AF2
  };

  // Compile-time random permutation for LFSR output
  parameter sram_ctrl_pkg::lfsr_perm_t RndCnstSramCtrlMboxLfsrPerm = {
    160'hE3EB04CA_FF5B4319_E3BE29D1_B1B08205_326D3ACA
  };

  ////////////////////////////////////////////
  // rom_ctrl0
  ////////////////////////////////////////////
  // Fixed nonce used for address / data scrambling
  parameter bit [63:0] RndCnstRomCtrl0ScrNonce = {
    64'h45E3074D_9CA9E8A4
  };

  // Randomised constant used as a scrambling key for ROM data
  parameter bit [127:0] RndCnstRomCtrl0ScrKey = {
    128'hEF06A6F1_4A5C8FCA_C0D6396E_606A620A
  };

  ////////////////////////////////////////////
  // rom_ctrl1
  ////////////////////////////////////////////
  // Fixed nonce used for address / data scrambling
  parameter bit [63:0] RndCnstRomCtrl1ScrNonce = {
    64'h9FFB2375_6BDA420A
  };

  // Randomised constant used as a scrambling key for ROM data
  parameter bit [127:0] RndCnstRomCtrl1ScrKey = {
    128'h9E7BD1A7_C41E3A37_B747D3D7_B758B37D
  };

  ////////////////////////////////////////////
  // rv_core_ibex
  ////////////////////////////////////////////
  // Default seed of the PRNG used for random instructions.
  parameter ibex_pkg::lfsr_seed_t RndCnstRvCoreIbexLfsrSeed = {
    32'h1D1CA19A
  };

  // Permutation applied to the LFSR of the PRNG used for random instructions.
  parameter ibex_pkg::lfsr_perm_t RndCnstRvCoreIbexLfsrPerm = {
    160'hBB1F93F8_A412872E_C0C8C5A3_B0B575A7_DDCD2660
  };

  // Default icache scrambling key
  parameter logic [ibex_pkg::SCRAMBLE_KEY_W-1:0] RndCnstRvCoreIbexIbexKeyDefault = {
    128'h29BD781E_FE2B4B06_F4B349E0_372B7394
  };

  // Default icache scrambling nonce
  parameter logic [ibex_pkg::SCRAMBLE_NONCE_W-1:0] RndCnstRvCoreIbexIbexNonceDefault = {
    64'hD415D937_F3578CC1
  };

endpackage : top_darjeeling_rnd_cnst_pkg
