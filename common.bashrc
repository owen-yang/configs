SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$SCRIPT_DIR/common.shellrc"

alias bashrc="vim \"$HOME/.bashrc\""
alias src="source \"$HOME/.bashrc\""

export OWEN_CONFIGS="$SCRIPT_DIR"
alias owenconfigs="cd $OWEN_CONFIGS"

export OWEN_SCRIPTS="$OWEN_CONFIGS/scripts"
alias owenscripts="cd $OWEN_SCRIPTS"
