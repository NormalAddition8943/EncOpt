#!/usr/bin/env bash
set -euo pipefail

if [[ "$#" == 0 ]]; then
  echo "Usage: $0 HANDBRAKE-PRESET.json"
  exit
fi

jq -r '.PresetList[0].PictureWidth' "$1"

jq -r '.PresetList[0].PictureHeight' "$1"

jq -r '.PresetList[0].PicturePAR' "$1"



