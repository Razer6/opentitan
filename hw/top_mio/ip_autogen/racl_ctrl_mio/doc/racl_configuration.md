# RACL Configuration

<!-- BEGIN CMDGEN util/raclgen.py --doc ./hw/top_mio/data/autogen/top_mio.gen.hjson -->
## RACL groups

### RACL group: Null

| Policy Name                 |   Index | Description   |
|:----------------------------|--------:|:--------------|
| all_rd_wr_policy            |       0 |               |
| hw_rot_pwc_wr_all_rd_policy |       1 |               |
| pre_boot_m_policy           |       2 |               |
| post_boot_m_policy          |       3 |               |
| tee_limited_policy          |       4 |               |
| rcode_private_policy        |       5 |               |
| rot_private_policy          |       6 |               |
| pwc_private_policy          |       7 |               |
| mio_private_policy          |       8 |               |
| duc_private_policy          |       9 |               |


### RACL group: lioGrpA

| Policy Name                 |   Index | Description   |
|:----------------------------|--------:|:--------------|
| all_rd_wr_policy            |       0 |               |
| rot_private_policy          |       1 |               |
| hw_rot_pwc_wr_all_rd_policy |       2 |               |
| pwc_private_policy          |       3 |               |
| mio_private_policy          |       4 |               |
| pwmPolicy                   |       5 |               |
| gpioPolicy                  |       6 |               |
| uartPolicy                  |       7 |               |
| i2c0Policy                  |       8 |               |
| i2c1Policy                  |       9 |               |
| i2c2Policy                  |      10 |               |
| i3c0Policy                  |      11 |               |
| i3c1Policy                  |      12 |               |
| i3c2Policy                  |      13 |               |
| spihstPolicy                |      14 |               |
| spidevPolicy                |      15 |               |


### RACL group: lioGrpB

| Policy Name                 |   Index | Description   |
|:----------------------------|--------:|:--------------|
| all_rd_wr_policy            |       0 |               |
| rot_private_policy          |       1 |               |
| hw_rot_pwc_wr_all_rd_policy |       2 |               |
| pwc_private_policy          |       3 |               |
| mio_private_policy          |       4 |               |
| pwmPolicy                   |       5 |               |
| gpioPolicy                  |       6 |               |
| uartPolicy                  |       7 |               |
| i2c0Policy                  |       8 |               |
| i2c1Policy                  |       9 |               |
| i2c2Policy                  |      10 |               |
| i3c0Policy                  |      11 |               |
| i3c1Policy                  |      12 |               |
| i3c2Policy                  |      13 |               |
| spihstPolicy                |      14 |               |
| spidevPolicy                |      15 |               |


### RACL group: lioGrpC

| Policy Name                 |   Index | Description   |
|:----------------------------|--------:|:--------------|
| all_rd_wr_policy            |       0 |               |
| rot_private_policy          |       1 |               |
| hw_rot_pwc_wr_all_rd_policy |       2 |               |
| pwc_private_policy          |       3 |               |
| mio_private_policy          |       4 |               |
| pwmPolicy                   |       5 |               |
| gpioPolicy                  |       6 |               |
| uartPolicy                  |       7 |               |
| i2c0Policy                  |       8 |               |
| i2c1Policy                  |       9 |               |
| i2c2Policy                  |      10 |               |
| i3c0Policy                  |      11 |               |
| i3c1Policy                  |      12 |               |
| i3c2Policy                  |      13 |               |
| spihstPolicy                |      14 |               |
| spidevPolicy                |      15 |               |


### RACL group: lioGrpD

| Policy Name                 |   Index | Description   |
|:----------------------------|--------:|:--------------|
| all_rd_wr_policy            |       0 |               |
| rot_private_policy          |       1 |               |
| hw_rot_pwc_wr_all_rd_policy |       2 |               |
| pwc_private_policy          |       3 |               |
| mio_private_policy          |       4 |               |
| pwmPolicy                   |       5 |               |
| gpioPolicy                  |       6 |               |
| uartPolicy                  |       7 |               |
| i2c0Policy                  |       8 |               |
| i2c1Policy                  |       9 |               |
| i2c2Policy                  |      10 |               |
| i3c0Policy                  |      11 |               |
| i3c1Policy                  |      12 |               |
| i3c2Policy                  |      13 |               |
| spihstPolicy                |      14 |               |
| spidevPolicy                |      15 |               |


## RACL configuration

### RACL configuration for `rv_timer` and interface `null`

- IP: rv_timer
- Instance base address: 0x30000000
- RACL group: Null


| Name                        | Offset   | Address    | Width   | Policy                 | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:----------------------------|:---------|:-----------|:--------|:-----------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| rv_timer.`ALERT_TEST`       | 0x0      | 0x30000000 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| rv_timer.`CTRL`             | 0x4      | 0x30000004 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_timer.`INTR_ENABLE0`     | 0x100    | 0x30000100 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_timer.`INTR_STATE0`      | 0x104    | 0x30000104 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_timer.`INTR_TEST0`       | 0x108    | 0x30000108 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_timer.`CFG0`             | 0x10c    | 0x3000010c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_timer.`TIMER_V_LOWER0`   | 0x110    | 0x30000110 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_timer.`TIMER_V_UPPER0`   | 0x114    | 0x30000114 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_timer.`COMPARE_LOWER0_0` | 0x118    | 0x30000118 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_timer.`COMPARE_UPPER0_0` | 0x11c    | 0x3000011c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |

### RACL configuration for `aon_timer_aon` and interface `null`

- IP: aon_timer
- Instance base address: 0x30470000
- RACL group: Null


| Name                            | Offset   | Address    | Width   | Policy                 | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:--------------------------------|:---------|:-----------|:--------|:-----------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| aon_timer_aon.`ALERT_TEST`      | 0x0      | 0x30470000 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| aon_timer_aon.`WKUP_CTRL`       | 0x4      | 0x30470004 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| aon_timer_aon.`WKUP_THOLD_HI`   | 0x8      | 0x30470008 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| aon_timer_aon.`WKUP_THOLD_LO`   | 0xc      | 0x3047000c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| aon_timer_aon.`WKUP_COUNT_HI`   | 0x10     | 0x30470010 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| aon_timer_aon.`WKUP_COUNT_LO`   | 0x14     | 0x30470014 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| aon_timer_aon.`WDOG_REGWEN`     | 0x18     | 0x30470018 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| aon_timer_aon.`WDOG_CTRL`       | 0x1c     | 0x3047001c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| aon_timer_aon.`WDOG_BARK_THOLD` | 0x20     | 0x30470020 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| aon_timer_aon.`WDOG_BITE_THOLD` | 0x24     | 0x30470024 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| aon_timer_aon.`WDOG_COUNT`      | 0x28     | 0x30470028 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| aon_timer_aon.`INTR_STATE`      | 0x2c     | 0x3047002c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| aon_timer_aon.`INTR_TEST`       | 0x30     | 0x30470030 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| aon_timer_aon.`WKUP_CAUSE`      | 0x34     | 0x30470034 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |

