# update
sudo dnf -y update

# nvidia
sudo dnf config-manager --add-repo=https://negativo17.org/repos/fedora-nvidia.repo
sudo dnf -y install nvidia-driver nvidia-settings

# nvidia-containers
# https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html
curl -s -L https://nvidia.github.io/nvidia-docker/centos8/nvidia-docker.repo | sudo tee /etc/yum.repos.d/nvidia-docker.repo
sudo dnf install -y nvidia-container-toolkit
sudo sed -i 's/^#no-cgroups = false/no-cgroups = true/;' /etc/nvidia-container-runtime/config.toml

# docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo dnf install -y podman-docker
sudo systemctl start podman.socket

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
fisher install pure-fish/pure

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

# fix gestures
# install touche: https://github.com/JoseExposito/touchegg#red-hat-fedora-and-derivatives
# install flatpak: flatpak install -y flathub com.github.joseexposito.touche
# install gnome-extension: https://extensions.gnome.org/extension/4033/x11-gestures/
