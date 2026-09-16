#!/usr/bin/env bash
# Multi-UI Scripting
# https://github.com/lunarcloud/script-dialog
# LGPL-2.1 license

# get the directories
SCRIPT_DIALOG_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CURRENT_FILE="$(realpath -- "${BASH_SOURCE[0]}")"

#sources everything, excludes current file
for src in ./*.sh
do
  [[ "$(realpath -- "$src")" == "$CURRENT_FILE" ]] && continue
  source "$src" || exit 1
  echo "$src"
done

# the rest goes there
datepicker
