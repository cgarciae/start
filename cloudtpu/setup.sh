# deps
sudo apt-add-repository -y ppa:fish-shell/release-3
sudo apt update

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

# create ssh key
ssh-keygen -t ed25519 -C "cgarcia.e88@gmail.com" -f ~/.ssh/id_ed25519 -q -N ""
cat ~/.ssh/id_ed25519.pub

# pyenv
curl https://pyenv.run | bash
