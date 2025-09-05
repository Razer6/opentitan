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
    40'h08_5947834F
  };

  // Compile-time random permutation for LFSR output
  parameter otp_ctrl_top_specific_pkg::lfsr_perm_t RndCnstOtpCtrlLfsrPerm = {
    240'h0119_63785984_6DF4D74A_291C3D58_4E18B0E7_40769952_028908C0_5660D748
  };

  // Compile-time random permutation for scrambling key/nonce register reset value
  parameter otp_ctrl_top_specific_pkg::scrmbl_key_init_t RndCnstOtpCtrlScrmblKeyInit = {
    256'h6269F5AD_BC39874D_0FD7595A_4FE2904C_507C7637_B96AB96E_A9FA5159_E141FFFE
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

  // Compile-time digest const
  parameter otp_ctrl_top_specific_pkg::digest_const_t RndCnstOtpCtrlDigestConst0 = {
    128'hA8764C38_97D3B202_699A4150_668F160F
  };

  // Compile-time digest const
  parameter otp_ctrl_top_specific_pkg::digest_const_t RndCnstOtpCtrlDigestConst1 = {
    128'hE65ED1A8_10CA3C84_6BAE953B_000ABD46
  };

  // Compile-time digest initial vector
  parameter otp_ctrl_top_specific_pkg::digest_iv_t RndCnstOtpCtrlDigestIV0 = {
    64'h2D31B460_654AEA39
  };

  // Compile-time digest initial vector
  parameter otp_ctrl_top_specific_pkg::digest_iv_t RndCnstOtpCtrlDigestIV1 = {
    64'hFE81243C_9287D208
  };

  // OTP invalid partition default for buffered partitions
  parameter logic [163839:0] RndCnstOtpCtrlPartInvDefault = {
    704'({
      320'h29D9A7CB4087FDA5361453D50B61FC7CB7953EDFB738EAD4A16E8CB4BABED257DA058B9112E129D1,
      384'h96977F6B44FE52A3989BDB0D3D47814840623D68DDD36C05F7ED5D88AA992459C836603E55433E23CAF13CCA8709C866
    }),
    640'({
      64'h0,
      64'hB8A699B327C42311,
      256'h16B804150E500E67BAEBD15763563A87060B4625E001576921BE10F789005A17,
      256'hD08CAF486494E0EB064E6BFCDBE9D9759F1A177EE75E0F2E02A96D4B1F386531
    }),
    384'({
      64'h0,
      64'hE5260015A93023F4,
      256'h2BD761DCA1B66827691211D668CDD1D16E71603E685D8FC8176F082A72255D50
    }),
    1024'({
      64'h0,
      64'h4FF59B42784CC290,
      256'hD54DFFE97DC11C7B124696289D48217D252FBEDE93CD37C0015E47FB139DDFE1,
      256'h949D5D7BDF74C45DC6E4BFD6B71600AB90951309F4A77244630C990A861D6A95,
      256'hF9B06BFBE0B53D84EE6E2419AD5E131B981BB9027D78744A1178D397D9613202,
      128'hF5FE978FDB2CF17348F2ECFDA00FF81
    }),
    256'({
      64'h0,
      64'hDA6494A929FCEFDE,
      128'h6C6123CDB2FED8FA257C8EB73C8CBE4D
    }),
    384'({
      64'h0,
      64'h7A2CC14A2068B696,
      128'h55435B602A5AB236378B81C4A4807719,
      128'h890E0D04DCF054F0630C6A03511E9153
    }),
    448'({
      64'h0,
      64'h6E75C751292A3B2,
      32'h0, // unallocated space
      256'h3FB0B56B9CADE203CBB0A66A4996D48E010A3D07EAA1F193FAC7D7291FBAF3E2,
      32'h0
    }),
    192'({
      64'h0,
      64'hD7FB6F1B52799A4D,
      48'h0, // unallocated space
      8'h69,
      8'h69
    }),
    384'({
      64'h0,
      64'h6D621F4A74E39981,
      256'h598AFAB911240C43DBB448F23BC47EA52D09093501B8DC7E58A193A5710B4963
    }),
    18688'({
      64'h0,
      18624'h0
    }),
    33856'({
      64'h579FD942AF07D61A,
      30720'h0,
      3072'h0
    }),
    3136'({
      64'hC7CD9A2997D0336,
      1024'h0,
      2048'h0
    }),
    65664'({
      64'h0,
      64'h5FEA011E9EFBCDEA,
      65536'h0
    }),
    8256'({
      64'h0,
      8192'h0
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
    1280'({
      64'h0,
      64'h3055E3EE9F67513B,
      512'h0,
      32'h0,
      32'h0,
      512'h0,
      32'h0,
      32'h0
    }),
    1280'({
      64'h0,
      64'h81C72CA00A0EE6AA,
      512'h0,
      32'h0,
      32'h0,
      512'h0,
      32'h0,
      32'h0
    }),
    1280'({
      64'h0,
      64'hEF50A0A92F915523,
      512'h0,
      32'h0,
      32'h0,
      512'h0,
      32'h0,
      32'h0
    }),
    2432'({
      64'h0,
      64'hA3B1C77CEC761640,
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
    2752'({
      64'h0,
      64'hD6086818C79B6C63,
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
      64'h63FDCCA98F1E5E73,
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
      64'h22C5BEED02C23E42,
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
      64'h152A4B971F489C29,
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
      64'h22FB44BB7D274CF,
      448'h0
    })
  };

  ////////////////////////////////////////////
  // lc_ctrl
  ////////////////////////////////////////////
  // Diversification value used for all invalid life cycle states.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivInvalid = {
    128'h2ACD7E9B_4300DCB9_E7FA3F9E_E3496EF3
  };

  // Diversification value used for the TEST_UNLOCKED* life cycle states.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivTestUnlocked = {
    128'hB39F0D0A_3E8F0348_19B51A0B_D224C742
  };

  // Diversification value used for the DEV life cycle state.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivDev = {
    128'hD5464AFE_5291C6AF_92400628_DB87E312
  };

  // Diversification value used for the PROD/PROD_END life cycle states.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivProduction = {
    128'h2C8E7AB4_B794C9FB_8F1264E4_C41CC56A
  };

  // Diversification value used for the RMA life cycle state.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivRma = {
    128'hD0FCCDE3_8A96D8FD_A7DD2356_85B52F3C
  };

  // Compile-time random bits used for invalid tokens in the token mux
  parameter lc_ctrl_pkg::lc_token_mux_t RndCnstLcCtrlInvalidTokens = {
    256'h80047ADC_C7E377DD_041AAFFB_C1DFDAB4_1C30880F_64B57CEB_7E57F7C9_8B052786,
    256'h311D5E97_E8F11887_B129EDA8_1399ECEF_31C20932_FEA4BE4C_50E1B7DD_E95E6EB2,
    256'h922B1AE5_A610D471_B0F5BCCF_1F003308_1437F292_6FFEC648_09EA0D7A_4FF66188,
    256'hC135C7C0_2D3544C0_CD5899A6_102AC52C_3399F857_BA1734BE_633E4791_548EB20A
  };

  ////////////////////////////////////////////
  // alert_handler
  ////////////////////////////////////////////
  // Compile-time random bits for initial LFSR seed
  parameter alert_handler_pkg::lfsr_seed_t RndCnstAlertHandlerLfsrSeed = {
    32'h6EA1D893
  };

  // Compile-time random permutation for LFSR output
  parameter alert_handler_pkg::lfsr_perm_t RndCnstAlertHandlerLfsrPerm = {
    160'h3D04CE87_00D5488C_C6D737DA_5F0E7C7E_E099394B
  };

  ////////////////////////////////////////////
  // sram_ctrl_ret_aon
  ////////////////////////////////////////////
  // Compile-time random reset value for SRAM scrambling key.
  parameter otp_ctrl_pkg::sram_key_t RndCnstSramCtrlRetAonSramKey = {
    128'h2CB18AEA_668EFDF8_F9E52992_FBFA8108
  };

  // Compile-time random reset value for SRAM scrambling nonce.
  parameter otp_ctrl_pkg::sram_nonce_t RndCnstSramCtrlRetAonSramNonce = {
    128'h82A8D974_49C51B56_24A45097_A81554F9
  };

  // Compile-time random bits for initial LFSR seed
  parameter sram_ctrl_pkg::lfsr_seed_t RndCnstSramCtrlRetAonLfsrSeed = {
    64'hF0BD581F_3F826AB4
  };

  // Compile-time random permutation for LFSR output
  parameter sram_ctrl_pkg::lfsr_perm_t RndCnstSramCtrlRetAonLfsrPerm = {
    128'hFD77CBCF_D65236ED_BC05E19C_2968491E,
    256'h68F49F2A_2BD5A52A_0980DD45_3B6CEC5D_E23BA929_C6F13994_06E0430E_1520CF8F
  };

  ////////////////////////////////////////////
  // aes
  ////////////////////////////////////////////
  // Default seed of the PRNG used for register clearing.
  parameter aes_pkg::clearing_lfsr_seed_t RndCnstAesClearingLfsrSeed = {
    64'h27AE6E8A_90A814F6
  };

  // Permutation applied to the LFSR of the PRNG used for clearing.
  parameter aes_pkg::clearing_lfsr_perm_t RndCnstAesClearingLfsrPerm = {
    128'h58BAA1DA_60A7FAD6_8EDD7C24_7D5C628C,
    256'hA62E4016_F4953AC3_A06E20F5_D14DBFBD_6C3D9A5C_11EE49CD_1E94C8C1_FC2004BF
  };

  // Permutation applied to the clearing PRNG output for clearing the second share of registers.
  parameter aes_pkg::clearing_lfsr_perm_t RndCnstAesClearingSharePerm = {
    128'h8DC14F69_85FD9677_A17D05B8_DFBA40E8,
    256'hBB04C35B_8DD060A8_1C9FF3D8_3BFE9ADA_DD8914CC_81407CAB_2655E4A3_B16C84A4
  };

  // Default seed of the PRNG used for masking.
  parameter aes_pkg::masking_lfsr_seed_t RndCnstAesMaskingLfsrSeed = {
    32'hBFC104F5,
    256'h2F339E26_B6FFF521_E4F2FA60_34EAA328_5B597BE6_00C36187_5031F882_FE1C8636
  };

  // Permutation applied to the output of the PRNG used for masking.
  parameter aes_pkg::masking_lfsr_perm_t RndCnstAesMaskingLfsrPerm = {
    256'h77354905_9A79764F_6608941D_310B2A4B_9C073689_61521000_93210251_2C831F81,
    256'h470A5560_113F821E_6E5C388E_95048D4C_7B130F1A_57505B72_464A719E_691C250E,
    256'h8C6A9B43_7E0C459F_203E3A3B_29996D8B_8F27705D_58265956_4022337A_84624490,
    256'h75676323_4D5A3406_2E9D1273_18963D41_7D173739_53686F86_15809765_24548A01,
    256'h5E0D3248_7403142F_92194E87_857C2D09_1B986B16_3078423C_885F2B64_28917F6C
  };

  ////////////////////////////////////////////
  // kmac
  ////////////////////////////////////////////
  // Compile-time random data for PRNG default seed
  parameter kmac_pkg::lfsr_seed_t RndCnstKmacLfsrSeed = {
    32'hCC80DC55,
    256'h103D7F08_9D4FB4DC_E09144F6_102DAD45_0E4916F7_20576A3A_35473E1F_5665D1F8
  };

  // Compile-time random permutation for PRNG output
  parameter kmac_pkg::lfsr_perm_t RndCnstKmacLfsrPerm = {
    64'h63C712B5_E5BBD2B8,
    256'hB5829268_C83C2C73_886049AD_6AEC289D_2A01C76A_0923670F_28195B93_0ED0EC21,
    256'hAC8042C1_F907432B_829D2C8B_13D71D45_5240D05C_A01D90BE_31B496EB_B8C50809,
    256'h7C050D66_DBC2CC00_98AEC0E5_AEC41498_30F99C0A_A77837B8_4E86503C_1FA58B5E,
    256'h57A85105_941610D7_AA717627_DECA8954_1870F27B_08209975_16F0642C_6A98F87C,
    256'h1E969EBC_384D94B3_1BA645B5_D57B941E_A5E48F12_5FC9B483_5D22B894_3025A118,
    256'hBE423390_A294BE86_1FA8E119_40D3EAA1_00AB84F7_FA815180_E0B9CD5C_C22AB5ED,
    256'hA80A63AC_013983E3_2916B9F0_78C1297C_E8B4B90B_14595598_98A44E56_A15854CD,
    256'h41A66E69_A471EA24_9E452130_CB22C13A_1672390E_99794264_6E44D71C_84B15201,
    256'h057B8CF8_69E77C6B_51CE1FB2_31F64CC3_572AF17D_D13CC3D8_50C4BEDF_F318C86F,
    256'h4EE3EAEA_6955049D_124608D1_FD5A0D56_202889AC_11B1394D_5869859E_0986E718,
    256'hDE33ACC5_A2D675C3_23E6ED32_993177D2_DB774D04_3ACD214F_D6A59287_25174CDA,
    256'hA29BE092_4650428B_B6965645_9055EF72_00505C40_1BCBFA0E_2122A26C_6A5F548C,
    256'hC7A2368A_4FF96474_B7E4EA12_0DBACC01_08AC4861_9C006A61_01127220_7526B151,
    256'h87116001_9E97B0E6_39CE0282_00241070_BD4A34C4_6D761FB5_8C4D714B_73BD1C38,
    256'h27D309E1_B05CA60D_C797426C_146B9553_C76CA49D_9566C58E_9B130422_1E9BDD6C,
    256'h0D8D3358_1BEAC047_87B025B4_4E6772F4_56371C47_7E68A1CA_9BC4F484_E9B112E6,
    256'h43DCC41F_0B496679_FECFC49B_3B247991_56DAA429_1A2FC2E9_AF6254B6_E169B554,
    256'h80E24325_4478285E_82C6244E_538B16C9_6DCB8EF0_E6E69F5A_11F37AF2_2F1EB0FE,
    256'hF7AF4A72_EEB80189_D1418B12_1BAB4060_9295D680_1B191DA5_C19E51E0_14B45853,
    256'hE17288E7_81111BFC_6667DD08_BA2A1DE5_45FAD169_2CB28623_A19880D9_14546CCB,
    256'h1DD5AD1B_F1196F84_288BF5F6_C58C1A79_ACA4D862_B9F837CD_7079C9AB_01834463,
    256'h875C1204_14C197F3_6C08BD14_CC10570A_D0C2D2AA_9A4E3B28_93068AB2_A1719E1A,
    256'hA4998C45_D7DB69E2_73EBB799_D703492B_E2DEA6AD_623878C4_D20AD8EA_4D13B09D,
    256'h3D2DA6A4_BC65A905_3031022B_E4B9FA8F_071E48F0_317DDDC7_49094FE3_A0CEBF97,
    256'h1A3B50D5_948199D0_FE2516AC_46DD1055_E718FC1C_AE355E07_8D23203E_6578CF06,
    256'h85996031_80B58504_2E808CA0_9EA89922_154A0D20_EA22500F_B5C9645D_D9A582BA,
    256'hA8D01982_664EA352_43026DAE_531F197C_A8E6591A_2231E96A_F9A9E563_4D8A3613,
    256'h3676E226_6923244A_232BE904_1FC2403A_AE6193DC_2A405DAE_4EC5AE7B_26C6E8A0,
    256'hF7B4C755_0C4BB720_35E2D94D_E058F714_3887D475_366C2443_C49A68AE_9155E07D,
    256'h639A56B7_6DEB1554_2A9F1B24_886CB16C_E3748757_CB9211C3_2454AB62_C4418F6B,
    256'hCE944E23_FA964DA3_5FD6D47C_096FE02F_0ABD9C05_3A166630_D83A402E_1443597C
  };

  // Compile-time random data for PRNG buffer default seed
  parameter kmac_pkg::buffer_lfsr_seed_t RndCnstKmacBufferLfsrSeed = {
    32'h12C63F37,
    256'hE231AA02_2F7760B9_20148A23_64D338B0_068E492D_5DBF299B_32784855_4BD78E6C,
    256'hB5B258D5_7A195A5E_069FEA70_8041BCE6_9F5C7420_20203692_1F4ED455_D1093666,
    256'h6D7B149C_04D22DE2_4FBA09D5_ACA99A14_284B71EF_2CDE4EAD_7ED52AED_48F5EB6D
  };

  // Compile-time random permutation for LFSR Message output
  parameter kmac_pkg::msg_perm_t RndCnstKmacMsgPerm = {
    128'h9217B039_D738952E_53A290D9_A856A029,
    256'h1EEC242D_4DF5410C_3C8895BE_78F15E6F_D86FECC1_1BAD1640_702EF1FD_ABCB7B4B
  };

  ////////////////////////////////////////////
  // otbn
  ////////////////////////////////////////////
  // Default seed of the PRNG used for URND.
  parameter otbn_pkg::urnd_prng_seed_t RndCnstOtbnUrndPrngSeed = {
    256'h72DB8ABC_5E3267AA_54471915_63A2D3C7_B5DA91F9_2D26603D_71608D11_DFF2FE67
  };

  // Compile-time random reset value for IMem/DMem scrambling key.
  parameter otp_ctrl_pkg::otbn_key_t RndCnstOtbnOtbnKey = {
    128'h9E73923A_08F69B2B_313F35E2_1DC1F0DC
  };

  // Compile-time random reset value for IMem/DMem scrambling nonce.
  parameter otp_ctrl_pkg::otbn_nonce_t RndCnstOtbnOtbnNonce = {
    64'h50F61330_5A3BD064
  };

  ////////////////////////////////////////////
  // keymgr_dpe
  ////////////////////////////////////////////
  // Compile-time random bits for initial LFSR seed
  parameter keymgr_pkg::lfsr_seed_t RndCnstKeymgrDpeLfsrSeed = {
    64'h9F946DFD_E30B39E0
  };

  // Compile-time random permutation for LFSR output
  parameter keymgr_pkg::lfsr_perm_t RndCnstKeymgrDpeLfsrPerm = {
    128'hE5A30471_2A70174F_317ED23F_028EFD1E,
    256'h562A823D_57E09181_41D56789_E0BA3ACC_E1BF6F94_4D1BA62F_266B6CD3_CADD60E4
  };

  // Compile-time random permutation for entropy used in share overriding
  parameter keymgr_pkg::rand_perm_t RndCnstKeymgrDpeRandPerm = {
    160'h924BFA1D_75CB3088_6EE2E04C_35389D9C_75EB01AF
  };

  // Compile-time random bits for revision seed
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeRevisionSeed = {
    256'hA2D2A94B_466A1D76_41ECD349_18FE43E3_DB0B2973_6B86B8D6_91441FA5_D2620E71
  };

  // Compile-time random bits for software generation seed
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeSoftOutputSeed = {
    256'hB0BD784D_8DEB951E_74C5B424_1377963D_C7F7E11A_33ED9ED3_D7B32E6E_9EC756EE
  };

  // Compile-time random bits for hardware generation seed
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeHardOutputSeed = {
    256'hC0D71370_7398B3C4_BF69F9B7_8701AF8B_CE26443C_9C0C05CF_CFFAE5B0_01E66F8B
  };

  // Compile-time random bits for generation seed when aes destination selected
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeAesSeed = {
    256'h69D73DC5_679C54EE_CE993B06_5A5897BA_86583CAF_CBA5C198_863AB538_ED09EFD6
  };

  // Compile-time random bits for generation seed when kmac destination selected
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeKmacSeed = {
    256'hAA877872_6FC008FD_B91FE718_CF787475_F9B6C633_DE89CC36_71E2380A_788AF2BD
  };

  // Compile-time random bits for generation seed when otbn destination selected
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeOtbnSeed = {
    256'h5C4331E3_C2C30AA6_C060577D_3B699444_600E43A5_715F3E99_A5FE4C78_2DEC5DE4
  };

  // Compile-time random bits for generation seed when no destination selected
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeNoneSeed = {
    256'h0F7F2EEE_F984BCB9_F6637891_9FBE9783_B33A85AC_60A1B91A_BECE848F_9C927304
  };

  ////////////////////////////////////////////
  // csrng
  ////////////////////////////////////////////
  // Compile-time random bits for csrng state group diversification value
  parameter csrng_pkg::cs_keymgr_div_t RndCnstCsrngCsKeymgrDivNonProduction = {
    128'h4DAD9DD3_29485E17_3010F2CE_7BF2E71D,
    256'h2DC254A7_0469E764_C65D17C2_5E9C496F_06E631DA_AE3117ED_C7522E5B_0E6AA034
  };

  // Compile-time random bits for csrng state group diversification value
  parameter csrng_pkg::cs_keymgr_div_t RndCnstCsrngCsKeymgrDivProduction = {
    128'hDDF160FF_98E5916D_6F44A718_E526B69D,
    256'h6E575DE8_3DA8A33A_86E08E65_BCA8644F_5EE8768E_F3E4128C_330A3995_4437A72F
  };

  ////////////////////////////////////////////
  // sram_ctrl_main
  ////////////////////////////////////////////
  // Compile-time random reset value for SRAM scrambling key.
  parameter otp_ctrl_pkg::sram_key_t RndCnstSramCtrlMainSramKey = {
    128'h580014F8_EB4AFC69_7DCBD490_4B71F3C4
  };

  // Compile-time random reset value for SRAM scrambling nonce.
  parameter otp_ctrl_pkg::sram_nonce_t RndCnstSramCtrlMainSramNonce = {
    128'hB9F5E99D_8B1FC8FE_B6D69B76_1336CB33
  };

  // Compile-time random bits for initial LFSR seed
  parameter sram_ctrl_pkg::lfsr_seed_t RndCnstSramCtrlMainLfsrSeed = {
    64'h584699BB_165D148B
  };

  // Compile-time random permutation for LFSR output
  parameter sram_ctrl_pkg::lfsr_perm_t RndCnstSramCtrlMainLfsrPerm = {
    128'h74F658D9_38FDA54A_398A5C21_00A990F0,
    256'h1CB409FB_6C21615C_4A7ED1D6_FCE031BA_8E1CBEBE_FD7E1EAE_E1895446_8D931DC3
  };

  ////////////////////////////////////////////
  // sram_ctrl_mbox
  ////////////////////////////////////////////
  // Compile-time random reset value for SRAM scrambling key.
  parameter otp_ctrl_pkg::sram_key_t RndCnstSramCtrlMboxSramKey = {
    128'h27BF3EBC_B99FA1F4_8F1D4F94_038CFA87
  };

  // Compile-time random reset value for SRAM scrambling nonce.
  parameter otp_ctrl_pkg::sram_nonce_t RndCnstSramCtrlMboxSramNonce = {
    128'h0FA5E396_BE143C84_A7E436F0_EFB08A31
  };

  // Compile-time random bits for initial LFSR seed
  parameter sram_ctrl_pkg::lfsr_seed_t RndCnstSramCtrlMboxLfsrSeed = {
    64'h10243FE2_DE681C31
  };

  // Compile-time random permutation for LFSR output
  parameter sram_ctrl_pkg::lfsr_perm_t RndCnstSramCtrlMboxLfsrPerm = {
    128'h1744BB58_6849F81B_0731D03A_4EA83290,
    256'hD73C3DE5_CABA3BE6_A59ACB7F_8B51FD4D_846F30F7_235602E7_1C2257D6_8E9509E8
  };

  ////////////////////////////////////////////
  // rom_ctrl0
  ////////////////////////////////////////////
  // Fixed nonce used for address / data scrambling
  parameter bit [63:0] RndCnstRomCtrl0ScrNonce = {
    64'h50A2EB90_8932E470
  };

  // Randomised constant used as a scrambling key for ROM data
  parameter bit [127:0] RndCnstRomCtrl0ScrKey = {
    128'hEE5A9B29_BCD69D58_2277B1E6_4385A896
  };

  ////////////////////////////////////////////
  // rom_ctrl1
  ////////////////////////////////////////////
  // Fixed nonce used for address / data scrambling
  parameter bit [63:0] RndCnstRomCtrl1ScrNonce = {
    64'hE817B8A5_C93F2061
  };

  // Randomised constant used as a scrambling key for ROM data
  parameter bit [127:0] RndCnstRomCtrl1ScrKey = {
    128'h8F3BDC99_098A2165_ADDE5049_467379DC
  };

  ////////////////////////////////////////////
  // rv_core_ibex
  ////////////////////////////////////////////
  // Default seed of the PRNG used for random instructions.
  parameter ibex_pkg::lfsr_seed_t RndCnstRvCoreIbexLfsrSeed = {
    32'hBF47766A
  };

  // Permutation applied to the LFSR of the PRNG used for random instructions.
  parameter ibex_pkg::lfsr_perm_t RndCnstRvCoreIbexLfsrPerm = {
    160'hDF1F1B26_57A07A06_0FE66AB5_0CBB13F1_CA445562
  };

  // Default icache scrambling key
  parameter logic [ibex_pkg::SCRAMBLE_KEY_W-1:0] RndCnstRvCoreIbexIbexKeyDefault = {
    128'h6103CA3A_3B23F3AD_616022B5_83278518
  };

  // Default icache scrambling nonce
  parameter logic [ibex_pkg::SCRAMBLE_NONCE_W-1:0] RndCnstRvCoreIbexIbexNonceDefault = {
    64'h23E1EE2C_F4FF8648
  };

endpackage : top_darjeeling_rnd_cnst_pkg
