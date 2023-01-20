if status is-interactive
    # Commands to run in interactive sessions can go here
end
 
# add homebrew to path
set -x PATH /opt/homebrew/bin $PATH

function dpython
    echo "Waiting for debugger..."
    python -m debugpy --listen localhost:5678 --wait-for-client $argv
end