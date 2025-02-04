# Registers

<!-- BEGIN CMDGEN util/regtool.py -d ./hw/top_darjeeling/ip_autogen/racl_ctrl/data/racl_ctrl.hjson -->
## Summary

| Name                                                                                      | Offset   |   Length | Description                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|:------------------------------------------------------------------------------------------|:---------|---------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| racl_ctrl.[`ALERT_TEST`](#alert_test)                                                     | 0x0      |        4 | Alert Test Register                                                                                                                                                                                                                                                                                                                                                                                                                               |
| racl_ctrl.[`ERROR_LOG`](#error_log)                                                       | 0x4      |        4 | Error logging registers                                                                                                                                                                                                                                                                                                                                                                                                                           |
| racl_ctrl.[`POLICY_ALL_RD_WR_SHADOWED`](#policy_all_rd_wr_shadowed)                       | 0x8      |        4 | Read and write policy for {'name': 'ALL_RD_WR', 'allowed_wr': ['NOT_TEE', 'M_MODE', 'TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC', 'IO_AGENT', 'TEE_IO_AGENT', 'DUC_UC', 'MIMT_R_MODE'], 'allowed_rd': ['NOT_TEE', 'M_MODE', 'TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC', 'IO_AGENT', 'TEE_IO_AGENT', 'DUC_UC', 'MIMT_R_MODE'], 'rd_default': 16383, 'wr_default': 16383} |
| racl_ctrl.[`POLICY_HW_ROT_PWC_WR_ALL_RD_SHADOWED`](#policy_hw_rot_pwc_wr_all_rd_shadowed) | 0xc      |        4 | Read and write policy for {'name': 'HW_ROT_PWC_WR_ALL_RD', 'allowed_wr': ['CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'allowed_rd': ['NOT_TEE', 'M_MODE', 'TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC', 'IO_AGENT', 'TEE_IO_AGENT', 'DUC_UC', 'MIMT_R_MODE'], 'rd_default': 16383, 'wr_default': 864}                                                                                                             |
| racl_ctrl.[`POLICY_PRE_BOOT_M_SHADOWED`](#policy_pre_boot_m_shadowed)                     | 0x10     |        4 | Read and write policy for {'name': 'PRE_BOOT_M', 'allowed_wr': ['M_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'allowed_rd': ['NOT_TEE', 'M_MODE', 'TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC'], 'rd_default': 1023, 'wr_default': 890}                                                                                                                                           |
| racl_ctrl.[`POLICY_POST_BOOT_M_SHADOWED`](#policy_post_boot_m_shadowed)                   | 0x14     |        4 | Read and write policy for {'name': 'POST_BOOT_M', 'allowed_wr': ['M_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'allowed_rd': ['NOT_TEE', 'M_MODE', 'TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC'], 'rd_default': 1023, 'wr_default': 890}                                                                                                                                          |
| racl_ctrl.[`POLICY_TEE_LIMITED_SHADOWED`](#policy_tee_limited_shadowed)                   | 0x18     |        4 | Read and write policy for {'name': 'TEE_LIMITED', 'allowed_wr': ['TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC', 'TEE_IO_AGENT'], 'allowed_rd': ['TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC', 'TEE_IO_AGENT'], 'rd_default': 2940, 'wr_default': 2940}                                                                                                                                   |
| racl_ctrl.[`POLICY_RCODE_PRIVATE_SHADOWED`](#policy_rcode_private_shadowed)               | 0x1c     |        4 | Read and write policy for {'name': 'RCODE_PRIVATE', 'allowed_wr': ['R_CODE', 'CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'allowed_rd': ['R_CODE', 'CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'rd_default': 872, 'wr_default': 872}                                                                                                                                                                                                                       |
| racl_ctrl.[`POLICY_ROT_PRIVATE_SHADOWED`](#policy_rot_private_shadowed)                   | 0x20     |        4 | Read and write policy for {'name': 'ROT_PRIVATE', 'rot_private': True, 'allowed_wr': ['CAT3_DEBUG', 'ROT'], 'allowed_rd': ['CAT3_DEBUG', 'ROT'], 'rd_default': 96, 'wr_default': 96}                                                                                                                                                                                                                                                              |
| racl_ctrl.[`POLICY_PWC_PRIVATE_SHADOWED`](#policy_pwc_private_shadowed)                   | 0x24     |        4 | Read and write policy for {'name': 'PWC_PRIVATE', 'allowed_wr': ['CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'allowed_rd': ['CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'rd_default': 864, 'wr_default': 864}                                                                                                                                                                                                                                             |
| racl_ctrl.[`POLICY_MIO_PRIVATE_SHADOWED`](#policy_mio_private_shadowed)                   | 0x28     |        4 | Read and write policy for {'name': 'MIO_PRIVATE', 'allowed_wr': ['CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC'], 'allowed_rd': ['CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC'], 'rd_default': 992, 'wr_default': 992}                                                                                                                                                                                                                               |
| racl_ctrl.[`POLICY_DUC_PRIVATE_SHADOWED`](#policy_duc_private_shadowed)                   | 0x2c     |        4 | Read and write policy for {'name': 'DUC_PRIVATE', 'allowed_wr': ['CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC', 'DUC_UC', 'MIMT_R_MODE'], 'allowed_rd': ['CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC', 'DUC_UC', 'MIMT_R_MODE'], 'rd_default': 13152, 'wr_default': 13152}                                                                                                                                                                                       |

## ALERT_TEST
Alert Test Register
- Offset: `0x0`
- Reset default: `0x0`
- Reset mask: `0x3`

### Fields

```wavejson
{"reg": [{"name": "recov_ctrl_update_err", "bits": 1, "attr": ["wo"], "rotate": -90}, {"name": "fatal_fault", "bits": 1, "attr": ["wo"], "rotate": -90}, {"bits": 30}], "config": {"lanes": 1, "fontsize": 10, "vspace": 230}}
```

|  Bits  |  Type  |  Reset  | Name                  | Description                                      |
|:------:|:------:|:-------:|:----------------------|:-------------------------------------------------|
|  31:2  |        |         |                       | Reserved                                         |
|   1    |   wo   |   0x0   | fatal_fault           | Write 1 to trigger one alert event of this kind. |
|   0    |   wo   |   0x0   | recov_ctrl_update_err | Write 1 to trigger one alert event of this kind. |

## ERROR_LOG
Error logging registers
- Offset: `0x4`
- Reset default: `0x0`
- Reset mask: `0xfff`

### Fields

```wavejson
{"reg": [{"name": "valid", "bits": 1, "attr": ["rw1c"], "rotate": -90}, {"name": "overflow", "bits": 1, "attr": ["ro"], "rotate": -90}, {"name": "read_access", "bits": 1, "attr": ["ro"], "rotate": -90}, {"name": "role", "bits": 4, "attr": ["ro"], "rotate": 0}, {"name": "ctn_uid", "bits": 5, "attr": ["ro"], "rotate": 0}, {"bits": 20}], "config": {"lanes": 1, "fontsize": 10, "vspace": 130}}
```

|  Bits  |  Type  |  Reset  | Name        | Description                                                                                                   |
|:------:|:------:|:-------:|:------------|:--------------------------------------------------------------------------------------------------------------|
| 31:12  |        |         |             | Reserved                                                                                                      |
|  11:7  |   ro   |   0x0   | ctn_uid     | CTN UID causing the error.                                                                                    |
|  6:3   |   ro   |   0x0   | role        | RACL role causing the error.                                                                                  |
|   2    |   ro   |   0x0   | read_access | 0: Write transfer was denied. 1: Read transfer was denied.                                                    |
|   1    |   ro   |   0x0   | overflow    | Indicates a RACL error overflow when a RACL error occurred while the log register was set.                    |
|   0    |  rw1c  |   0x0   | valid       | Indicates a RACL error and the log register contains valid data. Writing a one clears the error log register. |

## POLICY_ALL_RD_WR_SHADOWED
Read and write policy for {'name': 'ALL_RD_WR', 'allowed_wr': ['NOT_TEE', 'M_MODE', 'TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC', 'IO_AGENT', 'TEE_IO_AGENT', 'DUC_UC', 'MIMT_R_MODE'], 'allowed_rd': ['NOT_TEE', 'M_MODE', 'TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC', 'IO_AGENT', 'TEE_IO_AGENT', 'DUC_UC', 'MIMT_R_MODE'], 'rd_default': 16383, 'wr_default': 16383}
- Offset: `0x8`
- Reset default: `0x3fff3fff`
- Reset mask: `0xffffffff`

### Fields

```wavejson
{"reg": [{"name": "read_perm", "bits": 16, "attr": ["rw"], "rotate": 0}, {"name": "write_perm", "bits": 16, "attr": ["rw"], "rotate": 0}], "config": {"lanes": 1, "fontsize": 10, "vspace": 80}}
```

|  Bits  |  Type  |  Reset  | Name                                                 |
|:------:|:------:|:-------:|:-----------------------------------------------------|
| 31:16  |   rw   | 0x3fff  | [write_perm](#policy_all_rd_wr_shadowed--write_perm) |
|  15:0  |   rw   | 0x3fff  | [read_perm](#policy_all_rd_wr_shadowed--read_perm)   |

### POLICY_ALL_RD_WR_SHADOWED . write_perm
Write permission for policy {'name': 'ALL_RD_WR', 'allowed_wr': ['NOT_TEE', 'M_MODE', 'TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC', 'IO_AGENT', 'TEE_IO_AGENT', 'DUC_UC', 'MIMT_R_MODE'], 'allowed_rd': ['NOT_TEE', 'M_MODE', 'TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC', 'IO_AGENT', 'TEE_IO_AGENT', 'DUC_UC', 'MIMT_R_MODE'], 'rd_default': 16383, 'wr_default': 16383}

### POLICY_ALL_RD_WR_SHADOWED . read_perm
Read permission for policy {'name': 'ALL_RD_WR', 'allowed_wr': ['NOT_TEE', 'M_MODE', 'TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC', 'IO_AGENT', 'TEE_IO_AGENT', 'DUC_UC', 'MIMT_R_MODE'], 'allowed_rd': ['NOT_TEE', 'M_MODE', 'TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC', 'IO_AGENT', 'TEE_IO_AGENT', 'DUC_UC', 'MIMT_R_MODE'], 'rd_default': 16383, 'wr_default': 16383}

## POLICY_HW_ROT_PWC_WR_ALL_RD_SHADOWED
Read and write policy for {'name': 'HW_ROT_PWC_WR_ALL_RD', 'allowed_wr': ['CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'allowed_rd': ['NOT_TEE', 'M_MODE', 'TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC', 'IO_AGENT', 'TEE_IO_AGENT', 'DUC_UC', 'MIMT_R_MODE'], 'rd_default': 16383, 'wr_default': 864}
- Offset: `0xc`
- Reset default: `0x3603fff`
- Reset mask: `0xffffffff`

### Fields

```wavejson
{"reg": [{"name": "read_perm", "bits": 16, "attr": ["rw"], "rotate": 0}, {"name": "write_perm", "bits": 16, "attr": ["rw"], "rotate": 0}], "config": {"lanes": 1, "fontsize": 10, "vspace": 80}}
```

|  Bits  |  Type  |  Reset  | Name                                                            |
|:------:|:------:|:-------:|:----------------------------------------------------------------|
| 31:16  |   rw   |  0x360  | [write_perm](#policy_hw_rot_pwc_wr_all_rd_shadowed--write_perm) |
|  15:0  |   rw   | 0x3fff  | [read_perm](#policy_hw_rot_pwc_wr_all_rd_shadowed--read_perm)   |

### POLICY_HW_ROT_PWC_WR_ALL_RD_SHADOWED . write_perm
Write permission for policy {'name': 'HW_ROT_PWC_WR_ALL_RD', 'allowed_wr': ['CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'allowed_rd': ['NOT_TEE', 'M_MODE', 'TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC', 'IO_AGENT', 'TEE_IO_AGENT', 'DUC_UC', 'MIMT_R_MODE'], 'rd_default': 16383, 'wr_default': 864}

### POLICY_HW_ROT_PWC_WR_ALL_RD_SHADOWED . read_perm
Read permission for policy {'name': 'HW_ROT_PWC_WR_ALL_RD', 'allowed_wr': ['CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'allowed_rd': ['NOT_TEE', 'M_MODE', 'TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC', 'IO_AGENT', 'TEE_IO_AGENT', 'DUC_UC', 'MIMT_R_MODE'], 'rd_default': 16383, 'wr_default': 864}

## POLICY_PRE_BOOT_M_SHADOWED
Read and write policy for {'name': 'PRE_BOOT_M', 'allowed_wr': ['M_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'allowed_rd': ['NOT_TEE', 'M_MODE', 'TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC'], 'rd_default': 1023, 'wr_default': 890}
- Offset: `0x10`
- Reset default: `0x37a03ff`
- Reset mask: `0xffffffff`

### Fields

```wavejson
{"reg": [{"name": "read_perm", "bits": 16, "attr": ["rw"], "rotate": 0}, {"name": "write_perm", "bits": 16, "attr": ["rw"], "rotate": 0}], "config": {"lanes": 1, "fontsize": 10, "vspace": 80}}
```

|  Bits  |  Type  |  Reset  | Name                                                  |
|:------:|:------:|:-------:|:------------------------------------------------------|
| 31:16  |   rw   |  0x37a  | [write_perm](#policy_pre_boot_m_shadowed--write_perm) |
|  15:0  |   rw   |  0x3ff  | [read_perm](#policy_pre_boot_m_shadowed--read_perm)   |

### POLICY_PRE_BOOT_M_SHADOWED . write_perm
Write permission for policy {'name': 'PRE_BOOT_M', 'allowed_wr': ['M_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'allowed_rd': ['NOT_TEE', 'M_MODE', 'TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC'], 'rd_default': 1023, 'wr_default': 890}

### POLICY_PRE_BOOT_M_SHADOWED . read_perm
Read permission for policy {'name': 'PRE_BOOT_M', 'allowed_wr': ['M_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'allowed_rd': ['NOT_TEE', 'M_MODE', 'TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC'], 'rd_default': 1023, 'wr_default': 890}

## POLICY_POST_BOOT_M_SHADOWED
Read and write policy for {'name': 'POST_BOOT_M', 'allowed_wr': ['M_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'allowed_rd': ['NOT_TEE', 'M_MODE', 'TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC'], 'rd_default': 1023, 'wr_default': 890}
- Offset: `0x14`
- Reset default: `0x37a03ff`
- Reset mask: `0xffffffff`

### Fields

```wavejson
{"reg": [{"name": "read_perm", "bits": 16, "attr": ["rw"], "rotate": 0}, {"name": "write_perm", "bits": 16, "attr": ["rw"], "rotate": 0}], "config": {"lanes": 1, "fontsize": 10, "vspace": 80}}
```

|  Bits  |  Type  |  Reset  | Name                                                   |
|:------:|:------:|:-------:|:-------------------------------------------------------|
| 31:16  |   rw   |  0x37a  | [write_perm](#policy_post_boot_m_shadowed--write_perm) |
|  15:0  |   rw   |  0x3ff  | [read_perm](#policy_post_boot_m_shadowed--read_perm)   |

### POLICY_POST_BOOT_M_SHADOWED . write_perm
Write permission for policy {'name': 'POST_BOOT_M', 'allowed_wr': ['M_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'allowed_rd': ['NOT_TEE', 'M_MODE', 'TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC'], 'rd_default': 1023, 'wr_default': 890}

### POLICY_POST_BOOT_M_SHADOWED . read_perm
Read permission for policy {'name': 'POST_BOOT_M', 'allowed_wr': ['M_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'allowed_rd': ['NOT_TEE', 'M_MODE', 'TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC'], 'rd_default': 1023, 'wr_default': 890}

## POLICY_TEE_LIMITED_SHADOWED
Read and write policy for {'name': 'TEE_LIMITED', 'allowed_wr': ['TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC', 'TEE_IO_AGENT'], 'allowed_rd': ['TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC', 'TEE_IO_AGENT'], 'rd_default': 2940, 'wr_default': 2940}
- Offset: `0x18`
- Reset default: `0xb7c0b7c`
- Reset mask: `0xffffffff`

### Fields

```wavejson
{"reg": [{"name": "read_perm", "bits": 16, "attr": ["rw"], "rotate": 0}, {"name": "write_perm", "bits": 16, "attr": ["rw"], "rotate": 0}], "config": {"lanes": 1, "fontsize": 10, "vspace": 80}}
```

|  Bits  |  Type  |  Reset  | Name                                                   |
|:------:|:------:|:-------:|:-------------------------------------------------------|
| 31:16  |   rw   |  0xb7c  | [write_perm](#policy_tee_limited_shadowed--write_perm) |
|  15:0  |   rw   |  0xb7c  | [read_perm](#policy_tee_limited_shadowed--read_perm)   |

### POLICY_TEE_LIMITED_SHADOWED . write_perm
Write permission for policy {'name': 'TEE_LIMITED', 'allowed_wr': ['TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC', 'TEE_IO_AGENT'], 'allowed_rd': ['TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC', 'TEE_IO_AGENT'], 'rd_default': 2940, 'wr_default': 2940}

### POLICY_TEE_LIMITED_SHADOWED . read_perm
Read permission for policy {'name': 'TEE_LIMITED', 'allowed_wr': ['TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC', 'TEE_IO_AGENT'], 'allowed_rd': ['TEE_MODE', 'R_CODE', 'CAT2_DEBUG', 'CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC', 'TEE_IO_AGENT'], 'rd_default': 2940, 'wr_default': 2940}

## POLICY_RCODE_PRIVATE_SHADOWED
Read and write policy for {'name': 'RCODE_PRIVATE', 'allowed_wr': ['R_CODE', 'CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'allowed_rd': ['R_CODE', 'CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'rd_default': 872, 'wr_default': 872}
- Offset: `0x1c`
- Reset default: `0x3680368`
- Reset mask: `0xffffffff`

### Fields

```wavejson
{"reg": [{"name": "read_perm", "bits": 16, "attr": ["rw"], "rotate": 0}, {"name": "write_perm", "bits": 16, "attr": ["rw"], "rotate": 0}], "config": {"lanes": 1, "fontsize": 10, "vspace": 80}}
```

|  Bits  |  Type  |  Reset  | Name       | Description                                                                                                                                                                                                                   |
|:------:|:------:|:-------:|:-----------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 31:16  |   rw   |  0x368  | write_perm | Write permission for policy {'name': 'RCODE_PRIVATE', 'allowed_wr': ['R_CODE', 'CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'allowed_rd': ['R_CODE', 'CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'rd_default': 872, 'wr_default': 872} |
|  15:0  |   rw   |  0x368  | read_perm  | Read permission for policy {'name': 'RCODE_PRIVATE', 'allowed_wr': ['R_CODE', 'CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'allowed_rd': ['R_CODE', 'CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'rd_default': 872, 'wr_default': 872}  |

## POLICY_ROT_PRIVATE_SHADOWED
Read and write policy for {'name': 'ROT_PRIVATE', 'rot_private': True, 'allowed_wr': ['CAT3_DEBUG', 'ROT'], 'allowed_rd': ['CAT3_DEBUG', 'ROT'], 'rd_default': 96, 'wr_default': 96}
- Offset: `0x20`
- Reset default: `0x600060`
- Reset mask: `0xffffffff`

### Fields

```wavejson
{"reg": [{"name": "read_perm", "bits": 16, "attr": ["rw"], "rotate": 0}, {"name": "write_perm", "bits": 16, "attr": ["rw"], "rotate": 0}], "config": {"lanes": 1, "fontsize": 10, "vspace": 80}}
```

|  Bits  |  Type  |  Reset  | Name       | Description                                                                                                                                                                            |
|:------:|:------:|:-------:|:-----------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 31:16  |   rw   |  0x60   | write_perm | Write permission for policy {'name': 'ROT_PRIVATE', 'rot_private': True, 'allowed_wr': ['CAT3_DEBUG', 'ROT'], 'allowed_rd': ['CAT3_DEBUG', 'ROT'], 'rd_default': 96, 'wr_default': 96} |
|  15:0  |   rw   |  0x60   | read_perm  | Read permission for policy {'name': 'ROT_PRIVATE', 'rot_private': True, 'allowed_wr': ['CAT3_DEBUG', 'ROT'], 'allowed_rd': ['CAT3_DEBUG', 'ROT'], 'rd_default': 96, 'wr_default': 96}  |

## POLICY_PWC_PRIVATE_SHADOWED
Read and write policy for {'name': 'PWC_PRIVATE', 'allowed_wr': ['CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'allowed_rd': ['CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'rd_default': 864, 'wr_default': 864}
- Offset: `0x24`
- Reset default: `0x3600360`
- Reset mask: `0xffffffff`

### Fields

```wavejson
{"reg": [{"name": "read_perm", "bits": 16, "attr": ["rw"], "rotate": 0}, {"name": "write_perm", "bits": 16, "attr": ["rw"], "rotate": 0}], "config": {"lanes": 1, "fontsize": 10, "vspace": 80}}
```

|  Bits  |  Type  |  Reset  | Name       | Description                                                                                                                                                                                             |
|:------:|:------:|:-------:|:-----------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 31:16  |   rw   |  0x360  | write_perm | Write permission for policy {'name': 'PWC_PRIVATE', 'allowed_wr': ['CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'allowed_rd': ['CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'rd_default': 864, 'wr_default': 864} |
|  15:0  |   rw   |  0x360  | read_perm  | Read permission for policy {'name': 'PWC_PRIVATE', 'allowed_wr': ['CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'allowed_rd': ['CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC'], 'rd_default': 864, 'wr_default': 864}  |

## POLICY_MIO_PRIVATE_SHADOWED
Read and write policy for {'name': 'MIO_PRIVATE', 'allowed_wr': ['CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC'], 'allowed_rd': ['CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC'], 'rd_default': 992, 'wr_default': 992}
- Offset: `0x28`
- Reset default: `0x3e003e0`
- Reset mask: `0xffffffff`

### Fields

```wavejson
{"reg": [{"name": "read_perm", "bits": 16, "attr": ["rw"], "rotate": 0}, {"name": "write_perm", "bits": 16, "attr": ["rw"], "rotate": 0}], "config": {"lanes": 1, "fontsize": 10, "vspace": 80}}
```

|  Bits  |  Type  |  Reset  | Name       | Description                                                                                                                                                                                                           |
|:------:|:------:|:-------:|:-----------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 31:16  |   rw   |  0x3e0  | write_perm | Write permission for policy {'name': 'MIO_PRIVATE', 'allowed_wr': ['CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC'], 'allowed_rd': ['CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC'], 'rd_default': 992, 'wr_default': 992} |
|  15:0  |   rw   |  0x3e0  | read_perm  | Read permission for policy {'name': 'MIO_PRIVATE', 'allowed_wr': ['CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC'], 'allowed_rd': ['CAT3_DEBUG', 'ROT', 'MIO', 'PWC', 'INT_SOC'], 'rd_default': 992, 'wr_default': 992}  |

## POLICY_DUC_PRIVATE_SHADOWED
Read and write policy for {'name': 'DUC_PRIVATE', 'allowed_wr': ['CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC', 'DUC_UC', 'MIMT_R_MODE'], 'allowed_rd': ['CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC', 'DUC_UC', 'MIMT_R_MODE'], 'rd_default': 13152, 'wr_default': 13152}
- Offset: `0x2c`
- Reset default: `0x33603360`
- Reset mask: `0xffffffff`

### Fields

```wavejson
{"reg": [{"name": "read_perm", "bits": 16, "attr": ["rw"], "rotate": 0}, {"name": "write_perm", "bits": 16, "attr": ["rw"], "rotate": 0}], "config": {"lanes": 1, "fontsize": 10, "vspace": 80}}
```

|  Bits  |  Type  |  Reset  | Name                                                   |
|:------:|:------:|:-------:|:-------------------------------------------------------|
| 31:16  |   rw   | 0x3360  | [write_perm](#policy_duc_private_shadowed--write_perm) |
|  15:0  |   rw   | 0x3360  | [read_perm](#policy_duc_private_shadowed--read_perm)   |

### POLICY_DUC_PRIVATE_SHADOWED . write_perm
Write permission for policy {'name': 'DUC_PRIVATE', 'allowed_wr': ['CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC', 'DUC_UC', 'MIMT_R_MODE'], 'allowed_rd': ['CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC', 'DUC_UC', 'MIMT_R_MODE'], 'rd_default': 13152, 'wr_default': 13152}

### POLICY_DUC_PRIVATE_SHADOWED . read_perm
Read permission for policy {'name': 'DUC_PRIVATE', 'allowed_wr': ['CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC', 'DUC_UC', 'MIMT_R_MODE'], 'allowed_rd': ['CAT3_DEBUG', 'ROT', 'PWC', 'INT_SOC', 'DUC_UC', 'MIMT_R_MODE'], 'rd_default': 13152, 'wr_default': 13152}


<!-- END CMDGEN -->
