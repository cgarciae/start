# update
sudo dnf -y update

# openssl
sudo dnf install -y openssl

# pyenv + peotry
sudo dnf install -y make gcc zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel tk-devel libffi-devel xz-devel    

# pyenv
curl https://pyenv.run | bash
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc

exec $SHELL

PYENV_VERSION="3.8.1"
pyenv install $PYENV_VERSION
pyenv global $PYENV_VERSION

# poetry
sudo dnf install -y poetry
poetry config virtualenvs.in-project true

# install fisher + pure
sudo dnf install -y fish
fish
fisher install rafaelrinaldi/pure

# change shell
sudo dnf install -y util-linux-user
chsh -s /usr/bin/fish


# vscode
sudo dnf install -y snapd
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install code --classic

# flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub -y \
  com.getferdi.Ferdi \
  com.microsoft.Teams \
  us.zoom.Zoom \
  com.slack.Slack

