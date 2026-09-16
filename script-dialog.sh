#!/usr/bin/env bash
# Multi-UI Scripting
# https://github.com/lunarcloud/script-dialog
# LGPL-2.1 license

# Get the directory where this script is located
SCRIPT_DIALOG_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for src in "$SCRIPT_DIALOG_DIR"/*.sh
do
  source "$src"
done
