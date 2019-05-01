# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/cristian/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker docker-compose zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# SPACESHIP
export SPACESHIP_KUBECONTEXT_SHOW=false
export SPACESHIP_EXEC_TIME_SHOW=true




# cuda
export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export CUDA_HOME=/usr/local/cuda
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/cristian/libs/TensorRT-3.0.4/targets/x86_64-linux-gnu/lib

# go
export GOPATH=$HOME/.go

# rust
PATH=$PATH:$HOME/.cargo/bin

###############
### kiwi 
###############

# aws
#export AWS_ACCESS_KEY_ID=AKIAIHWHRSIRQICHXDIA
#export AWS_SECRET_ACCESS_KEY=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

# gcp
#export GOOGLE_APPLICATION_CREDENTIALS=/data/.gcp/kiwi-dev-666.json

###############
### wildfire 
###############

# aws
#export AWS_ACCESS_KEY_ID=AKIAJXQCS2AKMSJFLH5A
#export AWS_SECRET_ACCESS_KEY=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

# gcp
export GOOGLE_APPLICATION_CREDENTIALS=/data/.gcp/wildfire.json


###############
### bigbang
###############

# gcp
#export GOOGLE_APPLICATION_CREDENTIALS=/data/.gcp/bigbang.json





# keychain
keychain /data/.ssh/lenovo
. ~/.keychain/`uname -n`-sh

source "/home/cristian/.oh-my-zsh/custom/themes/spaceship.zsh-theme"


# anaconda
export PATH="/home/cristian/anaconda3/bin:$PATH"
source activate root

# pyenv
#export PATH="/home/cristian/.pyenv/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

# aliases
#alias dcr="docker-compose run"


# fish
#fish

