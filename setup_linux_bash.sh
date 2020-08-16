#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cp $SCRIPT_DIR/common.tmux.conf ~/.tmux.conf
cp $SCRIPT_DIR/vimrc ~/.vimrc

OWEN_CONFIGS_WATERMARK="# OWEN_CONFIGS_SETUP"
if ! grep -q "$OWEN_CONFIGS_WATERMARK" "$HOME/.bashrc"; then
    echo "" >> "$HOME/.bashrc"
    echo "$OWEN_CONFIGS_WATERMARK" >> "$HOME/.bashrc"
    echo "source $SCRIPT_DIR/linux.bashrc" >> "$HOME/.bashrc"
fi
