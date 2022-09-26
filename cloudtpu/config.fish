set -x PATH ~/.local/bin $PATH

function dpython
    echo "Waiting for debugger..."
    python -m debugpy --listen localhost:5678 --wait-for-client $argv
end