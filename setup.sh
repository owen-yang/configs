#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cp $SCRIPT_DIR/common.tmux.conf ~/.tmux.conf
cp $SCRIPT_DIR/vimrc ~/.vimrc
