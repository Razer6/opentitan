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


## RACL configuration

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


<!-- END CMDGEN -->
