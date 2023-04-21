#!/bin/bash

# Get the full path of the script
SCRIPT_PATH="$(readlink -f "$0")"

# Get the directory name of the script
SCRIPT_DIR="$(dirname "$SCRIPT_PATH")"

# Initialize a variable to keep track of whether any symbolic links were created
links_created=false

if [ ! -f ~/.gitconfig ]; then
    ln -sn "${SCRIPT_DIR}/.gitconfig" ~/.gitconfig
    echo "Created symbolic link for .gitconfig"
    links_created=true
fi

if [ ! -f ~/.config/starship.toml ]; then
    ln -sn "${SCRIPT_DIR}/starship.toml" ~/.config/starship.toml
    echo "Created symbolic link for starship.toml"
    links_created=true
fi

if ! $links_created; then
    echo "No symbolic links were created"
fi

