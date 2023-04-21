#!/bin/bash

# Get the full path of the script
SCRIPT_PATH="$(readlink -f "$0")"

# Get the directory name of the script
SCRIPT_DIR="$(dirname "$SCRIPT_PATH")"

if [ ! -f ~/.gitconfig ]; then
    echo "ln -sn ${SCRIPT_DIR}/.gitconfig ~/.gitconfig"
fi

