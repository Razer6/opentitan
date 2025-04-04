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
rm -f  autogen/lio_rv_plic/README.md

rm -rf autogen/lio_alert_handler/
../util/ipgen.py generate \
  -C ../hw/ip_templates/alert_handler/ \
  -c data/lio_alert_handler_cfg.hjson -o autogen/lio_alert_handler
rm -rf autogen/lio_alert_handler/doc
rm -rf autogen/lio_alert_handler/fpv
rm -f  autogen/lio_alert_handler/README.md

rm -rf autogen/lio_pwm/
../util/ipgen.py generate \
  -C ../hw/ip_templates/pwm/ \
  -c data/lio_pwm_cfg.hjson -o autogen/lio_pwm
rm -rf autogen/lio_pwm/doc
rm -rf autogen/lio_pwm/fpv
rm -f  autogen/lio_pwm/README.md

rm -rf autogen/scs_ac_range_check/
../util/ipgen.py generate \
  -C ../hw/ip_templates/ac_range_check/ \
  -c data/scs_ac_range_check_cfg.hjson -o autogen/scs_ac_range_check
rm -rf autogen/scs_ac_range_check/doc
rm -rf autogen/scs_ac_range_check/fpv
rm -f  autogen/scs_ac_range_check/README.md

for RACLGROUP in lioGrpA lioGrpB lioGrpC lioGrpD ; do
  rm -rf autogen/racl_ctrl_${RACLGROUP}/
  ./generate_racl_ctrl.py --racl-config ../hw/top_darjeeling/data/rivos-racl/racl.hjson --racl-group ${RACLGROUP} --top-name darjeeling --instance-name racl_ctrl_${RACLGROUP} --output data/racl_ctrl_${RACLGROUP}_cfg.hjson
  ../util/ipgen.py generate -C ../hw/ip_templates/racl_ctrl -c data/racl_ctrl_${RACLGROUP}_cfg.hjson -o autogen/racl_ctrl_${RACLGROUP}
  rm -rf autogen/racl_ctrl_${RACLGROUP}/doc
  rm -rf autogen/racl_ctrl_${RACLGROUP}/fpv
  rm -f  autogen/racl_ctrl_${RACLGROUP}/README.md
done
