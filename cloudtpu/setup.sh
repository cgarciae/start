#------ USAGE-----------------
# curl https://raw.githubusercontent.com/cgarciae/start/master/cloudtpu/setup.sh | bash
# curl https://raw.githubusercontent.com/cgarciae/start/master/cloudtpu/config.fish -o ~/.config/fish/config.fish
#-----------------------------

# deps
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-add-repository -y ppa:fish-shell/release-3
sudo apt update
sudo apt-get install git -y

# python
sudo apt-get install -y \
  make cmake python-is-python3 libssl-dev libffi-dev \
  libsqlite3-dev libedit-dev libncurses5-dev libbz2-dev

# poetry
pip install poetry
~/.local/bin/poetry config virtualenvs.in-project true

# fish
sudo apt install -y fish
fish -c 'curl -sL https://git.io/fisher | source && fisher install pure-fish/pure'

# git
git config --global user.name "Cristian Garcia"
git config --global user.email "cgarcia.e88@gmail.com"

# pyenv
curl https://pyenv.run | bash

# go (needed for jax-smi)
sudo apt-get install -y golang

# create ssh key
echo ''
echo Add this ssh key to github:
ssh-keygen -t ed25519 -C "cgarcia.e88@gmail.com" -f ~/.ssh/id_ed25519 -q -N ""
cat ~/.ssh/id_ed25519.pub