### RACL configuration for `sram_ctrl_ret_aon` and interface `regs`

- IP: sram_ctrl
- Instance base address: 0x30500000
- RACL group: Null


| Name                                     | Offset   | Address    | Width   | Policy                 | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:-----------------------------------------|:---------|:-----------|:--------|:-----------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| sram_ctrl_ret_aon.regs.`ALERT_TEST`      | 0x0      | 0x30500000 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| sram_ctrl_ret_aon.regs.`STATUS`          | 0x4      | 0x30500004 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| sram_ctrl_ret_aon.regs.`EXEC_REGWEN`     | 0x8      | 0x30500008 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| sram_ctrl_ret_aon.regs.`EXEC`            | 0xc      | 0x3050000c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| sram_ctrl_ret_aon.regs.`CTRL_REGWEN`     | 0x10     | 0x30500010 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| sram_ctrl_ret_aon.regs.`CTRL`            | 0x14     | 0x30500014 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| sram_ctrl_ret_aon.regs.`SCR_KEY_ROTATED` | 0x18     | 0x30500018 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| sram_ctrl_ret_aon.regs.`READBACK_REGWEN` | 0x1c     | 0x3050001c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| sram_ctrl_ret_aon.regs.`READBACK`        | 0x20     | 0x30500020 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |

### RACL configuration for `rv_dm` and interface `regs`

- IP: rv_dm
- Instance base address: 0x21200000
- RACL group: Null


| Name                                  | Offset   | Address    | Width   | Policy                 | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:--------------------------------------|:---------|:-----------|:--------|:-----------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| rv_dm.regs.`ALERT_TEST`               | 0x0      | 0x21200000 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| rv_dm.regs.`LATE_DEBUG_ENABLE_REGWEN` | 0x4      | 0x21200004 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_dm.regs.`LATE_DEBUG_ENABLE`        | 0x8      | 0x21200008 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |

### RACL configuration for `rv_plic_mio` and interface `null`

- IP: rv_plic_mio
- Instance base address: 0x28000000
- RACL group: Null


| Name                     | Offset    | Address    | Width   | Policy                 | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:-------------------------|:----------|:-----------|:--------|:-----------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| rv_plic_mio.`PRIO_0`     | 0x0       | 0x28000000 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_1`     | 0x4       | 0x28000004 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_2`     | 0x8       | 0x28000008 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_3`     | 0xc       | 0x2800000c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_4`     | 0x10      | 0x28000010 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_5`     | 0x14      | 0x28000014 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_6`     | 0x18      | 0x28000018 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_7`     | 0x1c      | 0x2800001c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_8`     | 0x20      | 0x28000020 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_9`     | 0x24      | 0x28000024 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_10`    | 0x28      | 0x28000028 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_11`    | 0x2c      | 0x2800002c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_12`    | 0x30      | 0x28000030 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_13`    | 0x34      | 0x28000034 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_14`    | 0x38      | 0x28000038 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_15`    | 0x3c      | 0x2800003c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_16`    | 0x40      | 0x28000040 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_17`    | 0x44      | 0x28000044 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_18`    | 0x48      | 0x28000048 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_19`    | 0x4c      | 0x2800004c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_20`    | 0x50      | 0x28000050 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_21`    | 0x54      | 0x28000054 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_22`    | 0x58      | 0x28000058 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_23`    | 0x5c      | 0x2800005c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_24`    | 0x60      | 0x28000060 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_25`    | 0x64      | 0x28000064 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_26`    | 0x68      | 0x28000068 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_27`    | 0x6c      | 0x2800006c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_28`    | 0x70      | 0x28000070 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_29`    | 0x74      | 0x28000074 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_30`    | 0x78      | 0x28000078 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_31`    | 0x7c      | 0x2800007c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_32`    | 0x80      | 0x28000080 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_33`    | 0x84      | 0x28000084 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_34`    | 0x88      | 0x28000088 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_35`    | 0x8c      | 0x2800008c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_36`    | 0x90      | 0x28000090 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`PRIO_37`    | 0x94      | 0x28000094 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`IP_0`       | 0x1000    | 0x28001000 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`IP_1`       | 0x1004    | 0x28001004 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`IE0_0`      | 0x2000    | 0x28002000 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`IE0_1`      | 0x2004    | 0x28002004 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`THRESHOLD0` | 0x200000  | 0x28200000 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`CC0`        | 0x200004  | 0x28200004 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`MSIP0`      | 0x4000000 | 0x2c000000 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_plic_mio.`ALERT_TEST` | 0x4004000 | 0x2c004000 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |

### RACL configuration for `sram_ctrl_main` and interface `regs`

- IP: sram_ctrl
- Instance base address: 0x211c0000
- RACL group: Null


| Name                                  | Offset   | Address    | Width   | Policy                 | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:--------------------------------------|:---------|:-----------|:--------|:-----------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| sram_ctrl_main.regs.`ALERT_TEST`      | 0x0      | 0x211c0000 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| sram_ctrl_main.regs.`STATUS`          | 0x4      | 0x211c0004 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| sram_ctrl_main.regs.`EXEC_REGWEN`     | 0x8      | 0x211c0008 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| sram_ctrl_main.regs.`EXEC`            | 0xc      | 0x211c000c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| sram_ctrl_main.regs.`CTRL_REGWEN`     | 0x10     | 0x211c0010 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| sram_ctrl_main.regs.`CTRL`            | 0x14     | 0x211c0014 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| sram_ctrl_main.regs.`SCR_KEY_ROTATED` | 0x18     | 0x211c0018 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| sram_ctrl_main.regs.`READBACK_REGWEN` | 0x1c     | 0x211c001c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| sram_ctrl_main.regs.`READBACK`        | 0x20     | 0x211c0020 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |

### RACL configuration for `sram_ctrl_mbox` and interface `regs`

