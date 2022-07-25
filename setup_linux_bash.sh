#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

OWEN_CONFIGS_WATERMARK_BASH="# OWEN_CONFIGS_SETUP"
if ! grep -qs "$OWEN_CONFIGS_WATERMARK_BASH" "$HOME/.bashrc"; then
    echo "" >> "$HOME/.bashrc"
    echo "$OWEN_CONFIGS_WATERMARK_BASH" >> "$HOME/.bashrc"
    echo "source \"$SCRIPT_DIR/linux.bashrc\"" >> "$HOME/.bashrc"
    echo "" >> "$HOME/.bashrc"
fi

OWEN_CONFIGS_WATERMARK_VIMRC="\" OWEN_CONFIGS_SETUP"
if ! grep -qs "$OWEN_CONFIGS_WATERMARK_VIMRC" "$HOME/.vimrc"; then
    echo "" >> "$HOME/.vimrc"
    echo "$OWEN_CONFIGS_WATERMARK_VIMRC" >> "$HOME/.vimrc"
    echo "source $SCRIPT_DIR/vimrc" >> "$HOME/.vimrc"
    echo "" >> "$HOME/.vimrc"
fi

OWEN_CONFIGS_WATERMARK_TMUX="# OWEN_CONFIGS_SETUP"
if ! grep -qs "$OWEN_CONFIGS_WATERMARK_TMUX" "$HOME/.tmux.conf"; then
    echo "" >> "$HOME/.tmux.conf"
    echo "$OWEN_CONFIGS_WATERMARK_TMUX" >> "$HOME/.tmux.conf"
    echo "source \"$SCRIPT_DIR/common.tmux.conf\"" >> "$HOME/.tmux.conf"
    echo "" >> "$HOME/.tmux.conf"
fi

