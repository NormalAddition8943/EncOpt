#!/usr/bin/env bash
set -euo pipefail

if [[ "$#" == 0 ]]; then
  echo "Usage: $0 HANDBRAKE-PRESET.json"
  exit
fi

jq -r '.PresetList[0].VideoOptionExtra' "$1" \
 | sed 's/:/ /g' \
 | xargs -n1 \
 | sort -u
