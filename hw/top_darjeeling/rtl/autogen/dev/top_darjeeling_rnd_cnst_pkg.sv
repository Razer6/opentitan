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
    40'hC6_F3E6F873
  };

  // Compile-time random permutation for LFSR output
  parameter otp_ctrl_top_specific_pkg::lfsr_perm_t RndCnstOtpCtrlLfsrPerm = {
    240'h1666_4910B0A3_58101B40_D3130CE4_463DD89F_81C49E5E_421A5251_D82959E1
  };

  // Compile-time random permutation for scrambling key/nonce register reset value
  parameter otp_ctrl_top_specific_pkg::scrmbl_key_init_t RndCnstOtpCtrlScrmblKeyInit = {
    256'hD0EDF98C_A3085947_834F20F8_C5743463_B15B05DC_9332084A_51F812A1_C9E5D139
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
      320'h40623D68DDD36C05F7ED5D88AA992459C836603E55433E23CAF13CCA8709C86629D9A7CB4087FDA5,
      384'h16B804150E500E67BAEBD15763563A87060B4625E001576921BE10F789005A1796977F6B44FE52A3989BDB0D3D478148
    }),
    384'({
      64'h0,
      64'h7A2CC14A2068B696,
      256'hD08CAF486494E0EB064E6BFCDBE9D9759F1A177EE75E0F2E02A96D4B1F386531
    }),
    384'({
      64'h0,
      64'h6E75C751292A3B2,
      256'h2BD761DCA1B66827691211D668CDD1D16E71603E685D8FC8176F082A72255D50
    }),
    1024'({
      64'h0,
      64'hD7FB6F1B52799A4D,
      256'hD54DFFE97DC11C7B124696289D48217D252FBEDE93CD37C0015E47FB139DDFE1,
      256'h949D5D7BDF74C45DC6E4BFD6B71600AB90951309F4A77244630C990A861D6A95,
      256'hF9B06BFBE0B53D84EE6E2419AD5E131B981BB9027D78744A1178D397D9613202,
      128'hF5FE978FDB2CF17348F2ECFDA00FF81
    }),
    256'({
      64'h0,
      64'h6D621F4A74E39981,
      128'h6C6123CDB2FED8FA257C8EB73C8CBE4D
    }),
    384'({
      64'h0,
      64'h579FD942AF07D61A,
      128'h55435B602A5AB236378B81C4A4807719,
      128'h890E0D04DCF054F0630C6A03511E9153
    }),
    448'({
      64'h0,
      64'hC7CD9A2997D0336,
      32'h0, // unallocated space
      256'h3FB0B56B9CADE203CBB0A66A4996D48E010A3D07EAA1F193FAC7D7291FBAF3E2,
      32'h0
    }),
    192'({
      64'h0,
      64'h5FEA011E9EFBCDEA,
      48'h0, // unallocated space
      8'h69,
      8'h69
    }),
    384'({
      64'h0,
      64'hB4B96B49BFC13A95,
      256'h598AFAB911240C43DBB448F23BC47EA52D09093501B8DC7E58A193A5710B4963
    }),
    33856'({
      64'hBCEC8797AA2503A2,
      30720'h0,
      3072'h0
    }),
    3136'({
      64'h719E4F5B3F5FF28B,
      1024'h0,
      2048'h0
    }),
    85952'({
      64'h0,
      64'h3055E3EE9F67513B,
      12288'h0, // unallocated space
      73536'h0
    }),
    8256'({
      64'h0,
      8192'h0
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
    1280'({
      64'h0,
      64'hA3B1C77CEC761640,
      512'h0,
      32'h0,
      32'h0,
      512'h0,
      32'h0,
      32'h0
    }),
    1280'({
      64'h0,
      64'hD6086818C79B6C63,
      512'h0,
      32'h0,
      32'h0,
      512'h0,
      32'h0,
      32'h0
    }),
    1280'({
      64'h0,
      64'h63FDCCA98F1E5E73,
      512'h0,
      32'h0,
      32'h0,
      512'h0,
      32'h0,
      32'h0
    }),
    1280'({
      64'h0,
      64'h22C5BEED02C23E42,
      512'h0,
      32'h0,
      32'h0,
      512'h0,
      32'h0,
      32'h0
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
    2752'({
      64'h0,
      64'h22FB44BB7D274CF,
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
      64'hDA058B9112E129D1,
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
      64'hA16E8CB4BABED257,
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
      64'hB7953EDFB738EAD4,
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
      64'h361453D50B61FC7C,
      448'h0
    })
  };

  ////////////////////////////////////////////
  // lc_ctrl
  ////////////////////////////////////////////
  // Diversification value used for all invalid life cycle states.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivInvalid = {
    128'hCED88345_1DE75A31_A17164A5_5B7B63F3
  };

  // Diversification value used for the TEST_UNLOCKED* life cycle states.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivTestUnlocked = {
    128'h6A1FDEC4_836F95FF_7F93FC45_F3A040F9
  };

  // Diversification value used for the DEV life cycle state.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivDev = {
    128'h68A66269_F5ADBC39_874D0FD7_595A4FE2
  };

  // Diversification value used for the PROD/PROD_END life cycle states.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivProduction = {
    128'h904C507C_7637B96A_B96EA9FA_5159E141
  };

  // Diversification value used for the RMA life cycle state.
  parameter lc_ctrl_pkg::lc_keymgr_div_t RndCnstLcCtrlLcKeymgrDivRma = {
    128'hFFFE2ACD_7E9B4300_DCB9E7FA_3F9EE349
  };

  // Compile-time random bits used for invalid tokens in the token mux
  parameter lc_ctrl_pkg::lc_token_mux_t RndCnstLcCtrlInvalidTokens = {
    256'h6EF3B39F_0D0A3E8F_034819B5_1A0BD224_C742D546_4AFE5291_C6AF9240_0628DB87,
    256'hE3122C8E_7AB4B794_C9FB8F12_64E4C41C_C56AD0FC_CDE38A96_D8FDA7DD_235685B5,
    256'h2F3C8004_7ADCC7E3_77DD041A_AFFBC1DF_DAB41C30_880F64B5_7CEB7E57_F7C98B05,
    256'h2786311D_5E97E8F1_1887B129_EDA81399_ECEF31C2_0932FEA4_BE4C50E1_B7DDE95E
  };

  ////////////////////////////////////////////
  // alert_handler
  ////////////////////////////////////////////
  // Compile-time random bits for initial LFSR seed
  parameter alert_handler_pkg::lfsr_seed_t RndCnstAlertHandlerLfsrSeed = {
    32'h6EB2922B
  };

  // Compile-time random permutation for LFSR output
  parameter alert_handler_pkg::lfsr_perm_t RndCnstAlertHandlerLfsrPerm = {
    160'h8CE0B2F5_8AC22443_BF794B6B_E0981FBD_9DA15383
  };

  ////////////////////////////////////////////
  // sram_ctrl_ret_aon
  ////////////////////////////////////////////
  // Compile-time random reset value for SRAM scrambling key.
  parameter otp_ctrl_pkg::sram_key_t RndCnstSramCtrlRetAonSramKey = {
    128'hA6102AC5_2C3399F8_57BA1734_BE633E47
  };

  // Compile-time random reset value for SRAM scrambling nonce.
  parameter otp_ctrl_pkg::sram_nonce_t RndCnstSramCtrlRetAonSramNonce = {
    128'h91548EB2_0A6EA1D8_935F5076_924E87E9
  };

  // Compile-time random bits for initial LFSR seed
  parameter sram_ctrl_pkg::lfsr_seed_t RndCnstSramCtrlRetAonLfsrSeed = {
    64'hFC4E7C97_9C1CFE52
  };

  // Compile-time random permutation for LFSR output
  parameter sram_ctrl_pkg::lfsr_perm_t RndCnstSramCtrlRetAonLfsrPerm = {
    128'hFAB70F7D_84C50650_28211C35_CC4E5637,
    256'h61C3BBD7_B886AA54_C7AC9276_70BB90A8_D98AFFF4_F0919AB0_E4209AD5_773176CB
  };

  ////////////////////////////////////////////
  // aes
  ////////////////////////////////////////////
  // Default seed of the PRNG used for register clearing.
  parameter aes_pkg::clearing_lfsr_seed_t RndCnstAesClearingLfsrSeed = {
    64'h8A8115AA_A655A738
  };

  // Permutation applied to the LFSR of the PRNG used for clearing.
  parameter aes_pkg::clearing_lfsr_perm_t RndCnstAesClearingLfsrPerm = {
    128'hB968E420_A2D2178C_CCF25C6D_DB49D7DF,
    256'h01B5E8E6_D47B96A2_360C9F64_056CFA9E_CF87F99C_26A1C1A0_40980DD4_5342BBFD
  };

  // Permutation applied to the clearing PRNG output for clearing the second share of registers.
  parameter aes_pkg::clearing_lfsr_perm_t RndCnstAesClearingSharePerm = {
    128'h5AA62679_A9F50B45_CE2C4C32_549E7806,
    256'h2CEFE94B_1B4CAC7D_4370FF49_F1F68641_A5328B63_AE001D14_D73C211E_CFB99A7E
  };

  // Default seed of the PRNG used for masking.
  parameter aes_pkg::masking_lfsr_seed_t RndCnstAesMaskingLfsrSeed = {
    32'hF4295565,
    256'hEACBAB6E_05518232_4F468874_BD74C5DD_D144EFB2_BF98A4BE_BF48300E_66F46F65
  };

  // Permutation applied to the output of the PRNG used for masking.
  parameter aes_pkg::masking_lfsr_perm_t RndCnstAesMaskingLfsrPerm = {
    256'h057A5598_07742B31_38523745_1F9D2976_970F126D_6C4C4746_50547E91_5A4E1099,
    256'h2357139F_4A6F6740_71226288_632E9B81_777B034D_87091C4F_5D90952A_59533B6A,
    256'h8A9C645C_494B6006_19243A01_9E17580C_276B4285_16840D5F_350B8996_66808D44,
    256'h83155632_7F789348_3F9A8B92_0E418628_437C6100_8F3D2C2D_1451751A_307D7972,
    256'h2126338C_043E1869_826E391B_2F1E5E73_8E02705B_0A203C08_68343611_651D9425
  };

  ////////////////////////////////////////////
  // kmac
  ////////////////////////////////////////////
  // Compile-time random data for PRNG default seed
  parameter kmac_pkg::lfsr_seed_t RndCnstKmacLfsrSeed = {
    32'hFA055C5C,
    256'h33DE5F27_D9886BFF_3F4D69C2_A5DB91E7_B811F857_D91132EC_8C73793F_384646CC
  };

  // Compile-time random permutation for PRNG output
  parameter kmac_pkg::lfsr_perm_t RndCnstKmacLfsrPerm = {
    64'h25861076_476AC868,
    256'h5E636C5E_C645DF74_C3401C32_9C192599_4239987C_19293653_5861187C_24510E7E,
    256'h8B713C24_820B03B2_0C3771D1_556D75AF_1452992B_C2303866_747C6F83_A31E3A4B,
    256'h57207E58_E247FD14_86EB3339_6EB00B1A_08B35420_2315CEB2_59396D7A_A2A2C3CE,
    256'h790F0970_1285BD47_1882C260_CB023D0E_442238BD_84B3D9BA_BCFA8B9E_7548BE71,
    256'h020A68E4_BF9169DE_89002460_C04FAE4E_E3E6AD49_E310849E_0382E765_B9089F37,
    256'h5A5533E2_5004C30F_8AD2AA9C_B491B950_9FB5D654_2D827F89_899F0452_7001A541,
    256'h7447A851_8E1484CB_FC8B04D2_AA3D0587_D619C924_6CD74884_8097E339_CDC57559,
    256'h01CE10A8_276A061D_17DBBC35_037AAE27_A0C66A4C_A350E1C7_D1942A86_402DCB21,
    256'h53028F5A_750D1393_E1447604_8C8A8C3D_0BED10D6_0151A939_25B83AD4_D801CC76,
    256'hC4989C7F_82CB2651_126F0893_2C5A820A_53948D9B_DDA058ED_7BD6769D_239B5B46,
    256'h3DA67A6D_6214FDA6_E804B92C_6F4DA9E2_29092364_C82865E8_3BA05905_5D801417,
    256'hC2C6F2FE_846B5EDB_EEE493A3_8332EE7B_9AF3FE7F_1D2C7B19_CD811CA7_EC422B12,
    256'h182AE71A_9730449C_BF562A7C_545D8455_606784AA_E97AB20D_AED00904_1C1DD28D,
    256'h311B6B49_404D5725_33BD1C38_26B309CB_AA9A56FA_5809AEC1_AE964F17_92926455,
    256'h9DEC0A4C_4C10883E_5DBE58D5_ECCDB86A_C4787B02_539BC0BD_158DCB32_0C95E712,
    256'hA69E3D30_EA2044B8_20DB5507_94525A87_1D9A6F76_71AE1E71_25B66E0A_468B8CBA,
    256'h6254B795_69AF9F90_E2112544_71185E5B_C62C3242_8716C92A_F48AE8C5_A11F37AD,
    256'h92F1D40F_EDE8DDFA_2EEA4018_9D1418B1_21BA7D31_5C515D68_1EB19170_67A98621,
    256'h2D1631A7_84A239D5_1446E619_99F74311_8687790D_7EAEDA4A_D8A184CD_03101BBC,
    256'h48A8995A_AA0F243E_3EAEA09B_6CB76554_829CC051_F0F5505C_7DAFA306_8B6B2066,
    256'h18AE7E0D_F35C1E72_699060D1_18DC1C1C_14B697F3_6C089AB1_6BAC570A_D0C2D297,
    256'h8A8E39A0_93C60AB2_A171BC9A_A4998C45_D7DB0DE2_73EA7799_D703492A_C287AFC8,
    256'hE1E2A948_2A23A934_4EC274F4_B69652F1_969114C0_C408AF92_E6C9F41C_7923C0C5,
    256'hF7771D24_253F8E83_3BA5A3AF_70594819_988FE251_6AB97191_055E718F_C1CACB55,
    256'hE078D232_03E6578C_F0685996_02FC0B58_5042D008_CA09EA48_85528348_3A889403,
    256'hED725917_766960A9_B0A40660_9993A8D4_90B05B6B_34C7BCDF_2A399646_888C065A,
    256'hAE25634D_8A361336_76CA2669_23244A23_24107EEF_00EAB986_4F70A901_74EC5AE7,
    256'hB26C6E8A_0F71D543_C6EEA80D_784DE058_F6DD3887_D475366C_2443C49A_68855781,
    256'hF58E695A_DDB7AC55_50AA7C6C_922C5EC5_B38DD21D_5F2E4847_0C9152AD_8B11063D,
    256'hA944E23F_A964DA35_FD6D47C0_940BBD9C_053A1666_20E900B8_510D65F1_593E0D56,
    256'hA08116C3_9C731044_ED39D5FC_1021E8EE_30B50605_306C06AD_F53C4BAD_5BF6065C
  };

  // Compile-time random data for PRNG buffer default seed
  parameter kmac_pkg::buffer_lfsr_seed_t RndCnstKmacBufferLfsrSeed = {
    32'h1A7AF76F,
    256'h3CC7C36F_4706F29B_FFD4D52C_2087CAAE_9D71DA5B_BA6C103F_8DF24D25_982112C6,
    256'h3F37E231_AA022F77_60B92014_8A2364D3_38B0068E_492D5DBF_299B3278_48554BD7,
    256'h8E6CB5B2_58D57A19_5A5E069F_EA708041_BCE69F5C_74202020_36921F4E_D455D109
  };

  // Compile-time random permutation for LFSR Message output
  parameter kmac_pkg::msg_perm_t RndCnstKmacMsgPerm = {
    128'hE4E8045D_83E35067_78A4923E_A15465B7,
    256'h3C0CFE1C_7C68393A_89640703_2B3DD6F7_F6DDC48A_EE6AAB0A_E4CBD019_C579B64D
  };

  ////////////////////////////////////////////
  // otbn
  ////////////////////////////////////////////
  // Default seed of the PRNG used for URND.
  parameter otbn_pkg::urnd_prng_seed_t RndCnstOtbnUrndPrngSeed = {
    256'h496AFAD3_4C8C5679_382BBE58_2C34EA5F_5D2852A0_7EFA0E49_4AA9FE6D_81A74772
  };

  // Compile-time random reset value for IMem/DMem scrambling key.
  parameter otp_ctrl_pkg::otbn_key_t RndCnstOtbnOtbnKey = {
    128'hDB8ABC5E_3267AA54_47191563_A2D3C7B5
  };

  // Compile-time random reset value for IMem/DMem scrambling nonce.
  parameter otp_ctrl_pkg::otbn_nonce_t RndCnstOtbnOtbnNonce = {
    64'hDA91F92D_26603D71
  };

  ////////////////////////////////////////////
  // keymgr_dpe
  ////////////////////////////////////////////
  // Compile-time random bits for initial LFSR seed
  parameter keymgr_pkg::lfsr_seed_t RndCnstKeymgrDpeLfsrSeed = {
    64'h608D11DF_F2FE679E
  };

  // Compile-time random permutation for LFSR output
  parameter keymgr_pkg::lfsr_perm_t RndCnstKeymgrDpeLfsrPerm = {
    128'hA48AD21A_A7EE5DAA_00CFF845_D20B5D57,
    256'h68D341EC_A2601EC9_44BBECDF_8EB10FED_7C6E59D9_F56E4453_01CD3CC2_A608E91C
  };

  // Compile-time random permutation for entropy used in share overriding
  parameter keymgr_pkg::rand_perm_t RndCnstKeymgrDpeRandPerm = {
    160'hF10A9150_2D7A31BE_7CCBACAF_DB4F23D4_58072A07
  };

  // Compile-time random bits for revision seed
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeRevisionSeed = {
    256'h242306DF_DC4084CB_3D4DA21D_163C0070_993270A2_D2A94B46_6A1D7641_ECD34918
  };

  // Compile-time random bits for software generation seed
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeSoftOutputSeed = {
    256'hFE43E3DB_0B29736B_86B8D691_441FA5D2_620E71B0_BD784D8D_EB951E74_C5B42413
  };

  // Compile-time random bits for hardware generation seed
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeHardOutputSeed = {
    256'h77963DC7_F7E11A33_ED9ED3D7_B32E6E9E_C756EEC0_D7137073_98B3C4BF_69F9B787
  };

  // Compile-time random bits for generation seed when aes destination selected
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeAesSeed = {
    256'h01AF8BCE_26443C9C_0C05CFCF_FAE5B001_E66F8B69_D73DC567_9C54EECE_993B065A
  };

  // Compile-time random bits for generation seed when kmac destination selected
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeKmacSeed = {
    256'h5897BA86_583CAFCB_A5C19886_3AB538ED_09EFD6AA_8778726F_C008FDB9_1FE718CF
  };

  // Compile-time random bits for generation seed when otbn destination selected
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeOtbnSeed = {
    256'h787475F9_B6C633DE_89CC3671_E2380A78_8AF2BD5C_4331E3C2_C30AA6C0_60577D3B
  };

  // Compile-time random bits for generation seed when no destination selected
  parameter keymgr_pkg::seed_t RndCnstKeymgrDpeNoneSeed = {
    256'h69944460_0E43A571_5F3E99A5_FE4C782D_EC5DE40F_7F2EEEF9_84BCB9F6_6378919F
  };

  ////////////////////////////////////////////
  // csrng
  ////////////////////////////////////////////
  // Compile-time random bits for csrng state group diversification value
  parameter csrng_pkg::cs_keymgr_div_t RndCnstCsrngCsKeymgrDivNonProduction = {
    128'hBE9783B3_3A85AC60_A1B91ABE_CE848F9C,
    256'h9273044D_AD9DD329_485E1730_10F2CE7B_F2E71D2D_C254A704_69E764C6_5D17C25E
  };

  // Compile-time random bits for csrng state group diversification value
  parameter csrng_pkg::cs_keymgr_div_t RndCnstCsrngCsKeymgrDivProduction = {
    128'h9C496F06_E631DAAE_3117EDC7_522E5B0E,
    256'h6AA034DD_F160FF98_E5916D6F_44A718E5_26B69D6E_575DE83D_A8A33A86_E08E65BC
  };

  ////////////////////////////////////////////
  // sram_ctrl_main
  ////////////////////////////////////////////
  // Compile-time random reset value for SRAM scrambling key.
  parameter otp_ctrl_pkg::sram_key_t RndCnstSramCtrlMainSramKey = {
    128'hA8644F5E_E8768EF3_E4128C33_0A399544
  };

  // Compile-time random reset value for SRAM scrambling nonce.
  parameter otp_ctrl_pkg::sram_nonce_t RndCnstSramCtrlMainSramNonce = {
    128'h37A72F58_0014F8EB_4AFC697D_CBD4904B
  };

  // Compile-time random bits for initial LFSR seed
  parameter sram_ctrl_pkg::lfsr_seed_t RndCnstSramCtrlMainLfsrSeed = {
    64'h71F3C4B9_F5E99D8B
  };

  // Compile-time random permutation for LFSR output
  parameter sram_ctrl_pkg::lfsr_perm_t RndCnstSramCtrlMainLfsrPerm = {
    128'h51848B09_3DBC3802_BA063D25_71F85980,
    256'h86E93D0C_EBB3FDEF_AA7F70A1_E1895796_B89038B1_5C5BBB45_633E3447_66D6DC87
  };

  ////////////////////////////////////////////
  // sram_ctrl_mbox
  ////////////////////////////////////////////
  // Compile-time random reset value for SRAM scrambling key.
  parameter otp_ctrl_pkg::sram_key_t RndCnstSramCtrlMboxSramKey = {
    128'h30ED9F92_4E9E4671_7A83C515_9F938F5C
  };

  // Compile-time random reset value for SRAM scrambling nonce.
  parameter otp_ctrl_pkg::sram_nonce_t RndCnstSramCtrlMboxSramNonce = {
    128'h27BF3EBC_B99FA1F4_8F1D4F94_038CFA87
  };

  // Compile-time random bits for initial LFSR seed
  parameter sram_ctrl_pkg::lfsr_seed_t RndCnstSramCtrlMboxLfsrSeed = {
    64'h0FA5E396_BE143C84
  };

  // Compile-time random permutation for LFSR output
  parameter sram_ctrl_pkg::lfsr_perm_t RndCnstSramCtrlMboxLfsrPerm = {
    128'hC5FE8BD8_08C6473B_7DA9349C_5B290567,
    256'h5781B947_665E12A0_DDBC03FC_8602AFE5_6FD0E950_9E8E0768_F244322B_3BF0DE69
  };

  ////////////////////////////////////////////
  // rom_ctrl0
  ////////////////////////////////////////////
  // Fixed nonce used for address / data scrambling
  parameter bit [63:0] RndCnstRomCtrl0ScrNonce = {
    64'hDD0EE9B7_C570CAF8
  };

  // Randomised constant used as a scrambling key for ROM data
  parameter bit [127:0] RndCnstRomCtrl0ScrKey = {
    128'hC9A2BB12_853B8785_CBC77F0C_E1A68150
  };

  ////////////////////////////////////////////
  // rom_ctrl1
  ////////////////////////////////////////////
  // Fixed nonce used for address / data scrambling
  parameter bit [63:0] RndCnstRomCtrl1ScrNonce = {
    64'hA2EB9089_32E470EE
  };

  // Randomised constant used as a scrambling key for ROM data
  parameter bit [127:0] RndCnstRomCtrl1ScrKey = {
    128'h5A9B29BC_D69D5822_77B1E643_85A896E8
  };

  ////////////////////////////////////////////
  // rv_core_ibex
  ////////////////////////////////////////////
  // Default seed of the PRNG used for random instructions.
  parameter ibex_pkg::lfsr_seed_t RndCnstRvCoreIbexLfsrSeed = {
    32'h17B8A5C9
  };

  // Permutation applied to the LFSR of the PRNG used for random instructions.
  parameter ibex_pkg::lfsr_perm_t RndCnstRvCoreIbexLfsrPerm = {
    160'hD0072162_D481726D_DD6D7B90_9557BEE0_67F8B087
  };

  // Default icache scrambling key
  parameter logic [ibex_pkg::SCRAMBLE_KEY_W-1:0] RndCnstRvCoreIbexIbexKeyDefault = {
    128'hED74BC3B_B6E6CB82_2B506B65_20FC39C7
  };

  // Default icache scrambling nonce
  parameter logic [ibex_pkg::SCRAMBLE_NONCE_W-1:0] RndCnstRvCoreIbexIbexNonceDefault = {
    64'h0A2D1274_67A42C0E
  };

endpackage : top_darjeeling_rnd_cnst_pkg
