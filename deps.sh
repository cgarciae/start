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

# install fisher + pure
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fish
fisher add rafaelrinaldi/pure

# install gcloud
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get install -y google-cloud-sdk

#install docker
bash -c "$(wget https://get.docker.com/ -O -)"

# docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# nvidia-docker
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | \
  sudo apt-key add -
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | \
  sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt-get update
sudo apt-get install nvidia-docker2

# go to downloads
CUR_DIR=$(pwd)
cd ~/Downloads

# install anaconda
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda3

# back to folder
cd $CUR_DIR

# change shell
chsh -s /usr/bin/tmux
