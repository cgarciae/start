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
    inotify-tools \
    zlib1g-dev \
    build-essential
    
    
# https://medium.com/@IsaacJK/setting-up-a-ubuntu-18-04-1-lts-system-for-deep-learning-and-scientific-computing-fab19f7ca39d
sudo apt-get install vim csh flex gfortran libgfortran3 g++ \
                     cmake xorg-dev patch zlib1g-dev libbz2-dev \
                     libboost-all-dev openssh-server libcairo2 \
                     libcairo2-dev libeigen3-dev lsb-core \
                     lsb-base net-tools network-manager \
                     git-core git-gui git-doc xclip gdebi-core
                     

# https://www.pyimagesearch.com/2017/09/25/configuring-ubuntu-for-deep-learning-with-python/
sudo apt-get install build-essential cmake git unzip pkg-config \
    libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev \
    libavcodec-dev libavformat-dev libswscale-dev libv4l-dev \
    libxvidcore-dev libx264-dev \
    libgtk-3-dev \
    install libhdf5-serial-dev graphviz \
    libopenblas-dev libatlas-base-dev gfortran \
    python-tk python3-tk python-imaging-tk \
    python3-dev \


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

# pyenv deps
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
    xz-utils tk-dev libffi-dev liblzma-dev python-openssl git

# pyenv + peotry
curl https://pyenv.run | bash
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python


# change shell
chsh -s /usr/bin/fish

# install fisher + pure
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fish
fisher add rafaelrinaldi/pure
