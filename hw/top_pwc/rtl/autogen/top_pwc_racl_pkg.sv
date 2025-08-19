// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// ------------------- W A R N I N G: A U T O - G E N E R A T E D   C O D E !! -------------------//
// PLEASE DO NOT HAND-EDIT THIS FILE. IT HAS BEEN AUTO-GENERATED WITH THE FOLLOWING COMMAND:
//
// util/topgen.py -t hw/top_pwc/data/top_pwc.hjson \
//                -o hw/top_pwc/ \
//                --rnd_cnst_seed \
//                56102744355537000026776215634241684889261893736619588406986107855056748453929


package top_pwc_racl_pkg;
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
   * Policy selection vector for gpio
   *   TLUL interface name: None
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_GPIO_PWC [18] = '{
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  0 INTR_STATE              : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  1 INTR_ENABLE             : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  2 INTR_TEST               : Policy Idx  0
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  3 ALERT_TEST              : Policy Idx  6
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  4 DATA_IN                 : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  5 DIRECT_OUT              : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  6 MASKED_OUT_LOWER        : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  7 MASKED_OUT_UPPER        : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  8 DIRECT_OE               : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  9 MASKED_OE_LOWER         : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 10 MASKED_OE_UPPER         : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 11 INTR_CTRL_EN_RISING     : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 12 INTR_CTRL_EN_FALLING    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 13 INTR_CTRL_EN_LVLHIGH    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 14 INTR_CTRL_EN_LVLLOW     : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 15 CTRL_EN_INPUT_FILTER    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 16 HW_STRAPS_DATA_IN_VALID : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY             // 17 HW_STRAPS_DATA_IN       : Policy Idx  0
  };

  /**
   * Policy selection vector for rv_timer
   *   TLUL interface name: None
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_RV_TIMER_PWC [10] = '{
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  0 ALERT_TEST       : Policy Idx  6
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  1 CTRL             : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  2 INTR_ENABLE0     : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  3 INTR_STATE0      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  4 INTR_TEST0       : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  5 CFG0             : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  6 TIMER_V_LOWER0   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  7 TIMER_V_UPPER0   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  8 COMPARE_LOWER0_0 : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY             //  9 COMPARE_UPPER0_0 : Policy Idx  0
  };

  /**
   * Policy selection vector for aon_timer_aon
   *   TLUL interface name: None
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_AON_TIMER_AON_PWC [14] = '{
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  0 ALERT_TEST      : Policy Idx  6
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  1 WKUP_CTRL       : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  2 WKUP_THOLD_HI   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  3 WKUP_THOLD_LO   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  4 WKUP_COUNT_HI   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  5 WKUP_COUNT_LO   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  6 WDOG_REGWEN     : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  7 WDOG_CTRL       : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  8 WDOG_BARK_THOLD : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  9 WDOG_BITE_THOLD : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 10 WDOG_COUNT      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 11 INTR_STATE      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 12 INTR_TEST       : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY             // 13 WKUP_CAUSE      : Policy Idx  0
  };

  /**
   * Policy selection vector for sram_ctrl_ret_aon
   *   TLUL interface name: regs
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_SRAM_CTRL_RET_AON_PWC_REGS [9] = '{
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 0 ALERT_TEST      : Policy Idx  6
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 1 STATUS          : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 2 EXEC_REGWEN     : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 3 EXEC            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 4 CTRL_REGWEN     : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 5 CTRL            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 6 SCR_KEY_ROTATED : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 7 READBACK_REGWEN : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY             // 8 READBACK        : Policy Idx  0
  };

  /**
   * Policy selection vector for rv_dm
   *   TLUL interface name: regs
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_RV_DM_PWC_REGS [3] = '{
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 0 ALERT_TEST               : Policy Idx  6
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 1 LATE_DEBUG_ENABLE_REGWEN : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY             // 2 LATE_DEBUG_ENABLE        : Policy Idx  0
  };

  /**
   * Policy selection vector for rv_plic_pwc
   *   TLUL interface name: None
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_RV_PLIC_PWC_PWC [270] = '{
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //   0 PRIO_0     : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //   1 PRIO_1     : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //   2 PRIO_2     : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //   3 PRIO_3     : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //   4 PRIO_4     : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //   5 PRIO_5     : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //   6 PRIO_6     : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //   7 PRIO_7     : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //   8 PRIO_8     : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //   9 PRIO_9     : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  10 PRIO_10    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  11 PRIO_11    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  12 PRIO_12    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  13 PRIO_13    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  14 PRIO_14    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  15 PRIO_15    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  16 PRIO_16    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  17 PRIO_17    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  18 PRIO_18    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  19 PRIO_19    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  20 PRIO_20    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  21 PRIO_21    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  22 PRIO_22    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  23 PRIO_23    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  24 PRIO_24    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  25 PRIO_25    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  26 PRIO_26    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  27 PRIO_27    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  28 PRIO_28    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  29 PRIO_29    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  30 PRIO_30    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  31 PRIO_31    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  32 PRIO_32    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  33 PRIO_33    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  34 PRIO_34    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  35 PRIO_35    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  36 PRIO_36    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  37 PRIO_37    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  38 PRIO_38    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  39 PRIO_39    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  40 PRIO_40    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  41 PRIO_41    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  42 PRIO_42    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  43 PRIO_43    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  44 PRIO_44    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  45 PRIO_45    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  46 PRIO_46    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  47 PRIO_47    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  48 PRIO_48    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  49 PRIO_49    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  50 PRIO_50    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  51 PRIO_51    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  52 PRIO_52    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  53 PRIO_53    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  54 PRIO_54    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  55 PRIO_55    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  56 PRIO_56    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  57 PRIO_57    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  58 PRIO_58    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  59 PRIO_59    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  60 PRIO_60    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  61 PRIO_61    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  62 PRIO_62    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  63 PRIO_63    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  64 PRIO_64    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  65 PRIO_65    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  66 PRIO_66    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  67 PRIO_67    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  68 PRIO_68    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  69 PRIO_69    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  70 PRIO_70    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  71 PRIO_71    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  72 PRIO_72    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  73 PRIO_73    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  74 PRIO_74    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  75 PRIO_75    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  76 PRIO_76    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  77 PRIO_77    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  78 PRIO_78    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  79 PRIO_79    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  80 PRIO_80    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  81 PRIO_81    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  82 PRIO_82    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  83 PRIO_83    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  84 PRIO_84    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  85 PRIO_85    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  86 PRIO_86    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  87 PRIO_87    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  88 PRIO_88    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  89 PRIO_89    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  90 PRIO_90    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  91 PRIO_91    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  92 PRIO_92    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  93 PRIO_93    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  94 PRIO_94    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  95 PRIO_95    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  96 PRIO_96    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  97 PRIO_97    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  98 PRIO_98    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  99 PRIO_99    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 100 PRIO_100   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 101 PRIO_101   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 102 PRIO_102   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 103 PRIO_103   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 104 PRIO_104   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 105 PRIO_105   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 106 PRIO_106   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 107 PRIO_107   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 108 PRIO_108   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 109 PRIO_109   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 110 PRIO_110   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 111 PRIO_111   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 112 PRIO_112   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 113 PRIO_113   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 114 PRIO_114   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 115 PRIO_115   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 116 PRIO_116   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 117 PRIO_117   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 118 PRIO_118   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 119 PRIO_119   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 120 PRIO_120   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 121 PRIO_121   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 122 PRIO_122   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 123 PRIO_123   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 124 PRIO_124   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 125 PRIO_125   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 126 PRIO_126   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 127 PRIO_127   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 128 PRIO_128   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 129 PRIO_129   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 130 PRIO_130   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 131 PRIO_131   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 132 PRIO_132   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 133 PRIO_133   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 134 PRIO_134   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 135 PRIO_135   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 136 PRIO_136   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 137 PRIO_137   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 138 PRIO_138   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 139 PRIO_139   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 140 PRIO_140   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 141 PRIO_141   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 142 PRIO_142   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 143 PRIO_143   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 144 PRIO_144   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 145 PRIO_145   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 146 PRIO_146   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 147 PRIO_147   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 148 PRIO_148   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 149 PRIO_149   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 150 PRIO_150   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 151 PRIO_151   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 152 PRIO_152   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 153 PRIO_153   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 154 PRIO_154   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 155 PRIO_155   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 156 PRIO_156   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 157 PRIO_157   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 158 PRIO_158   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 159 PRIO_159   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 160 PRIO_160   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 161 PRIO_161   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 162 PRIO_162   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 163 PRIO_163   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 164 PRIO_164   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 165 PRIO_165   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 166 PRIO_166   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 167 PRIO_167   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 168 PRIO_168   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 169 PRIO_169   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 170 PRIO_170   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 171 PRIO_171   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 172 PRIO_172   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 173 PRIO_173   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 174 PRIO_174   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 175 PRIO_175   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 176 PRIO_176   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 177 PRIO_177   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 178 PRIO_178   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 179 PRIO_179   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 180 PRIO_180   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 181 PRIO_181   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 182 PRIO_182   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 183 PRIO_183   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 184 PRIO_184   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 185 PRIO_185   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 186 PRIO_186   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 187 PRIO_187   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 188 PRIO_188   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 189 PRIO_189   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 190 PRIO_190   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 191 PRIO_191   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 192 PRIO_192   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 193 PRIO_193   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 194 PRIO_194   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 195 PRIO_195   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 196 PRIO_196   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 197 PRIO_197   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 198 PRIO_198   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 199 PRIO_199   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 200 PRIO_200   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 201 PRIO_201   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 202 PRIO_202   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 203 PRIO_203   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 204 PRIO_204   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 205 PRIO_205   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 206 PRIO_206   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 207 PRIO_207   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 208 PRIO_208   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 209 PRIO_209   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 210 PRIO_210   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 211 PRIO_211   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 212 PRIO_212   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 213 PRIO_213   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 214 PRIO_214   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 215 PRIO_215   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 216 PRIO_216   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 217 PRIO_217   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 218 PRIO_218   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 219 PRIO_219   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 220 PRIO_220   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 221 PRIO_221   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 222 PRIO_222   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 223 PRIO_223   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 224 PRIO_224   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 225 PRIO_225   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 226 PRIO_226   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 227 PRIO_227   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 228 PRIO_228   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 229 PRIO_229   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 230 PRIO_230   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 231 PRIO_231   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 232 PRIO_232   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 233 PRIO_233   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 234 PRIO_234   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 235 PRIO_235   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 236 PRIO_236   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 237 PRIO_237   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 238 PRIO_238   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 239 PRIO_239   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 240 PRIO_240   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 241 PRIO_241   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 242 PRIO_242   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 243 PRIO_243   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 244 PRIO_244   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 245 PRIO_245   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 246 PRIO_246   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 247 PRIO_247   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 248 PRIO_248   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 249 PRIO_249   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 250 IP_0       : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 251 IP_1       : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 252 IP_2       : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 253 IP_3       : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 254 IP_4       : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 255 IP_5       : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 256 IP_6       : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 257 IP_7       : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 258 IE0_0      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 259 IE0_1      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 260 IE0_2      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 261 IE0_3      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 262 IE0_4      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 263 IE0_5      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 264 IE0_6      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 265 IE0_7      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 266 THRESHOLD0 : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 267 CC0        : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 268 MSIP0      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY           // 269 ALERT_TEST : Policy Idx  6
  };

  /**
   * Policy selection vector for sram_ctrl_main
   *   TLUL interface name: regs
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_SRAM_CTRL_MAIN_PWC_REGS [9] = '{
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 0 ALERT_TEST      : Policy Idx  6
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 1 STATUS          : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 2 EXEC_REGWEN     : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 3 EXEC            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 4 CTRL_REGWEN     : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 5 CTRL            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 6 SCR_KEY_ROTATED : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 7 READBACK_REGWEN : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY             // 8 READBACK        : Policy Idx  0
  };

  /**
   * Policy selection vector for sram_ctrl_mbox
   *   TLUL interface name: regs
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_SRAM_CTRL_MBOX_PWC_REGS [9] = '{
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 0 ALERT_TEST      : Policy Idx  6
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 1 STATUS          : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 2 EXEC_REGWEN     : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 3 EXEC            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 4 CTRL_REGWEN     : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 5 CTRL            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 6 SCR_KEY_ROTATED : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 7 READBACK_REGWEN : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY             // 8 READBACK        : Policy Idx  0
  };

  /**
   * Policy selection vector for dma
   *   TLUL interface name: None
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_DMA_PWC [63] = '{
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  0 INTR_STATE                 : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  1 INTR_ENABLE                : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  2 INTR_TEST                  : Policy Idx  0
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  3 ALERT_TEST                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  4 SRC_ADDR_LO                : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  5 SRC_ADDR_HI                : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  6 DST_ADDR_LO                : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  7 DST_ADDR_HI                : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  8 ADDR_SPACE_ID              : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  9 ENABLED_MEMORY_RANGE_BASE  : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 10 ENABLED_MEMORY_RANGE_LIMIT : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 11 RANGE_VALID                : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 12 RANGE_REGWEN               : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 13 CFG_REGWEN                 : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 14 TOTAL_DATA_SIZE            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 15 CHUNK_DATA_SIZE            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 16 TRANSFER_WIDTH             : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 17 CONTROL                    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 18 SRC_CONFIG                 : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 19 DST_CONFIG                 : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 20 STATUS                     : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 21 ERROR_CODE                 : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 22 SHA2_DIGEST_0              : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 23 SHA2_DIGEST_1              : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 24 SHA2_DIGEST_2              : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 25 SHA2_DIGEST_3              : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 26 SHA2_DIGEST_4              : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 27 SHA2_DIGEST_5              : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 28 SHA2_DIGEST_6              : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 29 SHA2_DIGEST_7              : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 30 SHA2_DIGEST_8              : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 31 SHA2_DIGEST_9              : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 32 SHA2_DIGEST_10             : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 33 SHA2_DIGEST_11             : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 34 SHA2_DIGEST_12             : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 35 SHA2_DIGEST_13             : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 36 SHA2_DIGEST_14             : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 37 SHA2_DIGEST_15             : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 38 HANDSHAKE_INTR_ENABLE      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 39 CLEAR_INTR_SRC             : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 40 CLEAR_INTR_BUS             : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 41 INTR_SRC_ADDR_0            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 42 INTR_SRC_ADDR_1            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 43 INTR_SRC_ADDR_2            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 44 INTR_SRC_ADDR_3            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 45 INTR_SRC_ADDR_4            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 46 INTR_SRC_ADDR_5            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 47 INTR_SRC_ADDR_6            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 48 INTR_SRC_ADDR_7            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 49 INTR_SRC_ADDR_8            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 50 INTR_SRC_ADDR_9            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 51 INTR_SRC_ADDR_10           : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 52 INTR_SRC_WR_VAL_0          : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 53 INTR_SRC_WR_VAL_1          : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 54 INTR_SRC_WR_VAL_2          : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 55 INTR_SRC_WR_VAL_3          : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 56 INTR_SRC_WR_VAL_4          : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 57 INTR_SRC_WR_VAL_5          : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 58 INTR_SRC_WR_VAL_6          : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 59 INTR_SRC_WR_VAL_7          : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 60 INTR_SRC_WR_VAL_8          : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 61 INTR_SRC_WR_VAL_9          : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY             // 62 INTR_SRC_WR_VAL_10         : Policy Idx  0
  };

  /**
   * Policy selection vector for mbx0
   *   TLUL interface name: core
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX0_PWC_CORE [17] = '{
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  0 INTR_STATE             : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  1 INTR_ENABLE            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  2 INTR_TEST              : Policy Idx  0
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  3 ALERT_TEST             : Policy Idx  6
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  4 CONTROL                : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  5 STATUS                 : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  6 ADDRESS_RANGE_REGWEN   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  7 ADDRESS_RANGE_VALID    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  8 INBOUND_BASE_ADDRESS   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  9 INBOUND_LIMIT_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 10 INBOUND_WRITE_PTR      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 11 OUTBOUND_BASE_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 12 OUTBOUND_LIMIT_ADDRESS : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 13 OUTBOUND_READ_PTR      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 14 OUTBOUND_OBJECT_SIZE   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 15 DOE_INTR_MSG_ADDR      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY             // 16 DOE_INTR_MSG_DATA      : Policy Idx  0
  };

  /**
   * Policy selection vector for mbx0
   *   TLUL interface name: soc
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX0_PWC_SOC [4] = '{
    RACL_POLICY_SEL_PWC_PWC_PRIVATE_POLICY,          // 0 SOC_CONTROL           : Policy Idx  7
    RACL_POLICY_SEL_PWC_PWC_PRIVATE_POLICY,          // 1 SOC_STATUS            : Policy Idx  7
    RACL_POLICY_SEL_PWC_PWC_PRIVATE_POLICY,          // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  7
    RACL_POLICY_SEL_PWC_PWC_PRIVATE_POLICY           // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  7
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX0_PWC_SOC_WDATA =
    RACL_POLICY_SEL_PWC_PWC_PRIVATE_POLICY;          // Policy Idx  7
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX0_PWC_SOC_RDATA =
    RACL_POLICY_SEL_PWC_PWC_PRIVATE_POLICY;          // Policy Idx  7

  /**
   * Policy selection vector for mbx1
   *   TLUL interface name: core
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX1_PWC_CORE [17] = '{
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  0 INTR_STATE             : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  1 INTR_ENABLE            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  2 INTR_TEST              : Policy Idx  0
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  3 ALERT_TEST             : Policy Idx  6
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  4 CONTROL                : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  5 STATUS                 : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  6 ADDRESS_RANGE_REGWEN   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  7 ADDRESS_RANGE_VALID    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  8 INBOUND_BASE_ADDRESS   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  9 INBOUND_LIMIT_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 10 INBOUND_WRITE_PTR      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 11 OUTBOUND_BASE_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 12 OUTBOUND_LIMIT_ADDRESS : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 13 OUTBOUND_READ_PTR      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 14 OUTBOUND_OBJECT_SIZE   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 15 DOE_INTR_MSG_ADDR      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY             // 16 DOE_INTR_MSG_DATA      : Policy Idx  0
  };

  /**
   * Policy selection vector for mbx1
   *   TLUL interface name: soc
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX1_PWC_SOC [4] = '{
    RACL_POLICY_SEL_PWC_PWC_PRIVATE_POLICY,          // 0 SOC_CONTROL           : Policy Idx  7
    RACL_POLICY_SEL_PWC_PWC_PRIVATE_POLICY,          // 1 SOC_STATUS            : Policy Idx  7
    RACL_POLICY_SEL_PWC_PWC_PRIVATE_POLICY,          // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  7
    RACL_POLICY_SEL_PWC_PWC_PRIVATE_POLICY           // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  7
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX1_PWC_SOC_WDATA =
    RACL_POLICY_SEL_PWC_PWC_PRIVATE_POLICY;          // Policy Idx  7
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX1_PWC_SOC_RDATA =
    RACL_POLICY_SEL_PWC_PWC_PRIVATE_POLICY;          // Policy Idx  7

  /**
   * Policy selection vector for mbx2
   *   TLUL interface name: core
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX2_PWC_CORE [17] = '{
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  0 INTR_STATE             : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  1 INTR_ENABLE            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  2 INTR_TEST              : Policy Idx  0
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  3 ALERT_TEST             : Policy Idx  6
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  4 CONTROL                : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  5 STATUS                 : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  6 ADDRESS_RANGE_REGWEN   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  7 ADDRESS_RANGE_VALID    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  8 INBOUND_BASE_ADDRESS   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  9 INBOUND_LIMIT_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 10 INBOUND_WRITE_PTR      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 11 OUTBOUND_BASE_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 12 OUTBOUND_LIMIT_ADDRESS : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 13 OUTBOUND_READ_PTR      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 14 OUTBOUND_OBJECT_SIZE   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 15 DOE_INTR_MSG_ADDR      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY             // 16 DOE_INTR_MSG_DATA      : Policy Idx  0
  };

  /**
   * Policy selection vector for mbx2
   *   TLUL interface name: soc
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX2_PWC_SOC [4] = '{
    RACL_POLICY_SEL_PWC_PWC_PRIVATE_POLICY,          // 0 SOC_CONTROL           : Policy Idx  7
    RACL_POLICY_SEL_PWC_PWC_PRIVATE_POLICY,          // 1 SOC_STATUS            : Policy Idx  7
    RACL_POLICY_SEL_PWC_PWC_PRIVATE_POLICY,          // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  7
    RACL_POLICY_SEL_PWC_PWC_PRIVATE_POLICY           // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  7
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX2_PWC_SOC_WDATA =
    RACL_POLICY_SEL_PWC_PWC_PRIVATE_POLICY;          // Policy Idx  7
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX2_PWC_SOC_RDATA =
    RACL_POLICY_SEL_PWC_PWC_PRIVATE_POLICY;          // Policy Idx  7

  /**
   * Policy selection vector for mbx3
   *   TLUL interface name: core
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX3_PWC_CORE [17] = '{
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  0 INTR_STATE             : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  1 INTR_ENABLE            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  2 INTR_TEST              : Policy Idx  0
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  3 ALERT_TEST             : Policy Idx  6
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  4 CONTROL                : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  5 STATUS                 : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  6 ADDRESS_RANGE_REGWEN   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  7 ADDRESS_RANGE_VALID    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  8 INBOUND_BASE_ADDRESS   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  9 INBOUND_LIMIT_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 10 INBOUND_WRITE_PTR      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 11 OUTBOUND_BASE_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 12 OUTBOUND_LIMIT_ADDRESS : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 13 OUTBOUND_READ_PTR      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 14 OUTBOUND_OBJECT_SIZE   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 15 DOE_INTR_MSG_ADDR      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY             // 16 DOE_INTR_MSG_DATA      : Policy Idx  0
  };

  /**
   * Policy selection vector for mbx3
   *   TLUL interface name: soc
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX3_PWC_SOC [4] = '{
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 0 SOC_CONTROL           : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 1 SOC_STATUS            : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY           // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  6
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX3_PWC_SOC_WDATA =
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY;          // Policy Idx  6
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX3_PWC_SOC_RDATA =
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY;          // Policy Idx  6

  /**
   * Policy selection vector for mbx4
   *   TLUL interface name: core
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX4_PWC_CORE [17] = '{
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  0 INTR_STATE             : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  1 INTR_ENABLE            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  2 INTR_TEST              : Policy Idx  0
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  3 ALERT_TEST             : Policy Idx  6
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  4 CONTROL                : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  5 STATUS                 : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  6 ADDRESS_RANGE_REGWEN   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  7 ADDRESS_RANGE_VALID    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  8 INBOUND_BASE_ADDRESS   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  9 INBOUND_LIMIT_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 10 INBOUND_WRITE_PTR      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 11 OUTBOUND_BASE_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 12 OUTBOUND_LIMIT_ADDRESS : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 13 OUTBOUND_READ_PTR      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 14 OUTBOUND_OBJECT_SIZE   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 15 DOE_INTR_MSG_ADDR      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY             // 16 DOE_INTR_MSG_DATA      : Policy Idx  0
  };

  /**
   * Policy selection vector for mbx4
   *   TLUL interface name: soc
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX4_PWC_SOC [4] = '{
    RACL_POLICY_SEL_PWC_MIO_PRIVATE_POLICY,          // 0 SOC_CONTROL           : Policy Idx  8
    RACL_POLICY_SEL_PWC_MIO_PRIVATE_POLICY,          // 1 SOC_STATUS            : Policy Idx  8
    RACL_POLICY_SEL_PWC_MIO_PRIVATE_POLICY,          // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  8
    RACL_POLICY_SEL_PWC_MIO_PRIVATE_POLICY           // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  8
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX4_PWC_SOC_WDATA =
    RACL_POLICY_SEL_PWC_MIO_PRIVATE_POLICY;          // Policy Idx  8
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX4_PWC_SOC_RDATA =
    RACL_POLICY_SEL_PWC_MIO_PRIVATE_POLICY;          // Policy Idx  8

  /**
   * Policy selection vector for mbx5
   *   TLUL interface name: core
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX5_PWC_CORE [17] = '{
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  0 INTR_STATE             : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  1 INTR_ENABLE            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  2 INTR_TEST              : Policy Idx  0
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  3 ALERT_TEST             : Policy Idx  6
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  4 CONTROL                : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  5 STATUS                 : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  6 ADDRESS_RANGE_REGWEN   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  7 ADDRESS_RANGE_VALID    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  8 INBOUND_BASE_ADDRESS   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  9 INBOUND_LIMIT_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 10 INBOUND_WRITE_PTR      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 11 OUTBOUND_BASE_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 12 OUTBOUND_LIMIT_ADDRESS : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 13 OUTBOUND_READ_PTR      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 14 OUTBOUND_OBJECT_SIZE   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 15 DOE_INTR_MSG_ADDR      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY             // 16 DOE_INTR_MSG_DATA      : Policy Idx  0
  };

  /**
   * Policy selection vector for mbx5
   *   TLUL interface name: soc
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX5_PWC_SOC [4] = '{
    RACL_POLICY_SEL_PWC_DUC_PRIVATE_POLICY,          // 0 SOC_CONTROL           : Policy Idx  9
    RACL_POLICY_SEL_PWC_DUC_PRIVATE_POLICY,          // 1 SOC_STATUS            : Policy Idx  9
    RACL_POLICY_SEL_PWC_DUC_PRIVATE_POLICY,          // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  9
    RACL_POLICY_SEL_PWC_DUC_PRIVATE_POLICY           // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  9
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX5_PWC_SOC_WDATA =
    RACL_POLICY_SEL_PWC_DUC_PRIVATE_POLICY;          // Policy Idx  9
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX5_PWC_SOC_RDATA =
    RACL_POLICY_SEL_PWC_DUC_PRIVATE_POLICY;          // Policy Idx  9

  /**
   * Policy selection vector for mbx_pcie0
   *   TLUL interface name: core
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX_PCIE0_PWC_CORE [17] = '{
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  0 INTR_STATE             : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  1 INTR_ENABLE            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  2 INTR_TEST              : Policy Idx  0
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  3 ALERT_TEST             : Policy Idx  6
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  4 CONTROL                : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  5 STATUS                 : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  6 ADDRESS_RANGE_REGWEN   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  7 ADDRESS_RANGE_VALID    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  8 INBOUND_BASE_ADDRESS   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  9 INBOUND_LIMIT_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 10 INBOUND_WRITE_PTR      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 11 OUTBOUND_BASE_ADDRESS  : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 12 OUTBOUND_LIMIT_ADDRESS : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 13 OUTBOUND_READ_PTR      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 14 OUTBOUND_OBJECT_SIZE   : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 15 DOE_INTR_MSG_ADDR      : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY             // 16 DOE_INTR_MSG_DATA      : Policy Idx  0
  };

  /**
   * Policy selection vector for mbx_pcie0
   *   TLUL interface name: soc
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_MBX_PCIE0_PWC_SOC [4] = '{
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 0 SOC_CONTROL           : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 1 SOC_STATUS            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 2 SOC_DOE_INTR_MSG_ADDR : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY             // 3 SOC_DOE_INTR_MSG_DATA : Policy Idx  0
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX_PCIE0_PWC_SOC_WDATA =
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY;            // Policy Idx  0
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_MBX_PCIE0_PWC_SOC_RDATA =
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY;            // Policy Idx  0

  /**
   * Policy selection vector for ac_range_check_pwc
   *   TLUL interface name: None
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_AC_RANGE_CHECK_PWC_PWC [168] = '{
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //   0 INTR_STATE                    : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //   1 INTR_ENABLE                   : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //   2 INTR_TEST                     : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //   3 ALERT_TEST                    : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //   4 ALERT_STATUS                  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //   5 LOG_CONFIG                    : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //   6 LOG_STATUS                    : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //   7 LOG_ADDRESS                   : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //   8 RANGE_REGWEN_0                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //   9 RANGE_REGWEN_1                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  10 RANGE_REGWEN_2                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  11 RANGE_REGWEN_3                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  12 RANGE_REGWEN_4                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  13 RANGE_REGWEN_5                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  14 RANGE_REGWEN_6                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  15 RANGE_REGWEN_7                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  16 RANGE_REGWEN_8                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  17 RANGE_REGWEN_9                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  18 RANGE_REGWEN_10               : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  19 RANGE_REGWEN_11               : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  20 RANGE_REGWEN_12               : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  21 RANGE_REGWEN_13               : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  22 RANGE_REGWEN_14               : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  23 RANGE_REGWEN_15               : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  24 RANGE_REGWEN_16               : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  25 RANGE_REGWEN_17               : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  26 RANGE_REGWEN_18               : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  27 RANGE_REGWEN_19               : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  28 RANGE_REGWEN_20               : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  29 RANGE_REGWEN_21               : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  30 RANGE_REGWEN_22               : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  31 RANGE_REGWEN_23               : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  32 RANGE_REGWEN_24               : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  33 RANGE_REGWEN_25               : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  34 RANGE_REGWEN_26               : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  35 RANGE_REGWEN_27               : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  36 RANGE_REGWEN_28               : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  37 RANGE_REGWEN_29               : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  38 RANGE_REGWEN_30               : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  39 RANGE_REGWEN_31               : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  40 RANGE_BASE_0                  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  41 RANGE_BASE_1                  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  42 RANGE_BASE_2                  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  43 RANGE_BASE_3                  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  44 RANGE_BASE_4                  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  45 RANGE_BASE_5                  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  46 RANGE_BASE_6                  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  47 RANGE_BASE_7                  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  48 RANGE_BASE_8                  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  49 RANGE_BASE_9                  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  50 RANGE_BASE_10                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  51 RANGE_BASE_11                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  52 RANGE_BASE_12                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  53 RANGE_BASE_13                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  54 RANGE_BASE_14                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  55 RANGE_BASE_15                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  56 RANGE_BASE_16                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  57 RANGE_BASE_17                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  58 RANGE_BASE_18                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  59 RANGE_BASE_19                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  60 RANGE_BASE_20                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  61 RANGE_BASE_21                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  62 RANGE_BASE_22                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  63 RANGE_BASE_23                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  64 RANGE_BASE_24                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  65 RANGE_BASE_25                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  66 RANGE_BASE_26                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  67 RANGE_BASE_27                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  68 RANGE_BASE_28                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  69 RANGE_BASE_29                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  70 RANGE_BASE_30                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  71 RANGE_BASE_31                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  72 RANGE_LIMIT_0                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  73 RANGE_LIMIT_1                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  74 RANGE_LIMIT_2                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  75 RANGE_LIMIT_3                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  76 RANGE_LIMIT_4                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  77 RANGE_LIMIT_5                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  78 RANGE_LIMIT_6                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  79 RANGE_LIMIT_7                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  80 RANGE_LIMIT_8                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  81 RANGE_LIMIT_9                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  82 RANGE_LIMIT_10                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  83 RANGE_LIMIT_11                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  84 RANGE_LIMIT_12                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  85 RANGE_LIMIT_13                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  86 RANGE_LIMIT_14                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  87 RANGE_LIMIT_15                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  88 RANGE_LIMIT_16                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  89 RANGE_LIMIT_17                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  90 RANGE_LIMIT_18                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  91 RANGE_LIMIT_19                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  92 RANGE_LIMIT_20                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  93 RANGE_LIMIT_21                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  94 RANGE_LIMIT_22                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  95 RANGE_LIMIT_23                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  96 RANGE_LIMIT_24                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  97 RANGE_LIMIT_25                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  98 RANGE_LIMIT_26                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  99 RANGE_LIMIT_27                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 100 RANGE_LIMIT_28                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 101 RANGE_LIMIT_29                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 102 RANGE_LIMIT_30                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 103 RANGE_LIMIT_31                : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 104 RANGE_ATTR_0                  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 105 RANGE_ATTR_1                  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 106 RANGE_ATTR_2                  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 107 RANGE_ATTR_3                  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 108 RANGE_ATTR_4                  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 109 RANGE_ATTR_5                  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 110 RANGE_ATTR_6                  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 111 RANGE_ATTR_7                  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 112 RANGE_ATTR_8                  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 113 RANGE_ATTR_9                  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 114 RANGE_ATTR_10                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 115 RANGE_ATTR_11                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 116 RANGE_ATTR_12                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 117 RANGE_ATTR_13                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 118 RANGE_ATTR_14                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 119 RANGE_ATTR_15                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 120 RANGE_ATTR_16                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 121 RANGE_ATTR_17                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 122 RANGE_ATTR_18                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 123 RANGE_ATTR_19                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 124 RANGE_ATTR_20                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 125 RANGE_ATTR_21                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 126 RANGE_ATTR_22                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 127 RANGE_ATTR_23                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 128 RANGE_ATTR_24                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 129 RANGE_ATTR_25                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 130 RANGE_ATTR_26                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 131 RANGE_ATTR_27                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 132 RANGE_ATTR_28                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 133 RANGE_ATTR_29                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 134 RANGE_ATTR_30                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 135 RANGE_ATTR_31                 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 136 RANGE_RACL_POLICY_SHADOWED_0  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 137 RANGE_RACL_POLICY_SHADOWED_1  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 138 RANGE_RACL_POLICY_SHADOWED_2  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 139 RANGE_RACL_POLICY_SHADOWED_3  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 140 RANGE_RACL_POLICY_SHADOWED_4  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 141 RANGE_RACL_POLICY_SHADOWED_5  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 142 RANGE_RACL_POLICY_SHADOWED_6  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 143 RANGE_RACL_POLICY_SHADOWED_7  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 144 RANGE_RACL_POLICY_SHADOWED_8  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 145 RANGE_RACL_POLICY_SHADOWED_9  : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 146 RANGE_RACL_POLICY_SHADOWED_10 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 147 RANGE_RACL_POLICY_SHADOWED_11 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 148 RANGE_RACL_POLICY_SHADOWED_12 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 149 RANGE_RACL_POLICY_SHADOWED_13 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 150 RANGE_RACL_POLICY_SHADOWED_14 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 151 RANGE_RACL_POLICY_SHADOWED_15 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 152 RANGE_RACL_POLICY_SHADOWED_16 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 153 RANGE_RACL_POLICY_SHADOWED_17 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 154 RANGE_RACL_POLICY_SHADOWED_18 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 155 RANGE_RACL_POLICY_SHADOWED_19 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 156 RANGE_RACL_POLICY_SHADOWED_20 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 157 RANGE_RACL_POLICY_SHADOWED_21 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 158 RANGE_RACL_POLICY_SHADOWED_22 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 159 RANGE_RACL_POLICY_SHADOWED_23 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 160 RANGE_RACL_POLICY_SHADOWED_24 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 161 RANGE_RACL_POLICY_SHADOWED_25 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 162 RANGE_RACL_POLICY_SHADOWED_26 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 163 RANGE_RACL_POLICY_SHADOWED_27 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 164 RANGE_RACL_POLICY_SHADOWED_28 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 165 RANGE_RACL_POLICY_SHADOWED_29 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          // 166 RANGE_RACL_POLICY_SHADOWED_30 : Policy Idx  6
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY           // 167 RANGE_RACL_POLICY_SHADOWED_31 : Policy Idx  6
  };

  /**
   * Policy selection vector for rv_core_ibex_pwc
   *   TLUL interface name: cfg
   *   RACL group: pwc
   */
  parameter racl_policy_sel_t RACL_POLICY_SEL_VEC_RV_CORE_IBEX_PWC_PWC_CFG [25] = '{
    RACL_POLICY_SEL_PWC_ROT_PRIVATE_POLICY,          //  0 ALERT_TEST           : Policy Idx  6
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  1 SW_RECOV_ERR         : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  2 SW_FATAL_ERR         : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  3 IBUS_REGWEN_0        : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  4 IBUS_REGWEN_1        : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  5 IBUS_ADDR_EN_0       : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  6 IBUS_ADDR_EN_1       : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  7 IBUS_ADDR_MATCHING_0 : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  8 IBUS_ADDR_MATCHING_1 : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            //  9 IBUS_REMAP_ADDR_0    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 10 IBUS_REMAP_ADDR_1    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 11 DBUS_REGWEN_0        : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 12 DBUS_REGWEN_1        : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 13 DBUS_ADDR_EN_0       : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 14 DBUS_ADDR_EN_1       : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 15 DBUS_ADDR_MATCHING_0 : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 16 DBUS_ADDR_MATCHING_1 : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 17 DBUS_REMAP_ADDR_0    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 18 DBUS_REMAP_ADDR_1    : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 19 NMI_ENABLE           : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 20 NMI_STATE            : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 21 ERR_STATUS           : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 22 RND_DATA             : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY,            // 23 RND_STATUS           : Policy Idx  0
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY             // 24 FPGA_INFO            : Policy Idx  0
  };
  parameter racl_policy_sel_t RACL_POLICY_SEL_WIN_RV_CORE_IBEX_PWC_PWC_CFG_DV_SIM_WINDOW =
    RACL_POLICY_SEL_PWC_ALL_RD_WR_POLICY;            // Policy Idx  0

endpackage
