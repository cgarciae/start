

# deps
sudo apt-add-repository -y ppa:fish-shell/release-3
sudo apt update

# python
sudo apt-get install -y make cmake python-is-python3

# poetry
pip install poetry
~/.local/bin/poetry config virtualenvs.in-project true

# create ssh key
ssh-keygen -t ed25519 -C "cgarcia.e88@gmail.com" -f ~/.ssh/id_ed25519 -q -N ""

# fish
sudo apt install -y fish
fish -c 'curl -sL https://git.io/fisher | source'
fish -c 'fisher install jorgebucaran/fisher'
fish -c 'fisher install pure-fish/pure'

# git
git config --global user.name "Cristian Garcia"
git config --global user.email "cgarcia.e88@gmail.com"
