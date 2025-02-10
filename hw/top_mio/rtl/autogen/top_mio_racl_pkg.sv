// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
//
// util/topgen.py -t hw/top_mio/data/top_mio.hjson \
//                -o hw/top_mio/ \
//                --rnd_cnst_seed \
//                1017106219537032642877583828875051302543807092889754935647094601236425074047


package top_mio_racl_pkg;

  /**
   * RACL groups:
   *   Null
   *     ALL_RD_WR            (Idx  0)
   *     HW_ROT_PWC_WR_ALL_RD (Idx  1)
   *     PRE_BOOT_M           (Idx  2)
   *     POST_BOOT_M          (Idx  3)
   *     TEE_LIMITED          (Idx  4)
   *     RCODE_PRIVATE        (Idx  5)
   *     ROT_PRIVATE          (Idx  6)
   *     PWC_PRIVATE          (Idx  7)
   *     MIO_PRIVATE          (Idx  8)
   *     DUC_PRIVATE          (Idx  9)
   */

  /**
   * Policy selection vector for mbx0
   *   TLUL interface name: soc
   *   RACL group: Null
   *   Register to policy mapping:
   *     SOC_CONTROL:           MIO_PRIVATE (Idx  8)
   *     SOC_STATUS:            MIO_PRIVATE (Idx  8)
   *     SOC_DOE_INTR_MSG_ADDR: MIO_PRIVATE (Idx  8)
   *     SOC_DOE_INTR_MSG_DATA: MIO_PRIVATE (Idx  8)
   *   Window to policy mapping:
   *     WDATA: MIO_PRIVATE (Idx  8)
   *     RDATA: MIO_PRIVATE (Idx  8)
   */
  parameter top_racl_pkg::racl_policy_sel_t RACL_POLICY_SEL_MBX0_SOC [4] = '{
    8, 8, 8, 8
  };
  parameter top_racl_pkg::racl_policy_sel_t RACL_POLICY_SEL_MBX0_SOC_WIN_WDATA = 8;
  parameter top_racl_pkg::racl_policy_sel_t RACL_POLICY_SEL_MBX0_SOC_WIN_RDATA = 8;

  /**
   * Policy selection vector for mbx1
   *   TLUL interface name: soc
   *   RACL group: Null
   *   Register to policy mapping:
   *     SOC_CONTROL:           MIO_PRIVATE (Idx  8)
   *     SOC_STATUS:            MIO_PRIVATE (Idx  8)
   *     SOC_DOE_INTR_MSG_ADDR: MIO_PRIVATE (Idx  8)
   *     SOC_DOE_INTR_MSG_DATA: MIO_PRIVATE (Idx  8)
   *   Window to policy mapping:
   *     WDATA: MIO_PRIVATE (Idx  8)
   *     RDATA: MIO_PRIVATE (Idx  8)
   */
  parameter top_racl_pkg::racl_policy_sel_t RACL_POLICY_SEL_MBX1_SOC [4] = '{
    8, 8, 8, 8
  };
  parameter top_racl_pkg::racl_policy_sel_t RACL_POLICY_SEL_MBX1_SOC_WIN_WDATA = 8;
  parameter top_racl_pkg::racl_policy_sel_t RACL_POLICY_SEL_MBX1_SOC_WIN_RDATA = 8;

  /**
   * Policy selection vector for mbx2
   *   TLUL interface name: soc
   *   RACL group: Null
   *   Register to policy mapping:
   *     SOC_CONTROL:           MIO_PRIVATE (Idx  8)
   *     SOC_STATUS:            MIO_PRIVATE (Idx  8)
   *     SOC_DOE_INTR_MSG_ADDR: MIO_PRIVATE (Idx  8)
   *     SOC_DOE_INTR_MSG_DATA: MIO_PRIVATE (Idx  8)
   *   Window to policy mapping:
   *     WDATA: MIO_PRIVATE (Idx  8)
   *     RDATA: MIO_PRIVATE (Idx  8)
   */
  parameter top_racl_pkg::racl_policy_sel_t RACL_POLICY_SEL_MBX2_SOC [4] = '{
    8, 8, 8, 8
  };
  parameter top_racl_pkg::racl_policy_sel_t RACL_POLICY_SEL_MBX2_SOC_WIN_WDATA = 8;
  parameter top_racl_pkg::racl_policy_sel_t RACL_POLICY_SEL_MBX2_SOC_WIN_RDATA = 8;

  /**
   * Policy selection vector for mbx3
   *   TLUL interface name: soc
   *   RACL group: Null
   *   Register to policy mapping:
   *     SOC_CONTROL:           ROT_PRIVATE (Idx  6)
   *     SOC_STATUS:            ROT_PRIVATE (Idx  6)
   *     SOC_DOE_INTR_MSG_ADDR: ROT_PRIVATE (Idx  6)
   *     SOC_DOE_INTR_MSG_DATA: ROT_PRIVATE (Idx  6)
   *   Window to policy mapping:
   *     WDATA: ROT_PRIVATE (Idx  6)
   *     RDATA: ROT_PRIVATE (Idx  6)
   */
  parameter top_racl_pkg::racl_policy_sel_t RACL_POLICY_SEL_MBX3_SOC [4] = '{
    6, 6, 6, 6
  };
  parameter top_racl_pkg::racl_policy_sel_t RACL_POLICY_SEL_MBX3_SOC_WIN_WDATA = 6;
  parameter top_racl_pkg::racl_policy_sel_t RACL_POLICY_SEL_MBX3_SOC_WIN_RDATA = 6;

  /**
   * Policy selection vector for mbx4
   *   TLUL interface name: soc
   *   RACL group: Null
   *   Register to policy mapping:
   *     SOC_CONTROL:           PWC_PRIVATE (Idx  7)
   *     SOC_STATUS:            PWC_PRIVATE (Idx  7)
   *     SOC_DOE_INTR_MSG_ADDR: PWC_PRIVATE (Idx  7)
   *     SOC_DOE_INTR_MSG_DATA: PWC_PRIVATE (Idx  7)
   *   Window to policy mapping:
   *     WDATA: PWC_PRIVATE (Idx  7)
   *     RDATA: PWC_PRIVATE (Idx  7)
   */
  parameter top_racl_pkg::racl_policy_sel_t RACL_POLICY_SEL_MBX4_SOC [4] = '{
    7, 7, 7, 7
  };
  parameter top_racl_pkg::racl_policy_sel_t RACL_POLICY_SEL_MBX4_SOC_WIN_WDATA = 7;
  parameter top_racl_pkg::racl_policy_sel_t RACL_POLICY_SEL_MBX4_SOC_WIN_RDATA = 7;

  /**
   * Policy selection vector for mbx5
   *   TLUL interface name: soc
   *   RACL group: Null
   *   Register to policy mapping:
   *     SOC_CONTROL:           PWC_PRIVATE (Idx  7)
   *     SOC_STATUS:            PWC_PRIVATE (Idx  7)
   *     SOC_DOE_INTR_MSG_ADDR: PWC_PRIVATE (Idx  7)
   *     SOC_DOE_INTR_MSG_DATA: PWC_PRIVATE (Idx  7)
   *   Window to policy mapping:
   *     WDATA: PWC_PRIVATE (Idx  7)
   *     RDATA: PWC_PRIVATE (Idx  7)
   */
  parameter top_racl_pkg::racl_policy_sel_t RACL_POLICY_SEL_MBX5_SOC [4] = '{
    7, 7, 7, 7
  };
  parameter top_racl_pkg::racl_policy_sel_t RACL_POLICY_SEL_MBX5_SOC_WIN_WDATA = 7;
  parameter top_racl_pkg::racl_policy_sel_t RACL_POLICY_SEL_MBX5_SOC_WIN_RDATA = 7;

endpackage