- IP: sram_ctrl
- Instance base address: 0x211d0000
- RACL group: Null


| Name                                  | Offset   | Address    | Width   | Policy                 | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:--------------------------------------|:---------|:-----------|:--------|:-----------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| sram_ctrl_mbox.regs.`ALERT_TEST`      | 0x0      | 0x211d0000 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| sram_ctrl_mbox.regs.`STATUS`          | 0x4      | 0x211d0004 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| sram_ctrl_mbox.regs.`EXEC_REGWEN`     | 0x8      | 0x211d0008 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| sram_ctrl_mbox.regs.`EXEC`            | 0xc      | 0x211d000c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| sram_ctrl_mbox.regs.`CTRL_REGWEN`     | 0x10     | 0x211d0010 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| sram_ctrl_mbox.regs.`CTRL`            | 0x14     | 0x211d0014 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| sram_ctrl_mbox.regs.`SCR_KEY_ROTATED` | 0x18     | 0x211d0018 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| sram_ctrl_mbox.regs.`READBACK_REGWEN` | 0x1c     | 0x211d001c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| sram_ctrl_mbox.regs.`READBACK`        | 0x20     | 0x211d0020 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |

### RACL configuration for `dma` and interface `null`

- IP: dma
- Instance base address: 0x22010000
- RACL group: Null


| Name                             | Offset   | Address    | Width   | Policy                 | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:---------------------------------|:---------|:-----------|:--------|:-----------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| dma.`INTR_STATE`                 | 0x0      | 0x22010000 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`INTR_ENABLE`                | 0x4      | 0x22010004 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`INTR_TEST`                  | 0x8      | 0x22010008 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`ALERT_TEST`                 | 0xc      | 0x2201000c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| dma.`SRC_ADDR_LO`                | 0x10     | 0x22010010 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`SRC_ADDR_HI`                | 0x14     | 0x22010014 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`DST_ADDR_LO`                | 0x18     | 0x22010018 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`DST_ADDR_HI`                | 0x1c     | 0x2201001c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`ADDR_SPACE_ID`              | 0x20     | 0x22010020 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`ENABLED_MEMORY_RANGE_BASE`  | 0x24     | 0x22010024 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`ENABLED_MEMORY_RANGE_LIMIT` | 0x28     | 0x22010028 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`RANGE_VALID`                | 0x2c     | 0x2201002c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`RANGE_REGWEN`               | 0x30     | 0x22010030 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`CFG_REGWEN`                 | 0x34     | 0x22010034 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`TOTAL_DATA_SIZE`            | 0x38     | 0x22010038 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`CHUNK_DATA_SIZE`            | 0x3c     | 0x2201003c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`TRANSFER_WIDTH`             | 0x40     | 0x22010040 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`CONTROL`                    | 0x44     | 0x22010044 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`SRC_CONFIG`                 | 0x48     | 0x22010048 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`DST_CONFIG`                 | 0x4c     | 0x2201004c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`STATUS`                     | 0x50     | 0x22010050 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`ERROR_CODE`                 | 0x54     | 0x22010054 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`SHA2_DIGEST_0`              | 0x58     | 0x22010058 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`SHA2_DIGEST_1`              | 0x5c     | 0x2201005c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`SHA2_DIGEST_2`              | 0x60     | 0x22010060 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`SHA2_DIGEST_3`              | 0x64     | 0x22010064 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`SHA2_DIGEST_4`              | 0x68     | 0x22010068 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`SHA2_DIGEST_5`              | 0x6c     | 0x2201006c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`SHA2_DIGEST_6`              | 0x70     | 0x22010070 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`SHA2_DIGEST_7`              | 0x74     | 0x22010074 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`SHA2_DIGEST_8`              | 0x78     | 0x22010078 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`SHA2_DIGEST_9`              | 0x7c     | 0x2201007c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`SHA2_DIGEST_10`             | 0x80     | 0x22010080 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`SHA2_DIGEST_11`             | 0x84     | 0x22010084 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`SHA2_DIGEST_12`             | 0x88     | 0x22010088 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`SHA2_DIGEST_13`             | 0x8c     | 0x2201008c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`SHA2_DIGEST_14`             | 0x90     | 0x22010090 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`SHA2_DIGEST_15`             | 0x94     | 0x22010094 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`HANDSHAKE_INTR_ENABLE`      | 0x98     | 0x22010098 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`CLEAR_INTR_SRC`             | 0x9c     | 0x2201009c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`CLEAR_INTR_BUS`             | 0xa0     | 0x220100a0 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`INTR_SRC_ADDR_0`            | 0xa4     | 0x220100a4 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`INTR_SRC_ADDR_1`            | 0xa8     | 0x220100a8 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`INTR_SRC_ADDR_2`            | 0xac     | 0x220100ac | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`INTR_SRC_ADDR_3`            | 0xb0     | 0x220100b0 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`INTR_SRC_ADDR_4`            | 0xb4     | 0x220100b4 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`INTR_SRC_ADDR_5`            | 0xb8     | 0x220100b8 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`INTR_SRC_ADDR_6`            | 0xbc     | 0x220100bc | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`INTR_SRC_ADDR_7`            | 0xc0     | 0x220100c0 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`INTR_SRC_ADDR_8`            | 0xc4     | 0x220100c4 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`INTR_SRC_ADDR_9`            | 0xc8     | 0x220100c8 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`INTR_SRC_ADDR_10`           | 0xcc     | 0x220100cc | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`INTR_SRC_WR_VAL_0`          | 0x124    | 0x22010124 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`INTR_SRC_WR_VAL_1`          | 0x128    | 0x22010128 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`INTR_SRC_WR_VAL_2`          | 0x12c    | 0x2201012c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`INTR_SRC_WR_VAL_3`          | 0x130    | 0x22010130 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`INTR_SRC_WR_VAL_4`          | 0x134    | 0x22010134 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`INTR_SRC_WR_VAL_5`          | 0x138    | 0x22010138 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`INTR_SRC_WR_VAL_6`          | 0x13c    | 0x2201013c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`INTR_SRC_WR_VAL_7`          | 0x140    | 0x22010140 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`INTR_SRC_WR_VAL_8`          | 0x144    | 0x22010144 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`INTR_SRC_WR_VAL_9`          | 0x148    | 0x22010148 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| dma.`INTR_SRC_WR_VAL_10`         | 0x14c    | 0x2201014c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |

