#!/bin/bash
set -euo pipefail

REMOTE_REPO="OT"
CONTINUE_MODE=false

# Parse command-line arguments
while [[ $# -gt 0 ]]; do
  case "$1" in
    --remote)
      REMOTE_REPO="$2"
      shift 2
      ;;
    --continue)
      CONTINUE_MODE=true
      shift
      ;;
    *)
      break
      ;;
  esac
done

# Get the absolute path to the script's directory
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Construct the absolute path to the LAST_SYNC file
LAST_SYNC_FILENAME="LAST_OPENTITAN_SYNC"
LAST_SYNC_FILE="$SCRIPT_DIR/../$LAST_SYNC_FILENAME"

echo "OT Sync: Script directory: $SCRIPT_DIR"
echo "OT Sync: LAST_SYNC file: $LAST_SYNC_FILE"

cd "${SCRIPT_DIR}/.." || exit 1

if ! git config "remote.${REMOTE_REPO}.url" > /dev/null; then
  echo "OT Sync: Remote '$REMOTE_REPO' not found"
  echo "Please run the following command:"
  echo ""
  echo "git remote add $REMOTE_REPO https://github.com/lowRISC/opentitan.git && git remote set-url --push $REMOTE_REPO no_push"
  echo ""
  exit 1
fi

# Read the last synced SHA from the LAST_SYNC file
LAST_SYNC=$(cat "$LAST_SYNC_FILE")
echo "OT Sync: Last synced SHA: $LAST_SYNC"

# Fetch the latest changes from the remote repository
git fetch $REMOTE_REPO
echo "OT Sync: Fetched latest changes from $REMOTE_REPO"

# Determine the latest remote commit SHA
LATEST_REMOTE_SHA=$(git rev-parse --short $REMOTE_REPO/master)
echo "OT Sync: Latest remote SHA: $LATEST_REMOTE_SHA"

# Check if there are new commits to cherry-pick
if [[ "$LAST_SYNC" != "$LATEST_REMOTE_SHA" ]]; then
    echo "OT Sync: New commits detected. Cherry-picking..."

    if $CONTINUE_MODE; then
        echo "OT Sync: Continuing cherry-pick..."
        git cherry-pick --continue
        if [ $? -ne 0 ]; then
            echo "OT Sync: Cherry-pick failed."
            echo "OT Sync: Resolve conflict manually."
            echo "OT Sync: Continue with ./sync_opentitan_repo.sh --continue"
            exit 1
        fi
        echo "OT Sync: Cherry-pick finished after continue mode."
    else
      # Cherry-pick commits between the last sync and the latest remote commit, skipping empty commits
      git cherry-pick --empty drop $LAST_SYNC..$REMOTE_REPO/master

      if [ $? -ne 0 ]; then
          echo "OT Sync: Cherry-pick failed."
          echo "OT Sync: Resolve conflict manually."
          echo "OT Sync: Continue with ./sync_opentitan_repo.sh --continue"
          exit 1
      fi
      echo "OT Sync: Cherry-picked commits"
    fi

    # Update the LAST_SYNC file with the latest remote SHA
    echo "$LATEST_REMOTE_SHA" > "$LAST_SYNC_FILE"
    echo "OT Sync: Updated $LAST_SYNC_FILENAME file to: $LATEST_REMOTE_SHA"

    # Create a new commit to update the LAST_SYNC file with a descriptive message
    git commit -s -m "[ot-sync] Update $LAST_SYNC_FILENAME: Synced to $LATEST_REMOTE_SHA" --only "$LAST_SYNC_FILE"
    echo "OT Sync: Created commit to update $LAST_SYNC_FILENAME"
else
    echo "No new commits to cherry-pick."
fi
