SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $SCRIPT_DIR/common.bashrc

alias ls="ls -lh --color=always"

alias watch="watch -n 0.5"
alias watchproc="watch \"ps -ef | grep\""