### RACL configuration for `mbx0` and interface `core`

- IP: mbx
- Instance base address: 0x22000000
- RACL group: Null


| Name                               | Offset   | Address    | Width   | Policy                 | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:-----------------------------------|:---------|:-----------|:--------|:-----------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx0.core.`INTR_STATE`             | 0x0      | 0x22000000 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx0.core.`INTR_ENABLE`            | 0x4      | 0x22000004 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx0.core.`INTR_TEST`              | 0x8      | 0x22000008 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx0.core.`ALERT_TEST`             | 0xc      | 0x2200000c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx0.core.`CONTROL`                | 0x10     | 0x22000010 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx0.core.`STATUS`                 | 0x14     | 0x22000014 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx0.core.`ADDRESS_RANGE_REGWEN`   | 0x18     | 0x22000018 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx0.core.`ADDRESS_RANGE_VALID`    | 0x1c     | 0x2200001c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx0.core.`INBOUND_BASE_ADDRESS`   | 0x20     | 0x22000020 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx0.core.`INBOUND_LIMIT_ADDRESS`  | 0x24     | 0x22000024 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx0.core.`INBOUND_WRITE_PTR`      | 0x28     | 0x22000028 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx0.core.`OUTBOUND_BASE_ADDRESS`  | 0x2c     | 0x2200002c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx0.core.`OUTBOUND_LIMIT_ADDRESS` | 0x30     | 0x22000030 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx0.core.`OUTBOUND_READ_PTR`      | 0x34     | 0x22000034 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx0.core.`OUTBOUND_OBJECT_SIZE`   | 0x38     | 0x22000038 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx0.core.`DOE_INTR_MSG_ADDR`      | 0x3c     | 0x2200003c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx0.core.`DOE_INTR_MSG_DATA`      | 0x40     | 0x22000040 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |

### RACL configuration for `mbx0` and interface `soc`

- IP: mbx
- Instance base address: 0x1485000
- RACL group: Null


