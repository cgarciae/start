#----------------------------------------------------------------------
# poetry
#----------------------------------------------------------------------
set -x PATH ~/.local/bin $PATH

#----------------------------------------------------------------------
# pyenv
#----------------------------------------------------------------------
set -x PYENV_ROOT $HOME/.pyenv
command -v pyenv >/dev/null || set -x PATH $PYENV_ROOT/bin $PATH
pyenv init - | source

function dpython
    echo "Waiting for debugger..."
    python -m debugpy --listen localhost:5678 --wait-for-client $argv
end

function tpu-device
    TPU_CHIPS_PER_PROCESS_BOUNDS=1,1,1 TPU_PROCESS_BOUNDS=1,1,1 TPU_VISIBLE_DEVICES=$argv[1] $argv[2..]
end

starship init fish | source
