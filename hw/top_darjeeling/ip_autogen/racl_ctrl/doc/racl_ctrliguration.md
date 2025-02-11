# RACL Configuration

<!-- BEGIN CMDGEN util/raclgen.py --doc ./hw/top_darjeeling/data/autogen/top_darjeeling.gen.hjson -->
## RACL groups

### RACL group: Null

| Policy Name          |   Index | Description   |
|:---------------------|--------:|:--------------|
| ALL_RD_WR            |       0 |               |
| HW_ROT_PWC_WR_ALL_RD |       1 |               |
| PRE_BOOT_M           |       2 |               |
| POST_BOOT_M          |       3 |               |
| TEE_LIMITED          |       4 |               |
| RCODE_PRIVATE        |       5 |               |
| ROT_PRIVATE          |       6 |               |
| PWC_PRIVATE          |       7 |               |
| MIO_PRIVATE          |       8 |               |
| DUC_PRIVATE          |       9 |               |


## RACL configuration

### RACL configuration for `mbx0` and interface `soc`

- IP: mbx
- Instance base address: 0x1465000
- RACL group: Null


| Name                             | Offset   | Address   | Width   | Policy          | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:---------------------------------|:---------|:----------|:--------|:----------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx0.soc.`SOC_CONTROL`           | 0x8      | 0x1465008 | 0x4     | 6 (ROT_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx0.soc.`SOC_STATUS`            | 0xc      | 0x146500c | 0x4     | 6 (ROT_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx0.soc.`WDATA`                 | 0x10     | 0x1465010 | 0x4     | 6 (ROT_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx0.soc.`RDATA`                 | 0x14     | 0x1465014 | 0x4     | 6 (ROT_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx0.soc.`SOC_DOE_INTR_MSG_ADDR` | 0x18     | 0x1465018 | 0x4     | 6 (ROT_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx0.soc.`SOC_DOE_INTR_MSG_DATA` | 0x1c     | 0x146501c | 0x4     | 6 (ROT_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |

### RACL configuration for `mbx1` and interface `soc`

- IP: mbx
- Instance base address: 0x1465100
- RACL group: Null


| Name                             | Offset   | Address   | Width   | Policy          | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:---------------------------------|:---------|:----------|:--------|:----------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx1.soc.`SOC_CONTROL`           | 0x8      | 0x1465108 | 0x4     | 6 (ROT_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx1.soc.`SOC_STATUS`            | 0xc      | 0x146510c | 0x4     | 6 (ROT_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx1.soc.`WDATA`                 | 0x10     | 0x1465110 | 0x4     | 6 (ROT_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx1.soc.`RDATA`                 | 0x14     | 0x1465114 | 0x4     | 6 (ROT_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx1.soc.`SOC_DOE_INTR_MSG_ADDR` | 0x18     | 0x1465118 | 0x4     | 6 (ROT_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx1.soc.`SOC_DOE_INTR_MSG_DATA` | 0x1c     | 0x146511c | 0x4     | 6 (ROT_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |

### RACL configuration for `mbx2` and interface `soc`

- IP: mbx
- Instance base address: 0x1465200
- RACL group: Null


| Name                             | Offset   | Address   | Width   | Policy          | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:---------------------------------|:---------|:----------|:--------|:----------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx2.soc.`SOC_CONTROL`           | 0x8      | 0x1465208 | 0x4     | 6 (ROT_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx2.soc.`SOC_STATUS`            | 0xc      | 0x146520c | 0x4     | 6 (ROT_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx2.soc.`WDATA`                 | 0x10     | 0x1465210 | 0x4     | 6 (ROT_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx2.soc.`RDATA`                 | 0x14     | 0x1465214 | 0x4     | 6 (ROT_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx2.soc.`SOC_DOE_INTR_MSG_ADDR` | 0x18     | 0x1465218 | 0x4     | 6 (ROT_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx2.soc.`SOC_DOE_INTR_MSG_DATA` | 0x1c     | 0x146521c | 0x4     | 6 (ROT_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |

### RACL configuration for `mbx3` and interface `soc`

- IP: mbx
- Instance base address: 0x1465300
- RACL group: Null


| Name                             | Offset   | Address   | Width   | Policy          | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:---------------------------------|:---------|:----------|:--------|:----------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx3.soc.`SOC_CONTROL`           | 0x8      | 0x1465308 | 0x4     | 7 (PWC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx3.soc.`SOC_STATUS`            | 0xc      | 0x146530c | 0x4     | 7 (PWC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx3.soc.`WDATA`                 | 0x10     | 0x1465310 | 0x4     | 7 (PWC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx3.soc.`RDATA`                 | 0x14     | 0x1465314 | 0x4     | 7 (PWC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx3.soc.`SOC_DOE_INTR_MSG_ADDR` | 0x18     | 0x1465318 | 0x4     | 7 (PWC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx3.soc.`SOC_DOE_INTR_MSG_DATA` | 0x1c     | 0x146531c | 0x4     | 7 (PWC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |

### RACL configuration for `mbx4` and interface `soc`

- IP: mbx
- Instance base address: 0x1465400
- RACL group: Null


| Name                             | Offset   | Address   | Width   | Policy          | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:---------------------------------|:---------|:----------|:--------|:----------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx4.soc.`SOC_CONTROL`           | 0x8      | 0x1465408 | 0x4     | 8 (MIO_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx4.soc.`SOC_STATUS`            | 0xc      | 0x146540c | 0x4     | 8 (MIO_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx4.soc.`WDATA`                 | 0x10     | 0x1465410 | 0x4     | 8 (MIO_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx4.soc.`RDATA`                 | 0x14     | 0x1465414 | 0x4     | 8 (MIO_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx4.soc.`SOC_DOE_INTR_MSG_ADDR` | 0x18     | 0x1465418 | 0x4     | 8 (MIO_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx4.soc.`SOC_DOE_INTR_MSG_DATA` | 0x1c     | 0x146541c | 0x4     | 8 (MIO_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |

### RACL configuration for `mbx5` and interface `soc`

- IP: mbx
- Instance base address: 0x1465500
- RACL group: Null


| Name                             | Offset   | Address   | Width   | Policy          | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:---------------------------------|:---------|:----------|:--------|:----------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx5.soc.`SOC_CONTROL`           | 0x8      | 0x1465508 | 0x4     | 9 (DUC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | R / W    | R / W         |
| mbx5.soc.`SOC_STATUS`            | 0xc      | 0x146550c | 0x4     | 9 (DUC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | R / W    | R / W         |
| mbx5.soc.`WDATA`                 | 0x10     | 0x1465510 | 0x4     | 9 (DUC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | R / W    | R / W         |
| mbx5.soc.`RDATA`                 | 0x14     | 0x1465514 | 0x4     | 9 (DUC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | R / W    | R / W         |
| mbx5.soc.`SOC_DOE_INTR_MSG_ADDR` | 0x18     | 0x1465518 | 0x4     | 9 (DUC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | R / W    | R / W         |
| mbx5.soc.`SOC_DOE_INTR_MSG_DATA` | 0x1c     | 0x146551c | 0x4     | 9 (DUC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | R / W    | R / W         |

### RACL configuration for `mbx6` and interface `soc`

- IP: mbx
- Instance base address: 0x1496000
- RACL group: Null


| Name                             | Offset   | Address   | Width   | Policy            | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:---------------------------------|:---------|:----------|:--------|:------------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx6.soc.`SOC_CONTROL`           | 0x8      | 0x1496008 | 0x4     | 5 (RCODE_PRIVATE) | - / -     | - / -    | - / -      | R / W    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx6.soc.`SOC_STATUS`            | 0xc      | 0x149600c | 0x4     | 5 (RCODE_PRIVATE) | - / -     | - / -    | - / -      | R / W    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx6.soc.`WDATA`                 | 0x10     | 0x1496010 | 0x4     | 5 (RCODE_PRIVATE) | - / -     | - / -    | - / -      | R / W    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx6.soc.`RDATA`                 | 0x14     | 0x1496014 | 0x4     | 5 (RCODE_PRIVATE) | - / -     | - / -    | - / -      | R / W    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx6.soc.`SOC_DOE_INTR_MSG_ADDR` | 0x18     | 0x1496018 | 0x4     | 5 (RCODE_PRIVATE) | - / -     | - / -    | - / -      | R / W    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx6.soc.`SOC_DOE_INTR_MSG_DATA` | 0x1c     | 0x149601c | 0x4     | 5 (RCODE_PRIVATE) | - / -     | - / -    | - / -      | R / W    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |

### RACL configuration for `mbx_pcie0` and interface `soc`

- IP: mbx
- Instance base address: 0x1460100
- RACL group: Null


| Name                                  | Offset   | Address   | Width   | Policy        | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:--------------------------------------|:---------|:----------|:--------|:--------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx_pcie0.soc.`SOC_CONTROL`           | 0x8      | 0x1460108 | 0x4     | 0 (ALL_RD_WR) | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.soc.`SOC_STATUS`            | 0xc      | 0x146010c | 0x4     | 0 (ALL_RD_WR) | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.soc.`WDATA`                 | 0x10     | 0x1460110 | 0x4     | 0 (ALL_RD_WR) | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.soc.`RDATA`                 | 0x14     | 0x1460114 | 0x4     | 0 (ALL_RD_WR) | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.soc.`SOC_DOE_INTR_MSG_ADDR` | 0x18     | 0x1460118 | 0x4     | 0 (ALL_RD_WR) | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.soc.`SOC_DOE_INTR_MSG_DATA` | 0x1c     | 0x146011c | 0x4     | 0 (ALL_RD_WR) | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |

### RACL configuration for `mbx_pcie1` and interface `soc`

- IP: mbx
- Instance base address: 0x1460200
- RACL group: Null


| Name                                  | Offset   | Address   | Width   | Policy          | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:--------------------------------------|:---------|:----------|:--------|:----------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx_pcie1.soc.`SOC_CONTROL`           | 0x8      | 0x1460208 | 0x4     | 3 (POST_BOOT_M) | R / -     | R / W    | R / -      | R / W    | R / W        | R / W        | R / W | R / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx_pcie1.soc.`SOC_STATUS`            | 0xc      | 0x146020c | 0x4     | 3 (POST_BOOT_M) | R / -     | R / W    | R / -      | R / W    | R / W        | R / W        | R / W | R / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx_pcie1.soc.`WDATA`                 | 0x10     | 0x1460210 | 0x4     | 3 (POST_BOOT_M) | R / -     | R / W    | R / -      | R / W    | R / W        | R / W        | R / W | R / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx_pcie1.soc.`RDATA`                 | 0x14     | 0x1460214 | 0x4     | 3 (POST_BOOT_M) | R / -     | R / W    | R / -      | R / W    | R / W        | R / W        | R / W | R / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx_pcie1.soc.`SOC_DOE_INTR_MSG_ADDR` | 0x18     | 0x1460218 | 0x4     | 3 (POST_BOOT_M) | R / -     | R / W    | R / -      | R / W    | R / W        | R / W        | R / W | R / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx_pcie1.soc.`SOC_DOE_INTR_MSG_DATA` | 0x1c     | 0x146021c | 0x4     | 3 (POST_BOOT_M) | R / -     | R / W    | R / -      | R / W    | R / W        | R / W        | R / W | R / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |


<!-- END CMDGEN -->