| Name                             | Offset   | Address   | Width   | Policy                 | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:---------------------------------|:---------|:----------|:--------|:-----------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx0.soc.`SOC_CONTROL`           | 0x8      | 0x1485008 | 0x4     | 8 (mio_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx0.soc.`SOC_STATUS`            | 0xc      | 0x148500c | 0x4     | 8 (mio_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx0.soc.`WDATA`                 | 0x10     | 0x1485010 | 0x4     | 8 (mio_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx0.soc.`RDATA`                 | 0x14     | 0x1485014 | 0x4     | 8 (mio_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx0.soc.`SOC_DOE_INTR_MSG_ADDR` | 0x18     | 0x1485018 | 0x4     | 8 (mio_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx0.soc.`SOC_DOE_INTR_MSG_DATA` | 0x1c     | 0x148501c | 0x4     | 8 (mio_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |

### RACL configuration for `mbx1` and interface `core`

- IP: mbx
- Instance base address: 0x22000100
- RACL group: Null


| Name                               | Offset   | Address    | Width   | Policy                 | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:-----------------------------------|:---------|:-----------|:--------|:-----------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx1.core.`INTR_STATE`             | 0x0      | 0x22000100 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx1.core.`INTR_ENABLE`            | 0x4      | 0x22000104 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx1.core.`INTR_TEST`              | 0x8      | 0x22000108 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx1.core.`ALERT_TEST`             | 0xc      | 0x2200010c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx1.core.`CONTROL`                | 0x10     | 0x22000110 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx1.core.`STATUS`                 | 0x14     | 0x22000114 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx1.core.`ADDRESS_RANGE_REGWEN`   | 0x18     | 0x22000118 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx1.core.`ADDRESS_RANGE_VALID`    | 0x1c     | 0x2200011c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx1.core.`INBOUND_BASE_ADDRESS`   | 0x20     | 0x22000120 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx1.core.`INBOUND_LIMIT_ADDRESS`  | 0x24     | 0x22000124 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx1.core.`INBOUND_WRITE_PTR`      | 0x28     | 0x22000128 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx1.core.`OUTBOUND_BASE_ADDRESS`  | 0x2c     | 0x2200012c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx1.core.`OUTBOUND_LIMIT_ADDRESS` | 0x30     | 0x22000130 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx1.core.`OUTBOUND_READ_PTR`      | 0x34     | 0x22000134 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx1.core.`OUTBOUND_OBJECT_SIZE`   | 0x38     | 0x22000138 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx1.core.`DOE_INTR_MSG_ADDR`      | 0x3c     | 0x2200013c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx1.core.`DOE_INTR_MSG_DATA`      | 0x40     | 0x22000140 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |

### RACL configuration for `mbx1` and interface `soc`

- IP: mbx
- Instance base address: 0x1485100
- RACL group: Null


| Name                             | Offset   | Address   | Width   | Policy                 | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:---------------------------------|:---------|:----------|:--------|:-----------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx1.soc.`SOC_CONTROL`           | 0x8      | 0x1485108 | 0x4     | 8 (mio_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx1.soc.`SOC_STATUS`            | 0xc      | 0x148510c | 0x4     | 8 (mio_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx1.soc.`WDATA`                 | 0x10     | 0x1485110 | 0x4     | 8 (mio_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx1.soc.`RDATA`                 | 0x14     | 0x1485114 | 0x4     | 8 (mio_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx1.soc.`SOC_DOE_INTR_MSG_ADDR` | 0x18     | 0x1485118 | 0x4     | 8 (mio_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx1.soc.`SOC_DOE_INTR_MSG_DATA` | 0x1c     | 0x148511c | 0x4     | 8 (mio_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |

### RACL configuration for `mbx2` and interface `core`

- IP: mbx
- Instance base address: 0x22000200
- RACL group: Null


| Name                               | Offset   | Address    | Width   | Policy                 | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:-----------------------------------|:---------|:-----------|:--------|:-----------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx2.core.`INTR_STATE`             | 0x0      | 0x22000200 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx2.core.`INTR_ENABLE`            | 0x4      | 0x22000204 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx2.core.`INTR_TEST`              | 0x8      | 0x22000208 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx2.core.`ALERT_TEST`             | 0xc      | 0x2200020c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx2.core.`CONTROL`                | 0x10     | 0x22000210 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx2.core.`STATUS`                 | 0x14     | 0x22000214 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx2.core.`ADDRESS_RANGE_REGWEN`   | 0x18     | 0x22000218 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx2.core.`ADDRESS_RANGE_VALID`    | 0x1c     | 0x2200021c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx2.core.`INBOUND_BASE_ADDRESS`   | 0x20     | 0x22000220 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx2.core.`INBOUND_LIMIT_ADDRESS`  | 0x24     | 0x22000224 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx2.core.`INBOUND_WRITE_PTR`      | 0x28     | 0x22000228 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx2.core.`OUTBOUND_BASE_ADDRESS`  | 0x2c     | 0x2200022c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx2.core.`OUTBOUND_LIMIT_ADDRESS` | 0x30     | 0x22000230 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx2.core.`OUTBOUND_READ_PTR`      | 0x34     | 0x22000234 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx2.core.`OUTBOUND_OBJECT_SIZE`   | 0x38     | 0x22000238 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx2.core.`DOE_INTR_MSG_ADDR`      | 0x3c     | 0x2200023c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx2.core.`DOE_INTR_MSG_DATA`      | 0x40     | 0x22000240 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |

### RACL configuration for `mbx2` and interface `soc`

- IP: mbx
- Instance base address: 0x1485200
- RACL group: Null


| Name                             | Offset   | Address   | Width   | Policy                 | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:---------------------------------|:---------|:----------|:--------|:-----------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx2.soc.`SOC_CONTROL`           | 0x8      | 0x1485208 | 0x4     | 8 (mio_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx2.soc.`SOC_STATUS`            | 0xc      | 0x148520c | 0x4     | 8 (mio_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx2.soc.`WDATA`                 | 0x10     | 0x1485210 | 0x4     | 8 (mio_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx2.soc.`RDATA`                 | 0x14     | 0x1485214 | 0x4     | 8 (mio_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx2.soc.`SOC_DOE_INTR_MSG_ADDR` | 0x18     | 0x1485218 | 0x4     | 8 (mio_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx2.soc.`SOC_DOE_INTR_MSG_DATA` | 0x1c     | 0x148521c | 0x4     | 8 (mio_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |

### RACL configuration for `mbx3` and interface `core`

- IP: mbx
- Instance base address: 0x22000300
- RACL group: Null


| Name                               | Offset   | Address    | Width   | Policy                 | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:-----------------------------------|:---------|:-----------|:--------|:-----------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx3.core.`INTR_STATE`             | 0x0      | 0x22000300 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx3.core.`INTR_ENABLE`            | 0x4      | 0x22000304 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx3.core.`INTR_TEST`              | 0x8      | 0x22000308 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx3.core.`ALERT_TEST`             | 0xc      | 0x2200030c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx3.core.`CONTROL`                | 0x10     | 0x22000310 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx3.core.`STATUS`                 | 0x14     | 0x22000314 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx3.core.`ADDRESS_RANGE_REGWEN`   | 0x18     | 0x22000318 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx3.core.`ADDRESS_RANGE_VALID`    | 0x1c     | 0x2200031c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx3.core.`INBOUND_BASE_ADDRESS`   | 0x20     | 0x22000320 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx3.core.`INBOUND_LIMIT_ADDRESS`  | 0x24     | 0x22000324 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx3.core.`INBOUND_WRITE_PTR`      | 0x28     | 0x22000328 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx3.core.`OUTBOUND_BASE_ADDRESS`  | 0x2c     | 0x2200032c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx3.core.`OUTBOUND_LIMIT_ADDRESS` | 0x30     | 0x22000330 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx3.core.`OUTBOUND_READ_PTR`      | 0x34     | 0x22000334 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx3.core.`OUTBOUND_OBJECT_SIZE`   | 0x38     | 0x22000338 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx3.core.`DOE_INTR_MSG_ADDR`      | 0x3c     | 0x2200033c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx3.core.`DOE_INTR_MSG_DATA`      | 0x40     | 0x22000340 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |

### RACL configuration for `mbx3` and interface `soc`

- IP: mbx
- Instance base address: 0x1485300
- RACL group: Null


| Name                             | Offset   | Address   | Width   | Policy                 | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:---------------------------------|:---------|:----------|:--------|:-----------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx3.soc.`SOC_CONTROL`           | 0x8      | 0x1485308 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx3.soc.`SOC_STATUS`            | 0xc      | 0x148530c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx3.soc.`WDATA`                 | 0x10     | 0x1485310 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx3.soc.`RDATA`                 | 0x14     | 0x1485314 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx3.soc.`SOC_DOE_INTR_MSG_ADDR` | 0x18     | 0x1485318 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx3.soc.`SOC_DOE_INTR_MSG_DATA` | 0x1c     | 0x148531c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |

### RACL configuration for `mbx4` and interface `core`

- IP: mbx
- Instance base address: 0x22000400
- RACL group: Null


| Name                               | Offset   | Address    | Width   | Policy                 | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:-----------------------------------|:---------|:-----------|:--------|:-----------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx4.core.`INTR_STATE`             | 0x0      | 0x22000400 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx4.core.`INTR_ENABLE`            | 0x4      | 0x22000404 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx4.core.`INTR_TEST`              | 0x8      | 0x22000408 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx4.core.`ALERT_TEST`             | 0xc      | 0x2200040c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx4.core.`CONTROL`                | 0x10     | 0x22000410 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx4.core.`STATUS`                 | 0x14     | 0x22000414 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx4.core.`ADDRESS_RANGE_REGWEN`   | 0x18     | 0x22000418 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx4.core.`ADDRESS_RANGE_VALID`    | 0x1c     | 0x2200041c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx4.core.`INBOUND_BASE_ADDRESS`   | 0x20     | 0x22000420 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx4.core.`INBOUND_LIMIT_ADDRESS`  | 0x24     | 0x22000424 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx4.core.`INBOUND_WRITE_PTR`      | 0x28     | 0x22000428 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx4.core.`OUTBOUND_BASE_ADDRESS`  | 0x2c     | 0x2200042c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx4.core.`OUTBOUND_LIMIT_ADDRESS` | 0x30     | 0x22000430 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx4.core.`OUTBOUND_READ_PTR`      | 0x34     | 0x22000434 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx4.core.`OUTBOUND_OBJECT_SIZE`   | 0x38     | 0x22000438 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx4.core.`DOE_INTR_MSG_ADDR`      | 0x3c     | 0x2200043c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx4.core.`DOE_INTR_MSG_DATA`      | 0x40     | 0x22000440 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |

### RACL configuration for `mbx4` and interface `soc`

- IP: mbx
- Instance base address: 0x1485400
- RACL group: Null


| Name                             | Offset   | Address   | Width   | Policy                 | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:---------------------------------|:---------|:----------|:--------|:-----------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx4.soc.`SOC_CONTROL`           | 0x8      | 0x1485408 | 0x4     | 7 (pwc_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx4.soc.`SOC_STATUS`            | 0xc      | 0x148540c | 0x4     | 7 (pwc_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx4.soc.`WDATA`                 | 0x10     | 0x1485410 | 0x4     | 7 (pwc_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx4.soc.`RDATA`                 | 0x14     | 0x1485414 | 0x4     | 7 (pwc_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx4.soc.`SOC_DOE_INTR_MSG_ADDR` | 0x18     | 0x1485418 | 0x4     | 7 (pwc_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx4.soc.`SOC_DOE_INTR_MSG_DATA` | 0x1c     | 0x148541c | 0x4     | 7 (pwc_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |

### RACL configuration for `mbx5` and interface `core`

- IP: mbx
- Instance base address: 0x22000500
- RACL group: Null


| Name                               | Offset   | Address    | Width   | Policy                 | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:-----------------------------------|:---------|:-----------|:--------|:-----------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx5.core.`INTR_STATE`             | 0x0      | 0x22000500 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx5.core.`INTR_ENABLE`            | 0x4      | 0x22000504 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx5.core.`INTR_TEST`              | 0x8      | 0x22000508 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx5.core.`ALERT_TEST`             | 0xc      | 0x2200050c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx5.core.`CONTROL`                | 0x10     | 0x22000510 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx5.core.`STATUS`                 | 0x14     | 0x22000514 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx5.core.`ADDRESS_RANGE_REGWEN`   | 0x18     | 0x22000518 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx5.core.`ADDRESS_RANGE_VALID`    | 0x1c     | 0x2200051c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx5.core.`INBOUND_BASE_ADDRESS`   | 0x20     | 0x22000520 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx5.core.`INBOUND_LIMIT_ADDRESS`  | 0x24     | 0x22000524 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx5.core.`INBOUND_WRITE_PTR`      | 0x28     | 0x22000528 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx5.core.`OUTBOUND_BASE_ADDRESS`  | 0x2c     | 0x2200052c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx5.core.`OUTBOUND_LIMIT_ADDRESS` | 0x30     | 0x22000530 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx5.core.`OUTBOUND_READ_PTR`      | 0x34     | 0x22000534 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx5.core.`OUTBOUND_OBJECT_SIZE`   | 0x38     | 0x22000538 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx5.core.`DOE_INTR_MSG_ADDR`      | 0x3c     | 0x2200053c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx5.core.`DOE_INTR_MSG_DATA`      | 0x40     | 0x22000540 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |

### RACL configuration for `mbx5` and interface `soc`

- IP: mbx
- Instance base address: 0x1485500
- RACL group: Null


| Name                             | Offset   | Address   | Width   | Policy                 | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:---------------------------------|:---------|:----------|:--------|:-----------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx5.soc.`SOC_CONTROL`           | 0x8      | 0x1485508 | 0x4     | 9 (duc_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | R / W    | R / W         |
| mbx5.soc.`SOC_STATUS`            | 0xc      | 0x148550c | 0x4     | 9 (duc_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | R / W    | R / W         |
| mbx5.soc.`WDATA`                 | 0x10     | 0x1485510 | 0x4     | 9 (duc_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | R / W    | R / W         |
| mbx5.soc.`RDATA`                 | 0x14     | 0x1485514 | 0x4     | 9 (duc_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | R / W    | R / W         |
| mbx5.soc.`SOC_DOE_INTR_MSG_ADDR` | 0x18     | 0x1485518 | 0x4     | 9 (duc_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | R / W    | R / W         |
| mbx5.soc.`SOC_DOE_INTR_MSG_DATA` | 0x1c     | 0x148551c | 0x4     | 9 (duc_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | R / W    | R / W         |

### RACL configuration for `mbx_pcie0` and interface `core`

- IP: mbx
- Instance base address: 0x22040000
- RACL group: Null


| Name                                    | Offset   | Address    | Width   | Policy                 | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:----------------------------------------|:---------|:-----------|:--------|:-----------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx_pcie0.core.`INTR_STATE`             | 0x0      | 0x22040000 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.core.`INTR_ENABLE`            | 0x4      | 0x22040004 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.core.`INTR_TEST`              | 0x8      | 0x22040008 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.core.`ALERT_TEST`             | 0xc      | 0x2204000c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx_pcie0.core.`CONTROL`                | 0x10     | 0x22040010 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.core.`STATUS`                 | 0x14     | 0x22040014 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.core.`ADDRESS_RANGE_REGWEN`   | 0x18     | 0x22040018 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.core.`ADDRESS_RANGE_VALID`    | 0x1c     | 0x2204001c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.core.`INBOUND_BASE_ADDRESS`   | 0x20     | 0x22040020 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.core.`INBOUND_LIMIT_ADDRESS`  | 0x24     | 0x22040024 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.core.`INBOUND_WRITE_PTR`      | 0x28     | 0x22040028 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.core.`OUTBOUND_BASE_ADDRESS`  | 0x2c     | 0x2204002c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.core.`OUTBOUND_LIMIT_ADDRESS` | 0x30     | 0x22040030 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.core.`OUTBOUND_READ_PTR`      | 0x34     | 0x22040034 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.core.`OUTBOUND_OBJECT_SIZE`   | 0x38     | 0x22040038 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.core.`DOE_INTR_MSG_ADDR`      | 0x3c     | 0x2204003c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.core.`DOE_INTR_MSG_DATA`      | 0x40     | 0x22040040 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |

### RACL configuration for `mbx_pcie0` and interface `soc`

- IP: mbx
- Instance base address: 0x1480100
- RACL group: Null


| Name                                  | Offset   | Address   | Width   | Policy               | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:--------------------------------------|:---------|:----------|:--------|:---------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx_pcie0.soc.`SOC_CONTROL`           | 0x8      | 0x1480108 | 0x4     | 0 (all_rd_wr_policy) | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.soc.`SOC_STATUS`            | 0xc      | 0x148010c | 0x4     | 0 (all_rd_wr_policy) | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.soc.`WDATA`                 | 0x10     | 0x1480110 | 0x4     | 0 (all_rd_wr_policy) | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.soc.`RDATA`                 | 0x14     | 0x1480114 | 0x4     | 0 (all_rd_wr_policy) | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.soc.`SOC_DOE_INTR_MSG_ADDR` | 0x18     | 0x1480118 | 0x4     | 0 (all_rd_wr_policy) | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.soc.`SOC_DOE_INTR_MSG_DATA` | 0x1c     | 0x148011c | 0x4     | 0 (all_rd_wr_policy) | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |

### RACL configuration for `ac_range_check` and interface `null`

- IP: ac_range_check_mio
- Instance base address: 0x1484000
- RACL group: Null


| Name                                           | Offset   | Address   | Width   | Policy                 | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:-----------------------------------------------|:---------|:----------|:--------|:-----------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| ac_range_check.`INTR_STATE`                    | 0x0      | 0x1484000 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`INTR_ENABLE`                   | 0x4      | 0x1484004 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`INTR_TEST`                     | 0x8      | 0x1484008 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`ALERT_TEST`                    | 0xc      | 0x148400c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`ALERT_STATUS`                  | 0x10     | 0x1484010 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`LOG_CONFIG`                    | 0x14     | 0x1484014 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`LOG_STATUS`                    | 0x18     | 0x1484018 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`LOG_ADDRESS`                   | 0x1c     | 0x148401c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_0`                | 0x20     | 0x1484020 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_1`                | 0x24     | 0x1484024 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_2`                | 0x28     | 0x1484028 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_3`                | 0x2c     | 0x148402c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_4`                | 0x30     | 0x1484030 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_5`                | 0x34     | 0x1484034 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_6`                | 0x38     | 0x1484038 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_7`                | 0x3c     | 0x148403c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_8`                | 0x40     | 0x1484040 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_9`                | 0x44     | 0x1484044 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_10`               | 0x48     | 0x1484048 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_11`               | 0x4c     | 0x148404c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_12`               | 0x50     | 0x1484050 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_13`               | 0x54     | 0x1484054 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_14`               | 0x58     | 0x1484058 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_15`               | 0x5c     | 0x148405c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_16`               | 0x60     | 0x1484060 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_17`               | 0x64     | 0x1484064 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_18`               | 0x68     | 0x1484068 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_19`               | 0x6c     | 0x148406c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_20`               | 0x70     | 0x1484070 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_21`               | 0x74     | 0x1484074 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_22`               | 0x78     | 0x1484078 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_23`               | 0x7c     | 0x148407c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_24`               | 0x80     | 0x1484080 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_25`               | 0x84     | 0x1484084 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_26`               | 0x88     | 0x1484088 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_27`               | 0x8c     | 0x148408c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_28`               | 0x90     | 0x1484090 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_29`               | 0x94     | 0x1484094 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_30`               | 0x98     | 0x1484098 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_REGWEN_31`               | 0x9c     | 0x148409c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_0`                  | 0xa0     | 0x14840a0 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_1`                  | 0xa4     | 0x14840a4 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_2`                  | 0xa8     | 0x14840a8 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_3`                  | 0xac     | 0x14840ac | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_4`                  | 0xb0     | 0x14840b0 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_5`                  | 0xb4     | 0x14840b4 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_6`                  | 0xb8     | 0x14840b8 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_7`                  | 0xbc     | 0x14840bc | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_8`                  | 0xc0     | 0x14840c0 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_9`                  | 0xc4     | 0x14840c4 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_10`                 | 0xc8     | 0x14840c8 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_11`                 | 0xcc     | 0x14840cc | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_12`                 | 0xd0     | 0x14840d0 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_13`                 | 0xd4     | 0x14840d4 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_14`                 | 0xd8     | 0x14840d8 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_15`                 | 0xdc     | 0x14840dc | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_16`                 | 0xe0     | 0x14840e0 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_17`                 | 0xe4     | 0x14840e4 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_18`                 | 0xe8     | 0x14840e8 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_19`                 | 0xec     | 0x14840ec | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_20`                 | 0xf0     | 0x14840f0 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_21`                 | 0xf4     | 0x14840f4 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_22`                 | 0xf8     | 0x14840f8 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_23`                 | 0xfc     | 0x14840fc | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_24`                 | 0x100    | 0x1484100 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_25`                 | 0x104    | 0x1484104 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_26`                 | 0x108    | 0x1484108 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_27`                 | 0x10c    | 0x148410c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_28`                 | 0x110    | 0x1484110 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_29`                 | 0x114    | 0x1484114 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_30`                 | 0x118    | 0x1484118 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_BASE_31`                 | 0x11c    | 0x148411c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_0`                 | 0x120    | 0x1484120 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_1`                 | 0x124    | 0x1484124 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_2`                 | 0x128    | 0x1484128 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_3`                 | 0x12c    | 0x148412c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_4`                 | 0x130    | 0x1484130 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_5`                 | 0x134    | 0x1484134 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_6`                 | 0x138    | 0x1484138 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_7`                 | 0x13c    | 0x148413c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_8`                 | 0x140    | 0x1484140 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_9`                 | 0x144    | 0x1484144 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_10`                | 0x148    | 0x1484148 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_11`                | 0x14c    | 0x148414c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_12`                | 0x150    | 0x1484150 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_13`                | 0x154    | 0x1484154 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_14`                | 0x158    | 0x1484158 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_15`                | 0x15c    | 0x148415c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_16`                | 0x160    | 0x1484160 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_17`                | 0x164    | 0x1484164 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_18`                | 0x168    | 0x1484168 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_19`                | 0x16c    | 0x148416c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_20`                | 0x170    | 0x1484170 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_21`                | 0x174    | 0x1484174 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_22`                | 0x178    | 0x1484178 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_23`                | 0x17c    | 0x148417c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_24`                | 0x180    | 0x1484180 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_25`                | 0x184    | 0x1484184 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_26`                | 0x188    | 0x1484188 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_27`                | 0x18c    | 0x148418c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_28`                | 0x190    | 0x1484190 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_29`                | 0x194    | 0x1484194 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_30`                | 0x198    | 0x1484198 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_LIMIT_31`                | 0x19c    | 0x148419c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_0`                  | 0x1a0    | 0x14841a0 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_1`                  | 0x1a4    | 0x14841a4 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_2`                  | 0x1a8    | 0x14841a8 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_3`                  | 0x1ac    | 0x14841ac | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_4`                  | 0x1b0    | 0x14841b0 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_5`                  | 0x1b4    | 0x14841b4 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_6`                  | 0x1b8    | 0x14841b8 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_7`                  | 0x1bc    | 0x14841bc | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_8`                  | 0x1c0    | 0x14841c0 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_9`                  | 0x1c4    | 0x14841c4 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_10`                 | 0x1c8    | 0x14841c8 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_11`                 | 0x1cc    | 0x14841cc | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_12`                 | 0x1d0    | 0x14841d0 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_13`                 | 0x1d4    | 0x14841d4 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_14`                 | 0x1d8    | 0x14841d8 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_15`                 | 0x1dc    | 0x14841dc | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_16`                 | 0x1e0    | 0x14841e0 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_17`                 | 0x1e4    | 0x14841e4 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_18`                 | 0x1e8    | 0x14841e8 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_19`                 | 0x1ec    | 0x14841ec | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_20`                 | 0x1f0    | 0x14841f0 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_21`                 | 0x1f4    | 0x14841f4 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_22`                 | 0x1f8    | 0x14841f8 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_23`                 | 0x1fc    | 0x14841fc | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_24`                 | 0x200    | 0x1484200 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_25`                 | 0x204    | 0x1484204 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_26`                 | 0x208    | 0x1484208 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_27`                 | 0x20c    | 0x148420c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_28`                 | 0x210    | 0x1484210 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_29`                 | 0x214    | 0x1484214 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_30`                 | 0x218    | 0x1484218 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_ATTR_31`                 | 0x21c    | 0x148421c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_0`  | 0x220    | 0x1484220 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_1`  | 0x224    | 0x1484224 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_2`  | 0x228    | 0x1484228 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_3`  | 0x22c    | 0x148422c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_4`  | 0x230    | 0x1484230 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_5`  | 0x234    | 0x1484234 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_6`  | 0x238    | 0x1484238 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_7`  | 0x23c    | 0x148423c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_8`  | 0x240    | 0x1484240 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_9`  | 0x244    | 0x1484244 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_10` | 0x248    | 0x1484248 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_11` | 0x24c    | 0x148424c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_12` | 0x250    | 0x1484250 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_13` | 0x254    | 0x1484254 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_14` | 0x258    | 0x1484258 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_15` | 0x25c    | 0x148425c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_16` | 0x260    | 0x1484260 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_17` | 0x264    | 0x1484264 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_18` | 0x268    | 0x1484268 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_19` | 0x26c    | 0x148426c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_20` | 0x270    | 0x1484270 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_21` | 0x274    | 0x1484274 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_22` | 0x278    | 0x1484278 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_23` | 0x27c    | 0x148427c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_24` | 0x280    | 0x1484280 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_25` | 0x284    | 0x1484284 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_26` | 0x288    | 0x1484288 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_27` | 0x28c    | 0x148428c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_28` | 0x290    | 0x1484290 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_29` | 0x294    | 0x1484294 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_30` | 0x298    | 0x1484298 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| ac_range_check.`RANGE_RACL_POLICY_SHADOWED_31` | 0x29c    | 0x148429c | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |

### RACL configuration for `rv_core_ibex_mio` and interface `cfg`

- IP: rv_core_ibex_mio
- Instance base address: 0x211f0000
- RACL group: Null


| Name                                        | Offset   | Address    | Width   | Policy                 | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:--------------------------------------------|:---------|:-----------|:--------|:-----------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| rv_core_ibex_mio.cfg.`ALERT_TEST`           | 0x0      | 0x211f0000 | 0x4     | 6 (rot_private_policy) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| rv_core_ibex_mio.cfg.`SW_RECOV_ERR`         | 0x4      | 0x211f0004 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_core_ibex_mio.cfg.`SW_FATAL_ERR`         | 0x8      | 0x211f0008 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_core_ibex_mio.cfg.`IBUS_REGWEN_0`        | 0xc      | 0x211f000c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_core_ibex_mio.cfg.`IBUS_REGWEN_1`        | 0x10     | 0x211f0010 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_core_ibex_mio.cfg.`IBUS_ADDR_EN_0`       | 0x14     | 0x211f0014 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_core_ibex_mio.cfg.`IBUS_ADDR_EN_1`       | 0x18     | 0x211f0018 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_core_ibex_mio.cfg.`IBUS_ADDR_MATCHING_0` | 0x1c     | 0x211f001c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_core_ibex_mio.cfg.`IBUS_ADDR_MATCHING_1` | 0x20     | 0x211f0020 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_core_ibex_mio.cfg.`IBUS_REMAP_ADDR_0`    | 0x24     | 0x211f0024 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_core_ibex_mio.cfg.`IBUS_REMAP_ADDR_1`    | 0x28     | 0x211f0028 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_core_ibex_mio.cfg.`DBUS_REGWEN_0`        | 0x2c     | 0x211f002c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_core_ibex_mio.cfg.`DBUS_REGWEN_1`        | 0x30     | 0x211f0030 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_core_ibex_mio.cfg.`DBUS_ADDR_EN_0`       | 0x34     | 0x211f0034 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_core_ibex_mio.cfg.`DBUS_ADDR_EN_1`       | 0x38     | 0x211f0038 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_core_ibex_mio.cfg.`DBUS_ADDR_MATCHING_0` | 0x3c     | 0x211f003c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_core_ibex_mio.cfg.`DBUS_ADDR_MATCHING_1` | 0x40     | 0x211f0040 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_core_ibex_mio.cfg.`DBUS_REMAP_ADDR_0`    | 0x44     | 0x211f0044 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_core_ibex_mio.cfg.`DBUS_REMAP_ADDR_1`    | 0x48     | 0x211f0048 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_core_ibex_mio.cfg.`NMI_ENABLE`           | 0x4c     | 0x211f004c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_core_ibex_mio.cfg.`NMI_STATE`            | 0x50     | 0x211f0050 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_core_ibex_mio.cfg.`ERR_STATUS`           | 0x54     | 0x211f0054 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_core_ibex_mio.cfg.`RND_DATA`             | 0x58     | 0x211f0058 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_core_ibex_mio.cfg.`RND_STATUS`           | 0x5c     | 0x211f005c | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_core_ibex_mio.cfg.`FPGA_INFO`            | 0x60     | 0x211f0060 | 0x4     | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| rv_core_ibex_mio.cfg.`DV_SIM_WINDOW`        | 0x440    | 0x211f0440 | 0x20    | 0 (all_rd_wr_policy)   | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |


<!-- END CMDGEN -->
