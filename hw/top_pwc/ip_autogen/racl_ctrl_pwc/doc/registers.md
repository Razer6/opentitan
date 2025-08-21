# Registers

<!-- BEGIN CMDGEN util/regtool.py -d ./hw/top_pwc/ip_autogen/racl_ctrl_pwc/data/racl_ctrl_pwc.hjson -->
## Summary

| Name                                                                                                        | Offset   |   Length | Description                                                                               |
|:------------------------------------------------------------------------------------------------------------|:---------|---------:|:------------------------------------------------------------------------------------------|
| racl_ctrl_pwc.[`POLICY_ALL_RD_WR_POLICY_SHADOWED`](#policy_all_rd_wr_policy_shadowed)                       | 0x0      |        4 | Read and write policy for all_rd_wr_policy                                                |
| racl_ctrl_pwc.[`POLICY_HW_ROT_PWC_WR_ALL_RD_POLICY_SHADOWED`](#policy_hw_rot_pwc_wr_all_rd_policy_shadowed) | 0x8      |        4 | Read and write policy for hw_rot_pwc_wr_all_rd_policy                                     |
| racl_ctrl_pwc.[`POLICY_PRE_BOOT_M_POLICY_SHADOWED`](#policy_pre_boot_m_policy_shadowed)                     | 0x10     |        4 | Read and write policy for pre_boot_m_policy                                               |
| racl_ctrl_pwc.[`POLICY_POST_BOOT_M_POLICY_SHADOWED`](#policy_post_boot_m_policy_shadowed)                   | 0x18     |        4 | Read and write policy for post_boot_m_policy                                              |
| racl_ctrl_pwc.[`POLICY_TEE_LIMITED_POLICY_SHADOWED`](#policy_tee_limited_policy_shadowed)                   | 0x20     |        4 | Read and write policy for tee_limited_policy                                              |
| racl_ctrl_pwc.[`POLICY_RCODE_PRIVATE_POLICY_SHADOWED`](#policy_rcode_private_policy_shadowed)               | 0x28     |        4 | Read and write policy for rcode_private_policy                                            |
| racl_ctrl_pwc.[`POLICY_ROT_PRIVATE_POLICY_SHADOWED`](#policy_rot_private_policy_shadowed)                   | 0x30     |        4 | Read and write policy for rot_private_policy                                              |
| racl_ctrl_pwc.[`POLICY_PWC_PRIVATE_POLICY_SHADOWED`](#policy_pwc_private_policy_shadowed)                   | 0x38     |        4 | Read and write policy for pwc_private_policy                                              |
| racl_ctrl_pwc.[`POLICY_MIO_PRIVATE_POLICY_SHADOWED`](#policy_mio_private_policy_shadowed)                   | 0x40     |        4 | Read and write policy for mio_private_policy                                              |
| racl_ctrl_pwc.[`POLICY_DUC_PRIVATE_POLICY_SHADOWED`](#policy_duc_private_policy_shadowed)                   | 0x48     |        4 | Read and write policy for duc_private_policy                                              |
| racl_ctrl_pwc.[`INTR_STATE`](#intr_state)                                                                   | 0xe8     |        4 | Interrupt State Register                                                                  |
| racl_ctrl_pwc.[`INTR_ENABLE`](#intr_enable)                                                                 | 0xec     |        4 | Interrupt Enable Register                                                                 |
| racl_ctrl_pwc.[`INTR_TEST`](#intr_test)                                                                     | 0xf0     |        4 | Interrupt Test Register                                                                   |
| racl_ctrl_pwc.[`ALERT_TEST`](#alert_test)                                                                   | 0xf4     |        4 | Alert Test Register.                                                                      |
| racl_ctrl_pwc.[`ERROR_LOG`](#error_log)                                                                     | 0xf8     |        4 | Error logging registers                                                                   |
| racl_ctrl_pwc.[`ERROR_LOG_ADDRESS`](#error_log_address)                                                     | 0xfc     |        4 | Contains the bits [top_pkg::TL_AW-1:2] of the address on which a RACL violation occurred. |

## POLICY_ALL_RD_WR_POLICY_SHADOWED
Read and write policy for all_rd_wr_policy
- Offset: `0x0`
- Reset default: `0x3fff3fff`
- Reset mask: `0xffffffff`

### Fields

```wavejson
{"reg": [{"name": "read_perm", "bits": 16, "attr": ["rw"], "rotate": 0}, {"name": "write_perm", "bits": 16, "attr": ["rw"], "rotate": 0}], "config": {"lanes": 1, "fontsize": 10, "vspace": 80}}
```

|  Bits  |  Type  |  Reset  | Name       | Description                                  |
|:------:|:------:|:-------:|:-----------|:---------------------------------------------|
| 31:16  |   rw   | 0x3fff  | write_perm | Write permission for policy all_rd_wr_policy |
|  15:0  |   rw   | 0x3fff  | read_perm  | Read permission for policy all_rd_wr_policy  |

## POLICY_HW_ROT_PWC_WR_ALL_RD_POLICY_SHADOWED
Read and write policy for hw_rot_pwc_wr_all_rd_policy
- Offset: `0x8`
- Reset default: `0x3603fff`
- Reset mask: `0xffffffff`

### Fields

```wavejson
{"reg": [{"name": "read_perm", "bits": 16, "attr": ["rw"], "rotate": 0}, {"name": "write_perm", "bits": 16, "attr": ["rw"], "rotate": 0}], "config": {"lanes": 1, "fontsize": 10, "vspace": 80}}
```

|  Bits  |  Type  |  Reset  | Name       | Description                                             |
|:------:|:------:|:-------:|:-----------|:--------------------------------------------------------|
| 31:16  |   rw   |  0x360  | write_perm | Write permission for policy hw_rot_pwc_wr_all_rd_policy |
|  15:0  |   rw   | 0x3fff  | read_perm  | Read permission for policy hw_rot_pwc_wr_all_rd_policy  |

## POLICY_PRE_BOOT_M_POLICY_SHADOWED
Read and write policy for pre_boot_m_policy
- Offset: `0x10`
- Reset default: `0x37a03ff`
- Reset mask: `0xffffffff`

### Fields

```wavejson
{"reg": [{"name": "read_perm", "bits": 16, "attr": ["rw"], "rotate": 0}, {"name": "write_perm", "bits": 16, "attr": ["rw"], "rotate": 0}], "config": {"lanes": 1, "fontsize": 10, "vspace": 80}}
```

|  Bits  |  Type  |  Reset  | Name       | Description                                   |
|:------:|:------:|:-------:|:-----------|:----------------------------------------------|
| 31:16  |   rw   |  0x37a  | write_perm | Write permission for policy pre_boot_m_policy |
|  15:0  |   rw   |  0x3ff  | read_perm  | Read permission for policy pre_boot_m_policy  |

## POLICY_POST_BOOT_M_POLICY_SHADOWED
Read and write policy for post_boot_m_policy
- Offset: `0x18`
- Reset default: `0x37a03ff`
- Reset mask: `0xffffffff`

### Fields

```wavejson
{"reg": [{"name": "read_perm", "bits": 16, "attr": ["rw"], "rotate": 0}, {"name": "write_perm", "bits": 16, "attr": ["rw"], "rotate": 0}], "config": {"lanes": 1, "fontsize": 10, "vspace": 80}}
```

|  Bits  |  Type  |  Reset  | Name       | Description                                    |
|:------:|:------:|:-------:|:-----------|:-----------------------------------------------|
| 31:16  |   rw   |  0x37a  | write_perm | Write permission for policy post_boot_m_policy |
|  15:0  |   rw   |  0x3ff  | read_perm  | Read permission for policy post_boot_m_policy  |

## POLICY_TEE_LIMITED_POLICY_SHADOWED
Read and write policy for tee_limited_policy
- Offset: `0x20`
- Reset default: `0xb7c0b7c`
- Reset mask: `0xffffffff`

### Fields

```wavejson
{"reg": [{"name": "read_perm", "bits": 16, "attr": ["rw"], "rotate": 0}, {"name": "write_perm", "bits": 16, "attr": ["rw"], "rotate": 0}], "config": {"lanes": 1, "fontsize": 10, "vspace": 80}}
```

|  Bits  |  Type  |  Reset  | Name       | Description                                    |
|:------:|:------:|:-------:|:-----------|:-----------------------------------------------|
| 31:16  |   rw   |  0xb7c  | write_perm | Write permission for policy tee_limited_policy |
|  15:0  |   rw   |  0xb7c  | read_perm  | Read permission for policy tee_limited_policy  |

## POLICY_RCODE_PRIVATE_POLICY_SHADOWED
Read and write policy for rcode_private_policy
- Offset: `0x28`
- Reset default: `0x3680368`
- Reset mask: `0xffffffff`

### Fields

```wavejson
{"reg": [{"name": "read_perm", "bits": 16, "attr": ["rw"], "rotate": 0}, {"name": "write_perm", "bits": 16, "attr": ["rw"], "rotate": 0}], "config": {"lanes": 1, "fontsize": 10, "vspace": 80}}
```

|  Bits  |  Type  |  Reset  | Name       | Description                                      |
|:------:|:------:|:-------:|:-----------|:-------------------------------------------------|
| 31:16  |   rw   |  0x368  | write_perm | Write permission for policy rcode_private_policy |
|  15:0  |   rw   |  0x368  | read_perm  | Read permission for policy rcode_private_policy  |

## POLICY_ROT_PRIVATE_POLICY_SHADOWED
Read and write policy for rot_private_policy
- Offset: `0x30`
- Reset default: `0x600060`
- Reset mask: `0xffffffff`

### Fields

```wavejson
{"reg": [{"name": "read_perm", "bits": 16, "attr": ["rw"], "rotate": 0}, {"name": "write_perm", "bits": 16, "attr": ["rw"], "rotate": 0}], "config": {"lanes": 1, "fontsize": 10, "vspace": 80}}
```

|  Bits  |  Type  |  Reset  | Name       | Description                                    |
|:------:|:------:|:-------:|:-----------|:-----------------------------------------------|
| 31:16  |   rw   |  0x60   | write_perm | Write permission for policy rot_private_policy |
|  15:0  |   rw   |  0x60   | read_perm  | Read permission for policy rot_private_policy  |

## POLICY_PWC_PRIVATE_POLICY_SHADOWED
Read and write policy for pwc_private_policy
- Offset: `0x38`
- Reset default: `0x3600360`
- Reset mask: `0xffffffff`

### Fields

```wavejson
{"reg": [{"name": "read_perm", "bits": 16, "attr": ["rw"], "rotate": 0}, {"name": "write_perm", "bits": 16, "attr": ["rw"], "rotate": 0}], "config": {"lanes": 1, "fontsize": 10, "vspace": 80}}
```

|  Bits  |  Type  |  Reset  | Name       | Description                                    |
|:------:|:------:|:-------:|:-----------|:-----------------------------------------------|
| 31:16  |   rw   |  0x360  | write_perm | Write permission for policy pwc_private_policy |
|  15:0  |   rw   |  0x360  | read_perm  | Read permission for policy pwc_private_policy  |

## POLICY_MIO_PRIVATE_POLICY_SHADOWED
Read and write policy for mio_private_policy
- Offset: `0x40`
- Reset default: `0x3e003e0`
- Reset mask: `0xffffffff`

### Fields

```wavejson
{"reg": [{"name": "read_perm", "bits": 16, "attr": ["rw"], "rotate": 0}, {"name": "write_perm", "bits": 16, "attr": ["rw"], "rotate": 0}], "config": {"lanes": 1, "fontsize": 10, "vspace": 80}}
```

|  Bits  |  Type  |  Reset  | Name       | Description                                    |
|:------:|:------:|:-------:|:-----------|:-----------------------------------------------|
| 31:16  |   rw   |  0x3e0  | write_perm | Write permission for policy mio_private_policy |
|  15:0  |   rw   |  0x3e0  | read_perm  | Read permission for policy mio_private_policy  |

## POLICY_DUC_PRIVATE_POLICY_SHADOWED
Read and write policy for duc_private_policy
- Offset: `0x48`
- Reset default: `0x33603360`
- Reset mask: `0xffffffff`

### Fields

```wavejson
{"reg": [{"name": "read_perm", "bits": 16, "attr": ["rw"], "rotate": 0}, {"name": "write_perm", "bits": 16, "attr": ["rw"], "rotate": 0}], "config": {"lanes": 1, "fontsize": 10, "vspace": 80}}
```

|  Bits  |  Type  |  Reset  | Name       | Description                                    |
|:------:|:------:|:-------:|:-----------|:-----------------------------------------------|
| 31:16  |   rw   | 0x3360  | write_perm | Write permission for policy duc_private_policy |
|  15:0  |   rw   | 0x3360  | read_perm  | Read permission for policy duc_private_policy  |

## INTR_STATE
Interrupt State Register
- Offset: `0xe8`
- Reset default: `0x0`
- Reset mask: `0x1`

### Fields

```wavejson
{"reg": [{"name": "racl_error", "bits": 1, "attr": ["ro"], "rotate": -90}, {"bits": 31}], "config": {"lanes": 1, "fontsize": 10, "vspace": 120}}
```

|  Bits  |  Type  |  Reset  | Name       | Description                                                                                                                                |
|:------:|:------:|:-------:|:-----------|:-------------------------------------------------------------------------------------------------------------------------------------------|
|  31:1  |        |         |            | Reserved                                                                                                                                   |
|   0    |   ro   |   0x0   | racl_error | Interrupt status. The interrupt is raised when a RACL error occurs and cleared when error_log is cleared by writing 1 to error_log.valid." |

## INTR_ENABLE
Interrupt Enable Register
- Offset: `0xec`
- Reset default: `0x0`
- Reset mask: `0x1`

### Fields

```wavejson
{"reg": [{"name": "IE", "bits": 1, "attr": ["rw"], "rotate": -90}, {"bits": 31}], "config": {"lanes": 1, "fontsize": 10, "vspace": 80}}
```

|  Bits  |  Type  |  Reset  | Name   | Description      |
|:------:|:------:|:-------:|:-------|:-----------------|
|  31:1  |        |         |        | Reserved         |
|   0    |   rw   |   0x0   | IE     | Interrupt Enable |

## INTR_TEST
Interrupt Test Register
- Offset: `0xf0`
- Reset default: `0x0`
- Reset mask: `0x1`

### Fields

```wavejson
{"reg": [{"name": "racl_error", "bits": 1, "attr": ["wo"], "rotate": -90}, {"bits": 31}], "config": {"lanes": 1, "fontsize": 10, "vspace": 120}}
```

|  Bits  |  Type  |  Reset  | Name       | Description                           |
|:------:|:------:|:-------:|:-----------|:--------------------------------------|
|  31:1  |        |         |            | Reserved                              |
|   0    |   wo   |    x    | racl_error | Write 1 to force racl_error interrupt |

## ALERT_TEST
Alert Test Register.
- Offset: `0xf4`
- Reset default: `0x0`
- Reset mask: `0x3`

### Fields

```wavejson
{"reg": [{"name": "fatal_fault", "bits": 1, "attr": ["wo"], "rotate": -90}, {"name": "recov_ctrl_update_err", "bits": 1, "attr": ["wo"], "rotate": -90}, {"bits": 30}], "config": {"lanes": 1, "fontsize": 10, "vspace": 230}}
```

|  Bits  |  Type  |  Reset  | Name                  | Description                                        |
|:------:|:------:|:-------:|:----------------------|:---------------------------------------------------|
|  31:2  |        |         |                       | Reserved                                           |
|   1    |   wo   |    x    | recov_ctrl_update_err | 'Write 1 to trigger one alert event of this kind.' |
|   0    |   wo   |    x    | fatal_fault           | 'Write 1 to trigger one alert event of this kind.' |

## ERROR_LOG
Error logging registers
- Offset: `0xf8`
- Reset default: `0x0`
- Reset mask: `0xfff`

### Fields

```wavejson
{"reg": [{"name": "valid", "bits": 1, "attr": ["rw1c"], "rotate": -90}, {"name": "overflow", "bits": 1, "attr": ["ro"], "rotate": -90}, {"name": "read_access", "bits": 1, "attr": ["ro"], "rotate": -90}, {"name": "role", "bits": 4, "attr": ["ro"], "rotate": 0}, {"name": "ctn_uid", "bits": 5, "attr": ["ro"], "rotate": 0}, {"bits": 20}], "config": {"lanes": 1, "fontsize": 10, "vspace": 130}}
```

|  Bits  |  Type  |  Reset  | Name        | Description                                                                                                                                                     |
|:------:|:------:|:-------:|:------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 31:12  |        |         |             | Reserved                                                                                                                                                        |
|  11:7  |   ro   |   0x0   | ctn_uid     | CTN UID causing the error.                                                                                                                                      |
|  6:3   |   ro   |   0x0   | role        | RACL role causing the error.                                                                                                                                    |
|   2    |   ro   |   0x0   | read_access | 0: Write transfer was denied. 1: Read transfer was denied.                                                                                                      |
|   1    |   ro   |   0x0   | overflow    | Indicates a RACL error overflow when a RACL error occurred while the log register was set.                                                                      |
|   0    |  rw1c  |   0x0   | valid       | Indicates a RACL error and the log register contains valid data. Writing a one clears this register and the [`ERROR_LOG_ADDRESS`](#error_log_address) register. |

## ERROR_LOG_ADDRESS
Contains the bits [top_pkg::TL_AW-1:2] of the address on which a RACL violation occurred.
   The address is shifted by 2 bits since TLUL access are always 4 byte aligned.
   This register is valid if and only if the `valid` field of [`ERROR_LOG`](#error_log) is true.
   Once valid, the address doesn't change (even if there are subsequent RACL violations) until the register gets cleared.
   This register gets cleared when SW writes `1` to the `valid` field of the [`ERROR_LOG`](#error_log) register.
- Offset: `0xfc`
- Reset default: `0x0`
- Reset mask: `0x3fffffff`

### Fields

```wavejson
{"reg": [{"name": "address", "bits": 30, "attr": ["ro"], "rotate": 0}, {"bits": 2}], "config": {"lanes": 1, "fontsize": 10, "vspace": 80}}
```

|  Bits  |  Type  |  Reset  | Name    | Description                                                                 |
|:------:|:------:|:-------:|:--------|:----------------------------------------------------------------------------|
| 31:30  |        |         |         | Reserved                                                                    |
|  29:0  |   ro   |   0x0   | address | Address on which a RACL violation occurred, shifted by 2 bits to the right. |


<!-- END CMDGEN -->
