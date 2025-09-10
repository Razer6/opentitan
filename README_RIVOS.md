# Rivos' fork of OpenTitan

Maintainer/Owner: Robert Schilling rschilling@rivosinc.com

# Updating OpenTitan

This OpentTtan (OT) fork is kept in sync with upstream by cherry-picking upstream commits using [util/rivos/sync_opentitan_repo.sh](util/rivos/sync_opentitan_repo.sh).
The script writes the commit hash of the last cherry-pick into [LAST_OPENTITAN_SYNC](LAST_OPENTITAN_SYNC).

Steps to follow when updating:

- opentitan repository:
  - Check if there are any changes to `toplevel.sv.tpl` or other topgen-related template changes and copy them to the other top templates (e.g., pwc, mio).
  - Update all other Rivos tops based on the toplevel template changes: e.g., top_pwc, top_mio
  - `make -C hw top_and_cmdgen regs`
  - `generated_ips/generate_ips.sh`
- rvsys repository:
  - `rvscs/scripts/genHdrALL.sh`
  - `rvscs/dv/tests/tools/scsctl.py build --destination rvscs/images`
  - `rvscs/dv/tests/tools/scsctl.py build --otp-image otp_gb0_imgs`

## Notable changes

- `README_RIVOS.md` this file
- `generated_ips` contains IP generated (using OT ipgen) for out of tree usage.
- `hw/top_darjeeling` top for scsrot
  - `hw/top_darjeeling/data/rivos-racl` Rivos RACL configuration
- `hw/top_mio` top for scsmio
- `hw/top_pwc` top for scspwc
- vexpand footer in various `.sv` and `.sv.tpl` files
- `util/rivos/` Tools for Rivos-internal usages based on OpenTitan tooling

Other changes can be viewed with
```bash
git diff $(cat LAST_OPENTITAN_SYNC) -- $(git diff $(cat LAST_OPENTITAN_SYNC) --stat --format="" --name-only | grep -v 'autogen\|generated_ips\|hw/top_darjeeling/data/rivos-racl\|hw/top_pwc\|hw/top_mio\|util/rivos)
```
