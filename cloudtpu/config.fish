#----------------------------------------------------------------------
# poetry
#----------------------------------------------------------------------
set -x PATH ~/.local/bin $PATH

#----------------------------------------------------------------------
# pyenv
#----------------------------------------------------------------------
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
status --is-interactive; and pyenv init --path | source
status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source

function dpython
    echo "Waiting for debugger..."
    python -m debugpy --listen localhost:5678 --wait-for-client $argv
end
