# update
sudo apt-get update

# deps
sudo apt-get install -y \
    git \
    fish \
    tmux \
    keychain \
    curl \
    htop \
    rsync \
    inotify-tools

# install gcloud
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get install -y google-cloud-sdk

#install docker
sudo bash -c "$(wget https://get.docker.com/ -O -)"

# docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# vscode
sudo snap install vscode --classic

# change shell
chsh -s /usr/bin/fish

# install fisher + pure
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fish
fisher add rafaelrinaldi/pure
