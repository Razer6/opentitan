# RACL Configuration

<!-- BEGIN CMDGEN util/raclgen.py --doc ./hw/top_pwc/data/autogen/top_pwc.gen.hjson -->
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
- Instance base address: 0x1475000
- RACL group: Null


| Name                             | Offset   | Address   | Width   | Policy          | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:---------------------------------|:---------|:----------|:--------|:----------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx0.soc.`SOC_CONTROL`           | 0x8      | 0x1475008 | 0x4     | 7 (PWC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx0.soc.`SOC_STATUS`            | 0xc      | 0x147500c | 0x4     | 7 (PWC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx0.soc.`WDATA`                 | 0x10     | 0x1475010 | 0x4     | 7 (PWC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx0.soc.`RDATA`                 | 0x14     | 0x1475014 | 0x4     | 7 (PWC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx0.soc.`SOC_DOE_INTR_MSG_ADDR` | 0x18     | 0x1475018 | 0x4     | 7 (PWC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx0.soc.`SOC_DOE_INTR_MSG_DATA` | 0x1c     | 0x147501c | 0x4     | 7 (PWC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |

### RACL configuration for `mbx1` and interface `soc`

- IP: mbx
- Instance base address: 0x1475100
- RACL group: Null


| Name                             | Offset   | Address   | Width   | Policy          | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:---------------------------------|:---------|:----------|:--------|:----------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx1.soc.`SOC_CONTROL`           | 0x8      | 0x1475108 | 0x4     | 7 (PWC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx1.soc.`SOC_STATUS`            | 0xc      | 0x147510c | 0x4     | 7 (PWC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx1.soc.`WDATA`                 | 0x10     | 0x1475110 | 0x4     | 7 (PWC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx1.soc.`RDATA`                 | 0x14     | 0x1475114 | 0x4     | 7 (PWC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx1.soc.`SOC_DOE_INTR_MSG_ADDR` | 0x18     | 0x1475118 | 0x4     | 7 (PWC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx1.soc.`SOC_DOE_INTR_MSG_DATA` | 0x1c     | 0x147511c | 0x4     | 7 (PWC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |

### RACL configuration for `mbx2` and interface `soc`

- IP: mbx
- Instance base address: 0x1475200
- RACL group: Null


| Name                             | Offset   | Address   | Width   | Policy          | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:---------------------------------|:---------|:----------|:--------|:----------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx2.soc.`SOC_CONTROL`           | 0x8      | 0x1475208 | 0x4     | 7 (PWC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx2.soc.`SOC_STATUS`            | 0xc      | 0x147520c | 0x4     | 7 (PWC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx2.soc.`WDATA`                 | 0x10     | 0x1475210 | 0x4     | 7 (PWC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx2.soc.`RDATA`                 | 0x14     | 0x1475214 | 0x4     | 7 (PWC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx2.soc.`SOC_DOE_INTR_MSG_ADDR` | 0x18     | 0x1475218 | 0x4     | 7 (PWC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx2.soc.`SOC_DOE_INTR_MSG_DATA` | 0x1c     | 0x147521c | 0x4     | 7 (PWC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |

### RACL configuration for `mbx3` and interface `soc`

- IP: mbx
- Instance base address: 0x1475300
- RACL group: Null


| Name                             | Offset   | Address   | Width   | Policy          | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:---------------------------------|:---------|:----------|:--------|:----------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx3.soc.`SOC_CONTROL`           | 0x8      | 0x1475308 | 0x4     | 6 (ROT_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx3.soc.`SOC_STATUS`            | 0xc      | 0x147530c | 0x4     | 6 (ROT_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx3.soc.`WDATA`                 | 0x10     | 0x1475310 | 0x4     | 6 (ROT_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx3.soc.`RDATA`                 | 0x14     | 0x1475314 | 0x4     | 6 (ROT_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx3.soc.`SOC_DOE_INTR_MSG_ADDR` | 0x18     | 0x1475318 | 0x4     | 6 (ROT_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |
| mbx3.soc.`SOC_DOE_INTR_MSG_DATA` | 0x1c     | 0x147531c | 0x4     | 6 (ROT_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | - / - | - / -     | - / -      | - / -          | - / -    | - / -         |

### RACL configuration for `mbx4` and interface `soc`

- IP: mbx
- Instance base address: 0x1475400
- RACL group: Null


| Name                             | Offset   | Address   | Width   | Policy          | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:---------------------------------|:---------|:----------|:--------|:----------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx4.soc.`SOC_CONTROL`           | 0x8      | 0x1475408 | 0x4     | 8 (MIO_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx4.soc.`SOC_STATUS`            | 0xc      | 0x147540c | 0x4     | 8 (MIO_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx4.soc.`WDATA`                 | 0x10     | 0x1475410 | 0x4     | 8 (MIO_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx4.soc.`RDATA`                 | 0x14     | 0x1475414 | 0x4     | 8 (MIO_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx4.soc.`SOC_DOE_INTR_MSG_ADDR` | 0x18     | 0x1475418 | 0x4     | 8 (MIO_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |
| mbx4.soc.`SOC_DOE_INTR_MSG_DATA` | 0x1c     | 0x147541c | 0x4     | 8 (MIO_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | R / W | R / W | R / W     | - / -      | - / -          | - / -    | - / -         |

### RACL configuration for `mbx5` and interface `soc`

- IP: mbx
- Instance base address: 0x1475500
- RACL group: Null


| Name                             | Offset   | Address   | Width   | Policy          | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:---------------------------------|:---------|:----------|:--------|:----------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx5.soc.`SOC_CONTROL`           | 0x8      | 0x1475508 | 0x4     | 9 (DUC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | R / W    | R / W         |
| mbx5.soc.`SOC_STATUS`            | 0xc      | 0x147550c | 0x4     | 9 (DUC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | R / W    | R / W         |
| mbx5.soc.`WDATA`                 | 0x10     | 0x1475510 | 0x4     | 9 (DUC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | R / W    | R / W         |
| mbx5.soc.`RDATA`                 | 0x14     | 0x1475514 | 0x4     | 9 (DUC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | R / W    | R / W         |
| mbx5.soc.`SOC_DOE_INTR_MSG_ADDR` | 0x18     | 0x1475518 | 0x4     | 9 (DUC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | R / W    | R / W         |
| mbx5.soc.`SOC_DOE_INTR_MSG_DATA` | 0x1c     | 0x147551c | 0x4     | 9 (DUC_PRIVATE) | - / -     | - / -    | - / -      | - / -    | - / -        | R / W        | R / W | - / - | R / W | R / W     | - / -      | - / -          | R / W    | R / W         |

### RACL configuration for `mbx_pcie0` and interface `soc`

- IP: mbx
- Instance base address: 0x1470100
- RACL group: Null


| Name                                  | Offset   | Address   | Width   | Policy        | NOT_TEE   | M_MODE   | TEE_MODE   | R_CODE   | CAT2_DEBUG   | CAT3_DEBUG   | ROT   | MIO   | PWC   | INT_SOC   | IO_AGENT   | TEE_IO_AGENT   | DUC_UC   | MIMT_R_MODE   |
|:--------------------------------------|:---------|:----------|:--------|:--------------|:----------|:---------|:-----------|:---------|:-------------|:-------------|:------|:------|:------|:----------|:-----------|:---------------|:---------|:--------------|
| mbx_pcie0.soc.`SOC_CONTROL`           | 0x8      | 0x1470108 | 0x4     | 0 (ALL_RD_WR) | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.soc.`SOC_STATUS`            | 0xc      | 0x147010c | 0x4     | 0 (ALL_RD_WR) | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.soc.`WDATA`                 | 0x10     | 0x1470110 | 0x4     | 0 (ALL_RD_WR) | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.soc.`RDATA`                 | 0x14     | 0x1470114 | 0x4     | 0 (ALL_RD_WR) | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.soc.`SOC_DOE_INTR_MSG_ADDR` | 0x18     | 0x1470118 | 0x4     | 0 (ALL_RD_WR) | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |
| mbx_pcie0.soc.`SOC_DOE_INTR_MSG_DATA` | 0x1c     | 0x147011c | 0x4     | 0 (ALL_RD_WR) | R / W     | R / W    | R / W      | R / W    | R / W        | R / W        | R / W | R / W | R / W | R / W     | R / W      | R / W          | R / W    | R / W         |


<!-- END CMDGEN -->
