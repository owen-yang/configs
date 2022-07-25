SCRIPT_DIR="$( cd "$( dirname "${(%):-%N}" )" && pwd )"

source "$SCRIPT_DIR/common.shellrc"

alias zshrc="vim \"$HOME/.zshrc\""
alias src="source \"$HOME/.zshrc\""

export OWEN_CONFIGS="$SCRIPT_DIR"
alias owenconfigs="cd $OWEN_CONFIGS"

export OWEN_SCRIPTS="$OWEN_CONFIGS/scripts"
alias owenscripts="cd $OWEN_SCRIPTS"
