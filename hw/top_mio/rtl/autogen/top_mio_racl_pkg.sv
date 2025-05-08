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
  import top_racl_pkg::*;

  /**
   * RACL groups and policies:
   *   Null
   *      0: all_rd_wr_policy
   *      1: hw_rot_pwc_wr_all_rd_policy
   *      2: pre_boot_m_policy
   *      3: post_boot_m_policy
   *      4: tee_limited_policy
   *      5: rcode_private_policy
   *      6: rot_private_policy
   *      7: pwc_private_policy
   *      8: mio_private_policy
   *      9: duc_private_policy
   *   rot
   *      0: all_rd_wr_policy
   *      1: hw_rot_pwc_wr_all_rd_policy
   *      2: pre_boot_m_policy
   *      3: post_boot_m_policy
   *      4: tee_limited_policy
   *      5: rcode_private_policy
   *      6: rot_private_policy
   *      7: pwc_private_policy
   *      8: mio_private_policy
   *      9: duc_private_policy
   *   pwc
   *      0: all_rd_wr_policy
   *      1: hw_rot_pwc_wr_all_rd_policy
   *      2: pre_boot_m_policy
   *      3: post_boot_m_policy
   *      4: tee_limited_policy
   *      5: rcode_private_policy
   *      6: rot_private_policy
   *      7: pwc_private_policy
   *      8: mio_private_policy
   *      9: duc_private_policy
   *   mio
   *      0: all_rd_wr_policy
   *      1: hw_rot_pwc_wr_all_rd_policy
   *      2: pre_boot_m_policy
   *      3: post_boot_m_policy
   *      4: tee_limited_policy
   *      5: rcode_private_policy
   *      6: rot_private_policy
   *      7: pwc_private_policy
   *      8: mio_private_policy
   *      9: duc_private_policy
   *   nsEfuse
   *      0: all_rd_wr_policy
   *      1: hw_rot_pwc_wr_all_rd_policy
   *      2: pre_boot_m_policy
   *      3: post_boot_m_policy
   *      4: tee_limited_policy
   *      5: rcode_private_policy
   *      6: rot_private_policy
   *      7: pwc_private_policy
   *      8: mio_private_policy
   *      9: duc_private_policy
   *   lioGrpV
   *      0: all_rd_wr_policy
   *      1: hw_rot_pwc_wr_all_rd_policy
   *      2: pre_boot_m_policy
   *      3: post_boot_m_policy
   *      4: tee_limited_policy
   *      5: rcode_private_policy
   *      6: rot_private_policy
   *      7: pwc_private_policy
   *      8: mio_private_policy
   *      9: duc_private_policy
   *   lioGrpP
   *      0: all_rd_wr_policy
   *      1: hw_rot_pwc_wr_all_rd_policy
   *      2: pre_boot_m_policy
   *      3: post_boot_m_policy
   *      4: tee_limited_policy
   *      5: rcode_private_policy
   *      6: rot_private_policy
   *      7: pwc_private_policy
   *      8: mio_private_policy
   *      9: duc_private_policy
   *   scsifregshdr
   *      0: all_rd_wr_policy
   *      1: hw_rot_pwc_wr_all_rd_policy
   *      2: pre_boot_m_policy
   *      3: post_boot_m_policy
   *      4: tee_limited_policy
   *      5: rcode_private_policy
   *      6: rot_private_policy
   *      7: pwc_private_policy
   *      8: mio_private_policy
   *      9: duc_private_policy
   *   lioGrpA
   *      0: all_rd_wr_policy
   *      1: rot_private_policy
   *      2: hw_rot_pwc_wr_all_rd_policy
   *      3: pwc_private_policy
   *      4: mio_private_policy
   *      5: pwmPolicy
   *      6: gpioPolicy
   *      7: uartPolicy
   *      8: i2c0Policy
   *      9: i2c1Policy
   *     10: i2c2Policy
   *     11: i3c0Policy
   *     12: i3c1Policy
   *     13: i3c2Policy
   *     14: spihstPolicy
   *     15: spidevPolicy
   *     16: plicPolicy
   *     17: timerPolicy
   *   lioGrpB
   *      0: all_rd_wr_policy
   *      1: rot_private_policy
   *      2: hw_rot_pwc_wr_all_rd_policy
   *      3: pwc_private_policy
   *      4: mio_private_policy
   *      5: pwmPolicy
   *      6: gpioPolicy
   *      7: uartPolicy
   *      8: i2c0Policy
   *      9: i2c1Policy
   *     10: i2c2Policy
   *     11: i3c0Policy
   *     12: i3c1Policy
   *     13: i3c2Policy
   *     14: spihstPolicy
   *     15: spidevPolicy
   *     16: plicPolicy
   *     17: timerPolicy
   *   lioGrpC
   *      0: all_rd_wr_policy
   *      1: rot_private_policy
   *      2: hw_rot_pwc_wr_all_rd_policy
   *      3: pwc_private_policy
   *      4: mio_private_policy
   *      5: pwmPolicy
   *      6: gpioPolicy
   *      7: uartPolicy
   *      8: i2c0Policy
   *      9: i2c1Policy
   *     10: i2c2Policy
   *     11: i3c0Policy
   *     12: i3c1Policy
   *     13: i3c2Policy
   *     14: spihstPolicy
   *     15: spidevPolicy
   *     16: plicPolicy
   *     17: timerPolicy
   *   lioGrpD
   *      0: all_rd_wr_policy
   *      1: rot_private_policy
   *      2: hw_rot_pwc_wr_all_rd_policy
   *      3: pwc_private_policy
   *      4: mio_private_policy
   *      5: pwmPolicy
   *      6: gpioPolicy
   *      7: uartPolicy
   *      8: i2c0Policy
   *      9: i2c1Policy
   *     10: i2c2Policy
   *     11: i3c0Policy
   *     12: i3c1Policy
   *     13: i3c2Policy
   *     14: spihstPolicy
   *     15: spidevPolicy
   *     16: plicPolicy
   *     17: timerPolicy
   */

  /**
   * Policy selection vector for rv_timer
   *   TLUL interface name: None
   *   RACL group: mio
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_RV_TIMER_MIO [10] = '{
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  0 ALERT_TEST       : Policy Idx  6
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  1 CTRL             : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  2 INTR_ENABLE0     : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  3 INTR_STATE0      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  4 INTR_TEST0       : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  5 CFG0             : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  6 TIMER_V_LOWER0   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  7 TIMER_V_UPPER0   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  8 COMPARE_LOWER0_0 : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY             //  9 COMPARE_UPPER0_0 : Policy Idx  0
  };

  /**
   * Policy selection vector for aon_timer_aon
   *   TLUL interface name: None
   *   RACL group: mio
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_AON_TIMER_AON_MIO [14] = '{
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  0 ALERT_TEST      : Policy Idx  6
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  1 WKUP_CTRL       : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  2 WKUP_THOLD_HI   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  3 WKUP_THOLD_LO   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  4 WKUP_COUNT_HI   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  5 WKUP_COUNT_LO   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  6 WDOG_REGWEN     : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  7 WDOG_CTRL       : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  8 WDOG_BARK_THOLD : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  9 WDOG_BITE_THOLD : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 10 WDOG_COUNT      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 11 INTR_STATE      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 12 INTR_TEST       : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY             // 13 WKUP_CAUSE      : Policy Idx  0
  };

  /**
   * Policy selection vector for sram_ctrl_ret_aon
   *   TLUL interface name: regs
   *   RACL group: mio
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_SRAM_CTRL_RET_AON_MIO_REGS [9] = '{
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 0 ALERT_TEST      : Policy Idx  6
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 1 STATUS          : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 2 EXEC_REGWEN     : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 3 EXEC            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 4 CTRL_REGWEN     : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 5 CTRL            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 6 SCR_KEY_ROTATED : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 7 READBACK_REGWEN : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY             // 8 READBACK        : Policy Idx  0
  };

  /**
   * Policy selection vector for rv_dm
   *   TLUL interface name: regs
   *   RACL group: mio
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_RV_DM_MIO_REGS [3] = '{
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 0 ALERT_TEST               : Policy Idx  6
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 1 LATE_DEBUG_ENABLE_REGWEN : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY             // 2 LATE_DEBUG_ENABLE        : Policy Idx  0
  };

  /**
   * Policy selection vector for rv_plic_mio
   *   TLUL interface name: None
   *   RACL group: mio
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_RV_PLIC_MIO_MIO [46] = '{
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  0 PRIO_0     : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  1 PRIO_1     : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  2 PRIO_2     : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  3 PRIO_3     : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  4 PRIO_4     : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  5 PRIO_5     : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  6 PRIO_6     : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  7 PRIO_7     : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  8 PRIO_8     : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  9 PRIO_9     : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 10 PRIO_10    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 11 PRIO_11    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 12 PRIO_12    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 13 PRIO_13    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 14 PRIO_14    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 15 PRIO_15    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 16 PRIO_16    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 17 PRIO_17    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 18 PRIO_18    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 19 PRIO_19    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 20 PRIO_20    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 21 PRIO_21    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 22 PRIO_22    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 23 PRIO_23    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 24 PRIO_24    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 25 PRIO_25    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 26 PRIO_26    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 27 PRIO_27    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 28 PRIO_28    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 29 PRIO_29    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 30 PRIO_30    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 31 PRIO_31    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 32 PRIO_32    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 33 PRIO_33    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 34 PRIO_34    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 35 PRIO_35    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 36 PRIO_36    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 37 PRIO_37    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 38 IP_0       : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 39 IP_1       : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 40 IE0_0      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 41 IE0_1      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 42 THRESHOLD0 : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 43 CC0        : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 44 MSIP0      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY           // 45 ALERT_TEST : Policy Idx  6
  };

  /**
   * Policy selection vector for sram_ctrl_main
   *   TLUL interface name: regs
   *   RACL group: mio
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_SRAM_CTRL_MAIN_MIO_REGS [9] = '{
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 0 ALERT_TEST      : Policy Idx  6
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 1 STATUS          : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 2 EXEC_REGWEN     : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 3 EXEC            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 4 CTRL_REGWEN     : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 5 CTRL            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 6 SCR_KEY_ROTATED : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 7 READBACK_REGWEN : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY             // 8 READBACK        : Policy Idx  0
  };

  /**
   * Policy selection vector for sram_ctrl_mbox
   *   TLUL interface name: regs
   *   RACL group: mio
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_SRAM_CTRL_MBOX_MIO_REGS [9] = '{
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 0 ALERT_TEST      : Policy Idx  6
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 1 STATUS          : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 2 EXEC_REGWEN     : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 3 EXEC            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 4 CTRL_REGWEN     : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 5 CTRL            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 6 SCR_KEY_ROTATED : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 7 READBACK_REGWEN : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY             // 8 READBACK        : Policy Idx  0
  };

  /**
   * Policy selection vector for dma
   *   TLUL interface name: None
   *   RACL group: mio
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_DMA_MIO [63] = '{
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  0 INTR_STATE                 : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  1 INTR_ENABLE                : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  2 INTR_TEST                  : Policy Idx  0
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  3 ALERT_TEST                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  4 SRC_ADDR_LO                : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  5 SRC_ADDR_HI                : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  6 DST_ADDR_LO                : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  7 DST_ADDR_HI                : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  8 ADDR_SPACE_ID              : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  9 ENABLED_MEMORY_RANGE_BASE  : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 10 ENABLED_MEMORY_RANGE_LIMIT : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 11 RANGE_VALID                : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 12 RANGE_REGWEN               : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 13 CFG_REGWEN                 : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 14 TOTAL_DATA_SIZE            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 15 CHUNK_DATA_SIZE            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 16 TRANSFER_WIDTH             : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 17 CONTROL                    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 18 SRC_CONFIG                 : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 19 DST_CONFIG                 : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 20 STATUS                     : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 21 ERROR_CODE                 : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 22 SHA2_DIGEST_0              : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 23 SHA2_DIGEST_1              : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 24 SHA2_DIGEST_2              : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 25 SHA2_DIGEST_3              : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 26 SHA2_DIGEST_4              : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 27 SHA2_DIGEST_5              : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 28 SHA2_DIGEST_6              : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 29 SHA2_DIGEST_7              : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 30 SHA2_DIGEST_8              : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 31 SHA2_DIGEST_9              : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 32 SHA2_DIGEST_10             : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 33 SHA2_DIGEST_11             : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 34 SHA2_DIGEST_12             : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 35 SHA2_DIGEST_13             : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 36 SHA2_DIGEST_14             : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 37 SHA2_DIGEST_15             : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 38 HANDSHAKE_INTR_ENABLE      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 39 CLEAR_INTR_SRC             : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 40 CLEAR_INTR_BUS             : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 41 INTR_SRC_ADDR_0            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 42 INTR_SRC_ADDR_1            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 43 INTR_SRC_ADDR_2            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 44 INTR_SRC_ADDR_3            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 45 INTR_SRC_ADDR_4            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 46 INTR_SRC_ADDR_5            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 47 INTR_SRC_ADDR_6            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 48 INTR_SRC_ADDR_7            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 49 INTR_SRC_ADDR_8            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 50 INTR_SRC_ADDR_9            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 51 INTR_SRC_ADDR_10           : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 52 INTR_SRC_WR_VAL_0          : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 53 INTR_SRC_WR_VAL_1          : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 54 INTR_SRC_WR_VAL_2          : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 55 INTR_SRC_WR_VAL_3          : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 56 INTR_SRC_WR_VAL_4          : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 57 INTR_SRC_WR_VAL_5          : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 58 INTR_SRC_WR_VAL_6          : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 59 INTR_SRC_WR_VAL_7          : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 60 INTR_SRC_WR_VAL_8          : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 61 INTR_SRC_WR_VAL_9          : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY             // 62 INTR_SRC_WR_VAL_10         : Policy Idx  0
  };

  /**
   * Policy selection vector for mbx0
   *   TLUL interface name: core
   *   RACL group: mio
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX0_MIO_CORE [17] = '{
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  0 INTR_STATE             : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  1 INTR_ENABLE            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  2 INTR_TEST              : Policy Idx  0
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  3 ALERT_TEST             : Policy Idx  6
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  4 CONTROL                : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  5 STATUS                 : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  6 ADDRESS_RANGE_REGWEN   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  7 ADDRESS_RANGE_VALID    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  8 INBOUND_BASE_ADDRESS   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  9 INBOUND_LIMIT_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 10 INBOUND_WRITE_PTR      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 11 OUTBOUND_BASE_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 12 OUTBOUND_LIMIT_ADDRESS : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 13 OUTBOUND_READ_PTR      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 14 OUTBOUND_OBJECT_SIZE   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 15 DOE_INTR_MSG_ADDR      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY             // 16 DOE_INTR_MSG_DATA      : Policy Idx  0
  };

  /**
   * Policy selection vector for mbx0
   *   TLUL interface name: soc
   *   RACL group: mio
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX0_MIO_SOC [4] = '{
    RACL_POLICY_SEL_MIO_MIO_PRIVATE_POLICY,          // 0 SOC_CONTROL           : Policy Idx  8
    RACL_POLICY_SEL_MIO_MIO_PRIVATE_POLICY,          // 1 SOC_STATUS            : Policy Idx  8
    RACL_POLICY_SEL_MIO_MIO_PRIVATE_POLICY,          // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  8
    RACL_POLICY_SEL_MIO_MIO_PRIVATE_POLICY           // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  8
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX0_MIO_SOC_WDATA =
    RACL_POLICY_SEL_MIO_MIO_PRIVATE_POLICY;          // Policy Idx  8
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX0_MIO_SOC_RDATA =
    RACL_POLICY_SEL_MIO_MIO_PRIVATE_POLICY;          // Policy Idx  8

  /**
   * Policy selection vector for mbx1
   *   TLUL interface name: core
   *   RACL group: mio
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX1_MIO_CORE [17] = '{
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  0 INTR_STATE             : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  1 INTR_ENABLE            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  2 INTR_TEST              : Policy Idx  0
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  3 ALERT_TEST             : Policy Idx  6
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  4 CONTROL                : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  5 STATUS                 : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  6 ADDRESS_RANGE_REGWEN   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  7 ADDRESS_RANGE_VALID    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  8 INBOUND_BASE_ADDRESS   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  9 INBOUND_LIMIT_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 10 INBOUND_WRITE_PTR      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 11 OUTBOUND_BASE_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 12 OUTBOUND_LIMIT_ADDRESS : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 13 OUTBOUND_READ_PTR      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 14 OUTBOUND_OBJECT_SIZE   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 15 DOE_INTR_MSG_ADDR      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY             // 16 DOE_INTR_MSG_DATA      : Policy Idx  0
  };

  /**
   * Policy selection vector for mbx1
   *   TLUL interface name: soc
   *   RACL group: mio
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX1_MIO_SOC [4] = '{
    RACL_POLICY_SEL_MIO_MIO_PRIVATE_POLICY,          // 0 SOC_CONTROL           : Policy Idx  8
    RACL_POLICY_SEL_MIO_MIO_PRIVATE_POLICY,          // 1 SOC_STATUS            : Policy Idx  8
    RACL_POLICY_SEL_MIO_MIO_PRIVATE_POLICY,          // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  8
    RACL_POLICY_SEL_MIO_MIO_PRIVATE_POLICY           // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  8
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX1_MIO_SOC_WDATA =
    RACL_POLICY_SEL_MIO_MIO_PRIVATE_POLICY;          // Policy Idx  8
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX1_MIO_SOC_RDATA =
    RACL_POLICY_SEL_MIO_MIO_PRIVATE_POLICY;          // Policy Idx  8

  /**
   * Policy selection vector for mbx2
   *   TLUL interface name: core
   *   RACL group: mio
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX2_MIO_CORE [17] = '{
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  0 INTR_STATE             : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  1 INTR_ENABLE            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  2 INTR_TEST              : Policy Idx  0
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  3 ALERT_TEST             : Policy Idx  6
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  4 CONTROL                : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  5 STATUS                 : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  6 ADDRESS_RANGE_REGWEN   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  7 ADDRESS_RANGE_VALID    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  8 INBOUND_BASE_ADDRESS   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  9 INBOUND_LIMIT_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 10 INBOUND_WRITE_PTR      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 11 OUTBOUND_BASE_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 12 OUTBOUND_LIMIT_ADDRESS : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 13 OUTBOUND_READ_PTR      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 14 OUTBOUND_OBJECT_SIZE   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 15 DOE_INTR_MSG_ADDR      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY             // 16 DOE_INTR_MSG_DATA      : Policy Idx  0
  };

  /**
   * Policy selection vector for mbx2
   *   TLUL interface name: soc
   *   RACL group: mio
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX2_MIO_SOC [4] = '{
    RACL_POLICY_SEL_MIO_MIO_PRIVATE_POLICY,          // 0 SOC_CONTROL           : Policy Idx  8
    RACL_POLICY_SEL_MIO_MIO_PRIVATE_POLICY,          // 1 SOC_STATUS            : Policy Idx  8
    RACL_POLICY_SEL_MIO_MIO_PRIVATE_POLICY,          // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  8
    RACL_POLICY_SEL_MIO_MIO_PRIVATE_POLICY           // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  8
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX2_MIO_SOC_WDATA =
    RACL_POLICY_SEL_MIO_MIO_PRIVATE_POLICY;          // Policy Idx  8
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX2_MIO_SOC_RDATA =
    RACL_POLICY_SEL_MIO_MIO_PRIVATE_POLICY;          // Policy Idx  8

  /**
   * Policy selection vector for mbx3
   *   TLUL interface name: core
   *   RACL group: mio
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX3_MIO_CORE [17] = '{
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  0 INTR_STATE             : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  1 INTR_ENABLE            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  2 INTR_TEST              : Policy Idx  0
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  3 ALERT_TEST             : Policy Idx  6
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  4 CONTROL                : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  5 STATUS                 : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  6 ADDRESS_RANGE_REGWEN   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  7 ADDRESS_RANGE_VALID    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  8 INBOUND_BASE_ADDRESS   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  9 INBOUND_LIMIT_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 10 INBOUND_WRITE_PTR      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 11 OUTBOUND_BASE_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 12 OUTBOUND_LIMIT_ADDRESS : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 13 OUTBOUND_READ_PTR      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 14 OUTBOUND_OBJECT_SIZE   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 15 DOE_INTR_MSG_ADDR      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY             // 16 DOE_INTR_MSG_DATA      : Policy Idx  0
  };

  /**
   * Policy selection vector for mbx3
   *   TLUL interface name: soc
   *   RACL group: mio
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX3_MIO_SOC [4] = '{
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 0 SOC_CONTROL           : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 1 SOC_STATUS            : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY           // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  6
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX3_MIO_SOC_WDATA =
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY;          // Policy Idx  6
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX3_MIO_SOC_RDATA =
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY;          // Policy Idx  6

  /**
   * Policy selection vector for mbx4
   *   TLUL interface name: core
   *   RACL group: mio
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX4_MIO_CORE [17] = '{
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  0 INTR_STATE             : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  1 INTR_ENABLE            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  2 INTR_TEST              : Policy Idx  0
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  3 ALERT_TEST             : Policy Idx  6
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  4 CONTROL                : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  5 STATUS                 : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  6 ADDRESS_RANGE_REGWEN   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  7 ADDRESS_RANGE_VALID    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  8 INBOUND_BASE_ADDRESS   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  9 INBOUND_LIMIT_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 10 INBOUND_WRITE_PTR      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 11 OUTBOUND_BASE_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 12 OUTBOUND_LIMIT_ADDRESS : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 13 OUTBOUND_READ_PTR      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 14 OUTBOUND_OBJECT_SIZE   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 15 DOE_INTR_MSG_ADDR      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY             // 16 DOE_INTR_MSG_DATA      : Policy Idx  0
  };

  /**
   * Policy selection vector for mbx4
   *   TLUL interface name: soc
   *   RACL group: mio
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX4_MIO_SOC [4] = '{
    RACL_POLICY_SEL_MIO_PWC_PRIVATE_POLICY,          // 0 SOC_CONTROL           : Policy Idx  7
    RACL_POLICY_SEL_MIO_PWC_PRIVATE_POLICY,          // 1 SOC_STATUS            : Policy Idx  7
    RACL_POLICY_SEL_MIO_PWC_PRIVATE_POLICY,          // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  7
    RACL_POLICY_SEL_MIO_PWC_PRIVATE_POLICY           // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  7
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX4_MIO_SOC_WDATA =
    RACL_POLICY_SEL_MIO_PWC_PRIVATE_POLICY;          // Policy Idx  7
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX4_MIO_SOC_RDATA =
    RACL_POLICY_SEL_MIO_PWC_PRIVATE_POLICY;          // Policy Idx  7

  /**
   * Policy selection vector for mbx5
   *   TLUL interface name: core
   *   RACL group: mio
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX5_MIO_CORE [17] = '{
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  0 INTR_STATE             : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  1 INTR_ENABLE            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  2 INTR_TEST              : Policy Idx  0
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  3 ALERT_TEST             : Policy Idx  6
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  4 CONTROL                : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  5 STATUS                 : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  6 ADDRESS_RANGE_REGWEN   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  7 ADDRESS_RANGE_VALID    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  8 INBOUND_BASE_ADDRESS   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  9 INBOUND_LIMIT_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 10 INBOUND_WRITE_PTR      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 11 OUTBOUND_BASE_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 12 OUTBOUND_LIMIT_ADDRESS : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 13 OUTBOUND_READ_PTR      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 14 OUTBOUND_OBJECT_SIZE   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 15 DOE_INTR_MSG_ADDR      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY             // 16 DOE_INTR_MSG_DATA      : Policy Idx  0
  };

  /**
   * Policy selection vector for mbx5
   *   TLUL interface name: soc
   *   RACL group: mio
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX5_MIO_SOC [4] = '{
    RACL_POLICY_SEL_MIO_DUC_PRIVATE_POLICY,          // 0 SOC_CONTROL           : Policy Idx  9
    RACL_POLICY_SEL_MIO_DUC_PRIVATE_POLICY,          // 1 SOC_STATUS            : Policy Idx  9
    RACL_POLICY_SEL_MIO_DUC_PRIVATE_POLICY,          // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  9
    RACL_POLICY_SEL_MIO_DUC_PRIVATE_POLICY           // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  9
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX5_MIO_SOC_WDATA =
    RACL_POLICY_SEL_MIO_DUC_PRIVATE_POLICY;          // Policy Idx  9
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX5_MIO_SOC_RDATA =
    RACL_POLICY_SEL_MIO_DUC_PRIVATE_POLICY;          // Policy Idx  9

  /**
   * Policy selection vector for mbx_pcie0
   *   TLUL interface name: core
   *   RACL group: mio
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX_PCIE0_MIO_CORE [17] = '{
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  0 INTR_STATE             : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  1 INTR_ENABLE            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  2 INTR_TEST              : Policy Idx  0
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  3 ALERT_TEST             : Policy Idx  6
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  4 CONTROL                : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  5 STATUS                 : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  6 ADDRESS_RANGE_REGWEN   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  7 ADDRESS_RANGE_VALID    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  8 INBOUND_BASE_ADDRESS   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  9 INBOUND_LIMIT_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 10 INBOUND_WRITE_PTR      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 11 OUTBOUND_BASE_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 12 OUTBOUND_LIMIT_ADDRESS : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 13 OUTBOUND_READ_PTR      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 14 OUTBOUND_OBJECT_SIZE   : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 15 DOE_INTR_MSG_ADDR      : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY             // 16 DOE_INTR_MSG_DATA      : Policy Idx  0
  };

  /**
   * Policy selection vector for mbx_pcie0
   *   TLUL interface name: soc
   *   RACL group: mio
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX_PCIE0_MIO_SOC [4] = '{
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 0 SOC_CONTROL           : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 1 SOC_STATUS            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY             // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  0
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX_PCIE0_MIO_SOC_WDATA =
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY;            // Policy Idx  0
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX_PCIE0_MIO_SOC_RDATA =
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY;            // Policy Idx  0

  /**
   * Policy selection vector for ac_range_check
   *   TLUL interface name: None
   *   RACL group: mio
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_AC_RANGE_CHECK_MIO [168] = '{
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //   0 INTR_STATE                    : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //   1 INTR_ENABLE                   : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //   2 INTR_TEST                     : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //   3 ALERT_TEST                    : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //   4 ALERT_STATUS                  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //   5 LOG_CONFIG                    : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //   6 LOG_STATUS                    : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //   7 LOG_ADDRESS                   : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //   8 RANGE_REGWEN_0                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //   9 RANGE_REGWEN_1                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  10 RANGE_REGWEN_2                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  11 RANGE_REGWEN_3                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  12 RANGE_REGWEN_4                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  13 RANGE_REGWEN_5                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  14 RANGE_REGWEN_6                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  15 RANGE_REGWEN_7                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  16 RANGE_REGWEN_8                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  17 RANGE_REGWEN_9                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  18 RANGE_REGWEN_10               : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  19 RANGE_REGWEN_11               : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  20 RANGE_REGWEN_12               : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  21 RANGE_REGWEN_13               : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  22 RANGE_REGWEN_14               : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  23 RANGE_REGWEN_15               : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  24 RANGE_REGWEN_16               : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  25 RANGE_REGWEN_17               : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  26 RANGE_REGWEN_18               : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  27 RANGE_REGWEN_19               : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  28 RANGE_REGWEN_20               : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  29 RANGE_REGWEN_21               : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  30 RANGE_REGWEN_22               : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  31 RANGE_REGWEN_23               : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  32 RANGE_REGWEN_24               : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  33 RANGE_REGWEN_25               : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  34 RANGE_REGWEN_26               : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  35 RANGE_REGWEN_27               : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  36 RANGE_REGWEN_28               : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  37 RANGE_REGWEN_29               : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  38 RANGE_REGWEN_30               : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  39 RANGE_REGWEN_31               : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  40 RANGE_BASE_0                  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  41 RANGE_BASE_1                  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  42 RANGE_BASE_2                  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  43 RANGE_BASE_3                  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  44 RANGE_BASE_4                  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  45 RANGE_BASE_5                  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  46 RANGE_BASE_6                  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  47 RANGE_BASE_7                  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  48 RANGE_BASE_8                  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  49 RANGE_BASE_9                  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  50 RANGE_BASE_10                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  51 RANGE_BASE_11                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  52 RANGE_BASE_12                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  53 RANGE_BASE_13                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  54 RANGE_BASE_14                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  55 RANGE_BASE_15                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  56 RANGE_BASE_16                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  57 RANGE_BASE_17                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  58 RANGE_BASE_18                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  59 RANGE_BASE_19                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  60 RANGE_BASE_20                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  61 RANGE_BASE_21                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  62 RANGE_BASE_22                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  63 RANGE_BASE_23                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  64 RANGE_BASE_24                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  65 RANGE_BASE_25                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  66 RANGE_BASE_26                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  67 RANGE_BASE_27                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  68 RANGE_BASE_28                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  69 RANGE_BASE_29                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  70 RANGE_BASE_30                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  71 RANGE_BASE_31                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  72 RANGE_LIMIT_0                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  73 RANGE_LIMIT_1                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  74 RANGE_LIMIT_2                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  75 RANGE_LIMIT_3                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  76 RANGE_LIMIT_4                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  77 RANGE_LIMIT_5                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  78 RANGE_LIMIT_6                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  79 RANGE_LIMIT_7                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  80 RANGE_LIMIT_8                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  81 RANGE_LIMIT_9                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  82 RANGE_LIMIT_10                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  83 RANGE_LIMIT_11                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  84 RANGE_LIMIT_12                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  85 RANGE_LIMIT_13                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  86 RANGE_LIMIT_14                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  87 RANGE_LIMIT_15                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  88 RANGE_LIMIT_16                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  89 RANGE_LIMIT_17                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  90 RANGE_LIMIT_18                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  91 RANGE_LIMIT_19                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  92 RANGE_LIMIT_20                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  93 RANGE_LIMIT_21                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  94 RANGE_LIMIT_22                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  95 RANGE_LIMIT_23                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  96 RANGE_LIMIT_24                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  97 RANGE_LIMIT_25                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  98 RANGE_LIMIT_26                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  99 RANGE_LIMIT_27                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 100 RANGE_LIMIT_28                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 101 RANGE_LIMIT_29                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 102 RANGE_LIMIT_30                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 103 RANGE_LIMIT_31                : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 104 RANGE_ATTR_0                  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 105 RANGE_ATTR_1                  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 106 RANGE_ATTR_2                  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 107 RANGE_ATTR_3                  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 108 RANGE_ATTR_4                  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 109 RANGE_ATTR_5                  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 110 RANGE_ATTR_6                  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 111 RANGE_ATTR_7                  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 112 RANGE_ATTR_8                  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 113 RANGE_ATTR_9                  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 114 RANGE_ATTR_10                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 115 RANGE_ATTR_11                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 116 RANGE_ATTR_12                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 117 RANGE_ATTR_13                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 118 RANGE_ATTR_14                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 119 RANGE_ATTR_15                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 120 RANGE_ATTR_16                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 121 RANGE_ATTR_17                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 122 RANGE_ATTR_18                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 123 RANGE_ATTR_19                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 124 RANGE_ATTR_20                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 125 RANGE_ATTR_21                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 126 RANGE_ATTR_22                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 127 RANGE_ATTR_23                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 128 RANGE_ATTR_24                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 129 RANGE_ATTR_25                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 130 RANGE_ATTR_26                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 131 RANGE_ATTR_27                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 132 RANGE_ATTR_28                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 133 RANGE_ATTR_29                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 134 RANGE_ATTR_30                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 135 RANGE_ATTR_31                 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 136 RANGE_RACL_POLICY_SHADOWED_0  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 137 RANGE_RACL_POLICY_SHADOWED_1  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 138 RANGE_RACL_POLICY_SHADOWED_2  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 139 RANGE_RACL_POLICY_SHADOWED_3  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 140 RANGE_RACL_POLICY_SHADOWED_4  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 141 RANGE_RACL_POLICY_SHADOWED_5  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 142 RANGE_RACL_POLICY_SHADOWED_6  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 143 RANGE_RACL_POLICY_SHADOWED_7  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 144 RANGE_RACL_POLICY_SHADOWED_8  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 145 RANGE_RACL_POLICY_SHADOWED_9  : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 146 RANGE_RACL_POLICY_SHADOWED_10 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 147 RANGE_RACL_POLICY_SHADOWED_11 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 148 RANGE_RACL_POLICY_SHADOWED_12 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 149 RANGE_RACL_POLICY_SHADOWED_13 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 150 RANGE_RACL_POLICY_SHADOWED_14 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 151 RANGE_RACL_POLICY_SHADOWED_15 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 152 RANGE_RACL_POLICY_SHADOWED_16 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 153 RANGE_RACL_POLICY_SHADOWED_17 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 154 RANGE_RACL_POLICY_SHADOWED_18 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 155 RANGE_RACL_POLICY_SHADOWED_19 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 156 RANGE_RACL_POLICY_SHADOWED_20 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 157 RANGE_RACL_POLICY_SHADOWED_21 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 158 RANGE_RACL_POLICY_SHADOWED_22 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 159 RANGE_RACL_POLICY_SHADOWED_23 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 160 RANGE_RACL_POLICY_SHADOWED_24 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 161 RANGE_RACL_POLICY_SHADOWED_25 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 162 RANGE_RACL_POLICY_SHADOWED_26 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 163 RANGE_RACL_POLICY_SHADOWED_27 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 164 RANGE_RACL_POLICY_SHADOWED_28 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 165 RANGE_RACL_POLICY_SHADOWED_29 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          // 166 RANGE_RACL_POLICY_SHADOWED_30 : Policy Idx  6
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY           // 167 RANGE_RACL_POLICY_SHADOWED_31 : Policy Idx  6
  };

  /**
   * Policy selection vector for rv_core_ibex_mio
   *   TLUL interface name: cfg
   *   RACL group: mio
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_RV_CORE_IBEX_MIO_MIO_CFG [25] = '{
    RACL_POLICY_SEL_MIO_ROT_PRIVATE_POLICY,          //  0 ALERT_TEST           : Policy Idx  6
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  1 SW_RECOV_ERR         : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  2 SW_FATAL_ERR         : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  3 IBUS_REGWEN_0        : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  4 IBUS_REGWEN_1        : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  5 IBUS_ADDR_EN_0       : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  6 IBUS_ADDR_EN_1       : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  7 IBUS_ADDR_MATCHING_0 : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  8 IBUS_ADDR_MATCHING_1 : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            //  9 IBUS_REMAP_ADDR_0    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 10 IBUS_REMAP_ADDR_1    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 11 DBUS_REGWEN_0        : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 12 DBUS_REGWEN_1        : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 13 DBUS_ADDR_EN_0       : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 14 DBUS_ADDR_EN_1       : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 15 DBUS_ADDR_MATCHING_0 : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 16 DBUS_ADDR_MATCHING_1 : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 17 DBUS_REMAP_ADDR_0    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 18 DBUS_REMAP_ADDR_1    : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 19 NMI_ENABLE           : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 20 NMI_STATE            : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 21 ERR_STATUS           : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 22 RND_DATA             : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY,            // 23 RND_STATUS           : Policy Idx  0
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY             // 24 FPGA_INFO            : Policy Idx  0
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_RV_CORE_IBEX_MIO_MIO_CFG_DV_SIM_WINDOW =
    RACL_POLICY_SEL_MIO_ALL_RD_WR_POLICY;            // Policy Idx  0

endpackage
