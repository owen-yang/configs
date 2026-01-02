#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

WATERMARK_SLUG="OWEN_CONFIGS_SETUP"

WATERMARK="# $WATERMARK_SLUG"
file="$HOME/.bashrc"
if ! grep -qs "$WATERMARK" "$file"; then
    echo "" >> "$file"
    echo "$WATERMARK" >> "$file"
    echo ". \"$SCRIPT_DIR/linux.bashrc\"" >> "$file"
    echo "" >> "$file"
fi

WATERMARK="\" $WATERMARK_SLUG"
file="$HOME/.vimrc"
if ! grep -qs "$WATERMARK" "$file"; then
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

