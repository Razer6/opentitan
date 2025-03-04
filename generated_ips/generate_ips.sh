#!/bin/bash
# Copyright lowRISC contributors.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
set -euo pipefail

cd "$(dirname "$0")"

rm -rf autogen/lio_rv_plic/
../util/ipgen.py generate \
  -C ../hw/ip_templates/rv_plic/ \
  -c data/lio_rv_plic_cfg.hjson -o autogen/lio_rv_plic
rm -rf autogen/lio_rv_plic/doc
rm -rf autogen/lio_rv_plic/fpv
rm autogen/lio_rv_plic/README.md

rm -rf autogen/lio_alert_handler/
../util/ipgen.py generate \
  -C ../hw/ip_templates/alert_handler/ \
  -c data/lio_alert_handler_cfg.hjson -o autogen/lio_alert_handler
rm -rf autogen/lio_alert_handler/doc
rm -rf autogen/lio_alert_handler/fpv
rm autogen/lio_alert_handler/README.md

for RACLGROUP in lioGrpA lioGrpB lioGrpC lioGrpD ; do
  rm -rf autogen/racl_ctrl_${RACLGROUP}/
  ./generate_racl_ctrl.py --racl-config ../hw/top_darjeeling/data/rivos-racl/racl.hjson --racl-group ${RACLGROUP} --instance-name racl_ctrl_${RACLGROUP} --output data/racl_ctrl_${RACLGROUP}_cfg.hjson
  ../util/ipgen.py generate -C ../hw/ip_templates/racl_ctrl -c data/racl_ctrl_${RACLGROUP}_cfg.hjson -o autogen/racl_ctrl_${RACLGROUP}
  rm -rf autogen/racl_ctrl_${RACLGROUP}/doc
  rm -rf autogen/racl_ctrl_${RACLGROUP}/fpv
  rm -f autogen/racl_ctrl_${RACLGROUP}/README.md
done
