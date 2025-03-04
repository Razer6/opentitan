# Rivos' fork of OpenTitan

Maintainer/Owner: Robert Schilling rschilling@rivosinc.com

This OpentTtan (OT) fork is kept in sync with upstream by cherry-picking upstream commits using [util/sync_opentitan_repo.sh](util/sync_opentitan_repo.sh).
The script writes the commit hash of the last cherry-pick into [LAST_OPENTITAN_SYNC](LAST_OPENTITAN_SYNC).

## Notable changes

- `README_RIVOS.md` this file
- `generated_ips` contains IP generated (using OT ipgen) for out of tree usage.
- `hw/top_darjeeling` top for scsrot
  - `hw/top_darjeeling/data/rivos-racl` Rivos RACL configuration
- `hw/top_mio` top for scsmio
- `hw/top_pwc` top for scspwc
- vexpand footer in various `.sv` and `.sv.tpl` files

Other changes can be viewed with
```bash
git diff $(cat LAST_OPENTITAN_SYNC) -- $(git diff $(cat LAST_OPENTITAN_SYNC) --stat --format="" --name-only | grep -v 'autogen\|generated_ips\|hw/top_darjeeling/data/rivos-racl')
```
