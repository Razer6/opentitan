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
//   hw/top_darjeeling/data/top_darjeeling_seed.testing.hjson


package top_darjeeling_rnd_cnst_pkg;

  ////////////////////////////////////////////
  // otp_ctrl
  ////////////////////////////////////////////
  // Compile-time random bits for initial LFSR seed
  parameter otp_ctrl_top_specific_pkg::lfsr_seed_t RndCnstOtpCtrlLfsrSeed = {
    40'hD7_595A4FE2
  };

  // Compile-time random permutation for LFSR output
  parameter otp_ctrl_top_specific_pkg::lfsr_perm_t RndCnstOtpCtrlLfsrPerm = {
    240'h4633_A5842486_31E40461_60E70622_571C0826_3D914870_B2956DA3_5D7D44E4
  };

  // Compile-time random permutation for scrambling key/nonce register reset value
  parameter otp_ctrl_top_specific_pkg::scrmbl_key_init_t RndCnstOtpCtrlScrmblKeyInit = {
    256'hC6AF9240_0628DB87_E3122C8E_7AB4B794_C9FB8F12_64E4C41C_C56AD0FC_CDE38A96
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

  // Compile-time scrambling key
  parameter otp_ctrl_top_specific_pkg::key_t RndCnstOtpCtrlScrmblKey4 = {
    128'hF076E0BA_6366DE58_5A1C7508_47905CA4
  };

  // Compile-time scrambling key
  parameter otp_ctrl_top_specific_pkg::key_t RndCnstOtpCtrlScrmblKey5 = {
    128'h2D31B460_654AEA39_A8764C38_97D3B202
  };

  // Compile-time digest const
  parameter otp_ctrl_top_specific_pkg::digest_const_t RndCnstOtpCtrlDigestConst0 = {
    128'hFE81243C_9287D208_E65ED1A8_10CA3C84
  };

  // Compile-time digest const
  parameter otp_ctrl_top_specific_pkg::digest_const_t RndCnstOtpCtrlDigestConst1 = {
    128'h598AFAB9_11240C43_DBB448F2_3BC47EA5
  };

  // Compile-time digest initial vector
  parameter otp_ctrl_top_specific_pkg::digest_iv_t RndCnstOtpCtrlDigestIV0 = {
    64'h699A4150_668F160F
  };

  // Compile-time digest initial vector
  parameter otp_ctrl_top_specific_pkg::digest_iv_t RndCnstOtpCtrlDigestIV1 = {
    64'h6BAE953B_000ABD46
  };

  // OTP invalid partition default for buffered partitions
  parameter logic [163839:0] RndCnstOtpCtrlPartInvDefault = {
    704'({
      320'hA16E8CB4BABED257DA058B9112E129D1022FB44BB7D274CF152A4B971F489C2922C5BEED02C23E42,
      384'hF7ED5D88AA992459C836603E55433E23CAF13CCA8709C86629D9A7CB4087FDA5361453D50B61FC7CB7953EDFB738EAD4
    }),
    640'({
      64'h0,
      64'h4DF00E6098D7B8D8,
      256'h21BE10F789005A1796977F6B44FE52A3989BDB0D3D47814840623D68DDD36C05,
      256'h2A96D4B1F38653116B804150E500E67BAEBD15763563A87060B4625E0015769
    }),
    384'({
      64'h0,
      64'h3347AA4A9F48CAEA,
      256'h176F082A72255D50D08CAF486494E0EB064E6BFCDBE9D9759F1A177EE75E0F2E
    }),
    1024'({
      64'h0,
      64'hA9765374A5F8F1E4,
      256'h15E47FB139DDFE12BD761DCA1B66827691211D668CDD1D16E71603E685D8FC8,
      256'h630C990A861D6A95D54DFFE97DC11C7B124696289D48217D252FBEDE93CD37C0,
      256'h1178D397D9613202949D5D7BDF74C45DC6E4BFD6B71600AB90951309F4A77244,
      128'hEE6E2419AD5E131B981BB9027D78744A
    }),
    256'({
      64'h0,
      64'hAB6CAD3FCDE96A9B,
      128'h348F2ECFDA00FF81F9B06BFBE0B53D84
    }),
    384'({
      64'h0,
      64'hB8A699B327C42311,
      128'h257C8EB73C8CBE4D0F5FE978FDB2CF17,
      128'h378B81C4A48077196C6123CDB2FED8FA
    }),
    448'({
      64'h0,
      64'hE5260015A93023F4,
      32'h0, // unallocated space
      256'hFAC7D7291FBAF3E2890E0D04DCF054F0630C6A03511E915355435B602A5AB236,
      32'h0
    }),
    192'({
      64'h0,
      64'h4FF59B42784CC290,
      48'h0, // unallocated space
      8'h69,
      8'h69
    }),
    384'({
      64'h0,
      64'hDA6494A929FCEFDE,
      256'h58A193A5710B49633FB0B56B9CADE203CBB0A66A4996D48E010A3D07EAA1F193
    }),
    192'({
      64'h0,
      64'h7A2CC14A2068B696,
      64'h2D09093501B8DC7E
    }),
    18368'({
      64'h0,
      18304'h0
    }),
    33856'({
      64'h6E75C751292A3B2,
      30720'h0,
      3072'h0
    }),
    3136'({
      64'hD7FB6F1B52799A4D,
      1024'h0,
      2048'h0
    }),
    65664'({
      64'h0,
      64'h6D621F4A74E39981,
      65536'h0
    }),
    8256'({
      64'h0,
      8192'h0
    }),
    1280'({
      64'h0,
      64'h579FD942AF07D61A,
      512'h0,
      32'h0,
      32'h0,
      512'h0,
      32'h0,
      32'h0
    }),
    1280'({
      64'h0,
      64'hC7CD9A2997D0336,
      512'h0,
      32'h0,
      32'h0,
      512'h0,
      32'h0,
      32'h0
    }),
    1280'({
      64'h0,
      64'h5FEA011E9EFBCDEA,
      512'h0,
      32'h0,
      32'h0,
      512'h0,
      32'h0,
      32'h0
    }),
    1280'({
      64'h0,
      64'hB4B96B49BFC13A95,
      512'h0,
      32'h0,
      32'h0,
      512'h0,
      32'h0,
      32'h0
    }),
    1280'({
      64'h0,
      64'hBCEC8797AA2503A2,
      512'h0,
      32'h0,
      32'h0,
      512'h0,
      32'h0,
      32'h0
    }),
    1280'({
      64'h0,
      64'h719E4F5B3F5FF28B,
      512'h0,
      32'h0,
      32'h0,
      512'h0,
      32'h0,
      32'h0
    }),
    2432'({
      64'h0,
      64'h3055E3EE9F67513B,
      512'h0,
      32'h0,
      32'h0,
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
    2880'({
      64'h0,
      64'h81C72CA00A0EE6AA,
      512'h0,
      512'h0,
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
      64'hEF50A0A92F915523,
      128'h0,
      6144'h0
    }),
    448'({
      64'h0,
      128'h0,
      128'h0,
      128'h0
    }),
    7744'({
      64'h0,
      64'hA3B1C77CEC761640,
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
      32'h0
    }),
    1792'({
      64'h0,
      64'hD6086818C79B6C63,
      32'h0,
      32'h0,
      32'h0,
      32'h0,
      32'h0,
      32'h0,
      32'h0,
      32'h0,
      32'h0,
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
      64'h63FDCCA98F1E5E73,
      448'h0
    })
  };

  ////////////////////////////////////////////
  // lc_ctrl
  ////////////////////////////////////////////
  // Diversification value used for all invalid life cycle states.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivInvalid = {
    128'hD8FDA7DD_235685B5_2F3C8004_7ADCC7E3
  };

  // Diversification value used for the TEST_UNLOCKED* life cycle states.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivTestUnlocked = {
    128'h77DD041A_AFFBC1DF_DAB41C30_880F64B5
  };

  // Diversification value used for the DEV life cycle state.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivDev = {
    128'h7CEB7E57_F7C98B05_2786311D_5E97E8F1
  };

  // Diversification value used for the PROD/PROD_END life cycle states.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivProduction = {
    128'h1887B129_EDA81399_ECEF31C2_0932FEA4
  };

  // Diversification value used for the RMA life cycle state.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivRma = {
    128'hBE4C50E1_B7DDE95E_6EB2922B_1AE5A610
  };

  // Compile-time random bits used for invalid tokens in the token mux
  parameter lc_ctrl_pkg::lc_token_mux_t RndCnstLcCtrlInvalidTokens = {
    256'hD471B0F5_BCCF1F00_33081437_F2926FFE_C64809EA_0D7A4FF6_6188C135_C7C02D35,
    256'h44C0CD58_99A6102A_C52C3399_F857BA17_34BE633E_4791548E_B20A6EA1_D8935F50,
    256'h76924E87_E9FC4E7C_979C1CFE_522C6F5D_30DE56FA_B59A8040_3AB26B19_D424C530,
    256'hDCB1E02C_B18AEA66_8EFDF8F9_E52992FB_FA810882_A8D97449_C51B5624_A45097A8
  };

  ////////////////////////////////////////////
  // alert_handler
  ////////////////////////////////////////////
  // Compile-time random bits for initial LFSR seed
  parameter alert_handler_pkg::lfsr_seed_t RndCnstAlertHandlerLfsrSeed = {
    32'h1554F9F0
  };

  // Compile-time random permutation for LFSR output
  parameter alert_handler_pkg::lfsr_perm_t RndCnstAlertHandlerLfsrPerm = {
    160'h9070E9FC_B1653B94_D5FE1035_B42886E5_9B038D77
  };

  ////////////////////////////////////////////
  // sram_ctrl_ret_aon
  ////////////////////////////////////////////
  // Compile-time random reset value for SRAM scrambling key.
  parameter otp_ctrl_pkg::sram_key_t RndCnstSramCtrlRetAonSramKey = {
    128'hBFAF404E_44FB760D_62FD0913_A1D1F806
  };

  // Compile-time random reset value for SRAM scrambling nonce.
  parameter otp_ctrl_pkg::sram_nonce_t RndCnstSramCtrlRetAonSramNonce = {
    128'h1EAB2471_99E2F2DF_AF873E4D_A6728554
  };

  // Compile-time random bits for initial LFSR seed
  parameter sram_ctrl_pkg::lfsr_seed_t RndCnstSramCtrlRetAonLfsrSeed = {
    64'h02657C1E_80EB373B
  };

  // Compile-time random permutation for LFSR output
  parameter sram_ctrl_pkg::lfsr_perm_t RndCnstSramCtrlRetAonLfsrPerm = {
    128'hC39FF162_C71606F0_F63CB68A_42D55F1B,
    256'hE13C66E5_E194E0A0_7A6C919D_4307EC80_1216A922_6EBDF3E1_33498FD7_69A35EB4
  };

  ////////////////////////////////////////////
  // aes
  ////////////////////////////////////////////
  // Default seed of the PRNG used for register clearing.
  parameter aes_pkg::clearing_lfsr_seed_t RndCnstAesClearingLfsrSeed = {
    64'h9E9C4B4A_0D8543CE
  };

  // Permutation applied to the LFSR of the PRNG used for clearing.
  parameter aes_pkg::clearing_lfsr_perm_t RndCnstAesClearingLfsrPerm = {
    128'h6AAE4205_6D5E72DB_3B8CF2D3_FAFCB3F6,
    256'h7BABE003_7A65D33F_84A39B23_1A495E41_501341B7_4B08910C_75657E8F_18DA6520
  };

  // Permutation applied to the clearing PRNG output for clearing the second share of registers.
  parameter aes_pkg::clearing_lfsr_perm_t RndCnstAesClearingSharePerm = {
    128'h2597F0F5_8751DAC4_83A22DD5_94A427CB,
    256'h1BA1154A_FA7B5FD3_32A07CB7_B81B3862_E41EF5E9_CE301C5B_4E483C29_9AE3E344
  };

  // Default seed of the PRNG used for masking.
  parameter aes_pkg::masking_lfsr_seed_t RndCnstAesMaskingLfsrSeed = {
    32'hCCF342B6,
    256'hCCC8BC78_30166B88_1BE409B3_2D7C8587_4E196B2F_B8D914AA_CA03FDA8_7448320D
  };

  // Permutation applied to the output of the PRNG used for masking.
  parameter aes_pkg::masking_lfsr_perm_t RndCnstAesMaskingLfsrPerm = {
    256'h0B883307_107A856C_49173286_110E8E7F_2A906D50_615B222C_8F6E6816_77548725,
    256'h37971552_217C6331_57600A89_9967054F_0F004E8C_0693013D_2D41041A_64943F5F,
    256'h92141E53_7D1C513C_3946566A_9A089D34_261F3595_13761975_969E384A_1D031298,
    256'h43748D81_4C18205A_9F9B8265_3E6B4B3A_3B291B59_42582F09_7062277E_71234055,
    256'h4D458044_66788A36_5C0D8B47_690C5D91_24733084_7B832E6F_72282B79_489C025E
  };

  ////////////////////////////////////////////
  // kmac
  ////////////////////////////////////////////
  // Compile-time random data for PRNG default seed
  parameter kmac_pkg::lfsr_seed_t RndCnstKmacLfsrSeed = {
    32'h2E23903C,
    256'h838FF791_CF76C37E_6624858D_539C7008_FCB6BD8E_C29C02D3_BF9B0953_C9C21F0F
  };

  // Compile-time random permutation for PRNG output
  parameter kmac_pkg::lfsr_perm_t RndCnstKmacLfsrPerm = {
    64'hC2D58885_7C506104,
    256'hAA593D61_E5FA9AA8_41D99123_69020830_712C8328_EC0767E9_73124A9A_C4949F03,
    256'h71F199A0_890EC2CA_4F08490E_B40E3601_0F31FA4C_90991086_BB4ADAB3_B4AD56DE,
    256'hE2CEA3C4_CA623E27_A44E4338_760D086B_0A6C5D2D_4A6ED5BB_DBD27A0A_0BC83926,
    256'h12B80F85_D6D00008_2BE18497_A54802FA_320A10E4_97235C00_96F26563_E17C5C7E,
    256'h6637E900_0DEFEB2C_350F12CA_3EA6B96F_F42A7251_09605843_A0E73B9C_CB80B1C0,
    256'h48A53298_79BA293E_87F696C1_1F00A6B9_ED16C616_0E3863C3_083CE62C_51576299,
    256'h442BD458_D9462EE3_A56E54A1_9B0E4538_67753DC8_30DA727E_CA13E2D4_2E870382,
    256'hE1CD737B_192A7077_79670804_014643E4_A57A636F_554E5D93_93519A25_ABAF9145,
    256'hA679C986_39A93143_D7C56758_AB61A44E_6E1651EA_313510D1_484C394F_222C134C,
    256'hA803E505_446AF541_A83A2D78_B0B89D25_02014D88_0A233E9E_B3D66318_BEAD2302,
    256'hA95C089F_B4B97674_5599FDFF_902A2169_122D5796_D1FE7353_E8DE236C_5DF46DCC,
    256'h341DB43A_DB214FD6_EEDD526D_AB58DAA6_1D009253_860286F2_A46CC590_54E76700,
    256'h505C401B_CBF7BDD3_22A3386A_6D586047_8643568F_F99D461D_2ED96F12_891907D0,
    256'hC0108AC4_8626C406_A6501127_22A552FD_9E45465C_45AA8678_BED19C68_183A1400,
    256'h9041C1C4_28D311B5_EBB7D631_357B2DE0_6470E0A2_CC286ECC_72D93716_5809B166,
    256'h086B9893_C66CA4A1_156C3DAD_9A930422_2B9F5E9C_11D93358_18230947_87B026D2,
    256'hAF139844_BD158DC7_59F39DA4_62A6BF3D_1FC6FAA9_112F443D_DE41EC04_96757A29,
    256'hF02E2E75_0799FB1D_9460B1A3_0C825AF6_254B7296_9B8D480E_1EA25447_8585E85C,
    256'h6244EB0B_F16C9A5F_0A831F6E_6ADA151F_37B1184C_BC1603FC_1E5529CB_BB180627,
    256'h45062C48_775BAB78_6095D5DB_EDA006C6_47697067_9478352D_2C0EE515_CE331683,
    256'hBD6DC28B_A50829C6_1880D914_546C79BD_D5AD5BF1_196F87E9_6C35F653_8C1AB21C,
    256'h6B31B618_AE7E0DF3_5C1E726B_A060D118_E1D70481_053025FC_DB0228A5_331515C2,
    256'hB430B4AE_24738E88_24C1A2AC_A85C6866_A9266311_75F6E878_9CFB25E6_75C0D24A,
    256'hE2BB2A8B_908E1E2B_3483143A_9344EC27_4F4B69E2_5F4BC65A_C8530310_22BE4BA3,
    256'h29D071E4_8F0317DD_DC749094_FE3A0CEC_D971A3B8_4D594819_A08FE251_6AC3AEB1,
    256'h055E718F_C1CAF155_E078D232_03E6578C_F0685996_01980B58_5042F708_CA09EA89,
    256'h922154A0_D20EA225_00FB5C96_45DD9A58_2C8C0101_982664EA_35242E66_DB1731F1,
    256'hE7CA8E65_91A220D6_96ADCA9E_5634D8A3_6133676F_02669232_44A232BE_9041FC68,
    256'h03AAE619_3DC2A405_DAE4EC5A_E7B26C6E_8A0F7B4C_7550C4BB_DA035E2D_94DE058F,
    256'h7053887D_475366C2_443C49AB_A9A2BA45_5781F58E_695ADDB7_AC5550AA_7C6C922C,
    256'h046CB16C_E3748757_CB9211C3_2470652A_D8B11063_DAF3A513_88FEA593_68D7F5B5
  };

  // Compile-time random data for PRNG buffer default seed
  parameter kmac_pkg::buffer_lfsr_seed_t RndCnstKmacBufferLfsrSeed = {
    32'h069FEA70,
    256'h8041BCE6_9F5C7420_20203692_1F4ED455_D1093666_6D7B149C_04D22DE2_4FBA09D5,
    256'hACA99A14_284B71EF_2CDE4EAD_7ED52AED_48F5EB6D_2CB4DCCA_ACD87CCA_BA001DF7,
    256'h415A41DB_011BD004_F159B46C_632E985F_02B0C4B2_A48C02A5_05578995_AD223C61
  };

  // Compile-time random permutation for LFSR Message output
  parameter kmac_pkg::msg_perm_t RndCnstKmacMsgPerm = {
    128'h6193F540_08B1C09F_017671EE_A04E24D8,
    256'h29BFF723_06B6A873_71181B97_70DF52FA_D734B58A_E5E5634F_4ED214EE_9AB29F88
  };

  ////////////////////////////////////////////
  // otbn
  ////////////////////////////////////////////
  // Default seed of the PRNG used for URND.
  parameter otbn_pkg::urnd_prng_seed_t RndCnstOtbnUrndPrngSeed = {
    256'h35E21DC1_F0DC50F6_13305A3B_D0649F94_6DFDE30B_39E0930F_59DD2B3F_356EAC67
  };

  // Compile-time random reset value for IMem/DMem scrambling key.
  parameter otp_ctrl_pkg::otbn_key_t RndCnstOtbnOtbnKey = {
    128'hC8E02D98_B9444C53_0CF9F2C6_C8EB6553
  };

  // Compile-time random reset value for IMem/DMem scrambling nonce.
  parameter otp_ctrl_pkg::otbn_nonce_t RndCnstOtbnOtbnNonce = {
    64'h849A513A_D5BC3C08
  };

  ////////////////////////////////////////////
  // keymgr_dpe
  ////////////////////////////////////////////
  // Compile-time random bits for initial LFSR seed
  parameter keymgr_pkg::lfsr_seed_t RndCnstKeymgrDpeLfsrSeed = {
    64'h7BC188D7_D33F57B2
  };

  // Compile-time random permutation for LFSR output
  parameter keymgr_pkg::lfsr_perm_t RndCnstKeymgrDpeLfsrPerm = {
    128'h64917D9A_72CFEFC9_48FAD729_C57B060C,
    256'hAC347934_5AD56032_E9B564A3_9AA3DEB8_9807F533_3AF36112_07C7E2ED_9230241D
  };

  // Compile-time random permutation for entropy used in share overriding
  parameter keymgr_pkg::rand_perm_t RndCnstKeymgrDpeRandPerm = {
    160'h7C44A3B2_5D01A64B_417FF60A_1BE79B70_DA84D754
  };

  // Compile-time random bits for revision seed
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeRevisionSeed = {
    256'h951E74C5_B4241377_963DC7F7_E11A33ED_9ED3D7B3_2E6E9EC7_56EEC0D7_13707398
  };

  // Compile-time random bits for software generation seed
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeSoftOutputSeed = {
    256'hB3C4BF69_F9B78701_AF8BCE26_443C9C0C_05CFCFFA_E5B001E6_6F8B69D7_3DC5679C
  };

  // Compile-time random bits for hardware generation seed
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeHardOutputSeed = {
    256'h54EECE99_3B065A58_97BA8658_3CAFCBA5_C198863A_B538ED09_EFD6AA87_78726FC0
  };

  // Compile-time random bits for generation seed when aes destination selected
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeAesSeed = {
    256'h08FDB91F_E718CF78_7475F9B6_C633DE89_CC3671E2_380A788A_F2BD5C43_31E3C2C3
  };

  // Compile-time random bits for generation seed when kmac destination selected
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeKmacSeed = {
    256'h0AA6C060_577D3B69_9444600E_43A5715F_3E99A5FE_4C782DEC_5DE40F7F_2EEEF984
  };

  // Compile-time random bits for generation seed when otbn destination selected
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeOtbnSeed = {
    256'hBCB9F663_78919FBE_9783B33A_85AC60A1_B91ABECE_848F9C92_73044DAD_9DD32948
  };

  // Compile-time random bits for generation seed when no destination selected
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeNoneSeed = {
    256'h5E173010_F2CE7BF2_E71D2DC2_54A70469_E764C65D_17C25E9C_496F06E6_31DAAE31
  };

  // Compile-time random bits for manufacturing key share 0
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeManufKeyShare0 = {
    256'h17EDC752_2E5B0E6A_A034DDF1_60FF98E5_916D6F44_A718E526_B69D6E57_5DE83DA8
  };

  // Compile-time random bits for manufacturing key share 1
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeManufKeyShare1 = {
    256'hA33A86E0_8E65BCA8_644F5EE8_768EF3E4_128C330A_39954437_A72F5800_14F8EB4A
  };

  ////////////////////////////////////////////
  // csrng
  ////////////////////////////////////////////
  // Compile-time random bits for csrng state group diversification value
  parameter csrng_pkg::cs_keymgr_div_t RndCnstCsrngCsKeymgrDivNonProduction = {
    128'hFC697DCB_D4904B71_F3C4B9F5_E99D8B1F,
    256'hC8FEB6D6_9B761336_CB335846_99BB165D_148B0DDD_C590366A_1355261A_B9DCFADA
  };

  // Compile-time random bits for csrng state group diversification value
  parameter csrng_pkg::cs_keymgr_div_t RndCnstCsrngCsKeymgrDivProduction = {
    128'hAE79555D_0E25682D_1D3BA96E_F633827A,
    256'hC22769ED_F3B646F7_378049E6_29B0EB42_3C5E4515_71A80F5F_842CB0C3_56BA065C
  };

  ////////////////////////////////////////////
  // sram_ctrl_main
  ////////////////////////////////////////////
  // Compile-time random reset value for SRAM scrambling key.
  parameter otp_ctrl_pkg::sram_key_t RndCnstSramCtrlMainSramKey = {
    128'h30ED9F92_4E9E4671_7A83C515_9F938F5C
  };

  // Compile-time random reset value for SRAM scrambling nonce.
  parameter otp_ctrl_pkg::sram_nonce_t RndCnstSramCtrlMainSramNonce = {
    128'h27BF3EBC_B99FA1F4_8F1D4F94_038CFA87
  };

  // Compile-time random bits for initial LFSR seed
  parameter sram_ctrl_pkg::lfsr_seed_t RndCnstSramCtrlMainLfsrSeed = {
    64'h0FA5E396_BE143C84
  };

  // Compile-time random permutation for LFSR output
  parameter sram_ctrl_pkg::lfsr_perm_t RndCnstSramCtrlMainLfsrPerm = {
    128'hC5FE8BD8_08C6473B_7DA9349C_5B290567,
    256'h5781B947_665E12A0_DDBC03FC_8602AFE5_6FD0E950_9E8E0768_F244322B_3BF0DE69
  };

  ////////////////////////////////////////////
  // sram_ctrl_mbox
  ////////////////////////////////////////////
  // Compile-time random reset value for SRAM scrambling key.
  parameter otp_ctrl_pkg::sram_key_t RndCnstSramCtrlMboxSramKey = {
    128'hDD0EE9B7_C570CAF8_C9A2BB12_853B8785
  };

  // Compile-time random reset value for SRAM scrambling nonce.
  parameter otp_ctrl_pkg::sram_nonce_t RndCnstSramCtrlMboxSramNonce = {
    128'hCBC77F0C_E1A68150_A2EB9089_32E470EE
  };

  // Compile-time random bits for initial LFSR seed
  parameter sram_ctrl_pkg::lfsr_seed_t RndCnstSramCtrlMboxLfsrSeed = {
    64'h5A9B29BC_D69D5822
  };

  // Compile-time random permutation for LFSR output
  parameter sram_ctrl_pkg::lfsr_perm_t RndCnstSramCtrlMboxLfsrPerm = {
    128'h549FB5AF_66FA1960_7703D0F4_7CC34ABE,
    256'h0931C27E_D32C7B44_F17E1AFE_879C4525_19CE20A6_3A36083F_2A6E165A_A1439B1D
  };

  ////////////////////////////////////////////
  // rom_ctrl0
  ////////////////////////////////////////////
  // Fixed nonce used for address / data scrambling
  parameter bit [63:0] RndCnstRomCtrl0ScrNonce = {
    64'hCA3A3B23_F3AD6160
  };

  // Randomised constant used as a scrambling key for ROM data
  parameter bit [127:0] RndCnstRomCtrl0ScrKey = {
    128'h22B58327_851823E1_EE2CF4FF_8648130F
  };

  ////////////////////////////////////////////
  // rom_ctrl1
  ////////////////////////////////////////////
  // Fixed nonce used for address / data scrambling
  parameter bit [63:0] RndCnstRomCtrl1ScrNonce = {
    64'hF73A1526_597D396F
  };

  // Randomised constant used as a scrambling key for ROM data
  parameter bit [127:0] RndCnstRomCtrl1ScrKey = {
    128'hB7CFAB10_4DF77419_E37945AB_02F5A08C
  };

  ////////////////////////////////////////////
  // rv_core_ibex
  ////////////////////////////////////////////
  // Default seed of the PRNG used for random instructions.
  parameter ibex_pkg::lfsr_seed_t RndCnstRvCoreIbexLfsrSeed = {
    32'h3741B694
  };

  // Permutation applied to the LFSR of the PRNG used for random instructions.
  parameter ibex_pkg::lfsr_perm_t RndCnstRvCoreIbexLfsrPerm = {
    160'h9C9C1176_2BF2074B_F360B555_0F99B839_5844BF59
  };

  // Default icache scrambling key
  parameter logic [ibex_pkg::SCRAMBLE_KEY_W-1:0] RndCnstRvCoreIbexIbexKeyDefault = {
    128'h62D367D6_B46A43CB_19856FE1_1D0D16AD
  };

  // Default icache scrambling nonce
  parameter logic [ibex_pkg::SCRAMBLE_NONCE_W-1:0] RndCnstRvCoreIbexIbexNonceDefault = {
    64'h5B7CFC3D_C48A4226
  };

endpackage : top_darjeeling_rnd_cnst_pkg
