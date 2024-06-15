SCRIPT_DIR="$( cd "$( dirname "${(%):-%N}" )" && pwd )"

. "$SCRIPT_DIR/common.shellrc"

alias zshrc="vim \"$HOME/.zshrc\""
alias src=". \"$HOME/.zshrc\""

export OWEN_CONFIGS="$SCRIPT_DIR"
alias owenconfigs="cd $OWEN_CONFIGS"

export OWEN_SCRIPTS="$OWEN_CONFIGS/scripts"
alias owenscripts="cd $OWEN_SCRIPTS"

autoload -U select-word-style
select-word-style bash

# Ctrl-LeftArrow/Ctrl-RightArrow
bindkey ";5C" forward-word
bindkey ";5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Home/End/Delete
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[3~" delete-char

# See 'man zshoptions' for option descriptions
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS

