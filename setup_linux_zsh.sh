#!/usr/bin/env zsh

SCRIPT_DIR="$( cd "$( dirname "${(%):-%N}" )" && pwd )"

WATERMARK_SLUG="OWEN_CONFIGS_SETUP"

WATERMARK="# $WATERMARK_SLUG"
file="$HOME/.zshrc"
if ! grep -qs "$WATERMARK" "$file"; then
    echo "" >> "$file"
    echo "$WATERMARK" >> "$file"
    echo ". \"$SCRIPT_DIR/linux.bashrc\"" >> "$file"
    echo "" >> "$file"
fi

WATERMARK="\" $WATERMARK_SLUG"
file="$HOME/.vimrc"
if ! grep -qs "$OWEN_CONFIGS_WATERMARK_VIMRC" "$file"; then
    echo "" >> "$file"
    echo "$WATERMARK" >> "$file"
    echo "source $SCRIPT_DIR/vimrc" >> "$file"
    echo "" >> "$file"
fi

WATERMARK="# $WATERMARK_SLUG"
file="$HOME/.tmux.conf"
if ! grep -qs "$WATERMARK" "$file"; then
    echo "" >> "$file"
    echo "$WATERMARK" >> "$file"
    echo "source \"$SCRIPT_DIR/common.tmux.conf\"" >> "$file"
    echo "" >> "$file"
fi

