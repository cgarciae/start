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
sudo apt-get install vim csh flex gfortran libgfortran5 g++ \
                     cmake xorg-dev patch zlib1g-dev libbz2-dev \
                     libboost-all-dev openssh-server libcairo2 \
                     libcairo2-dev libeigen3-dev lsb-core \
                     lsb-base net-tools network-manager \
                     xclip gdebi-core
                     

# https://www.pyimagesearch.com/2017/09/25/configuring-ubuntu-for-deep-learning-with-python/
sudo apt-get install build-essential cmake git unzip pkg-config \
    libjpeg-dev libtiff5-dev libpng-dev \
    libavcodec-dev libavformat-dev libswscale-dev libv4l-dev \
    libxvidcore-dev libx264-dev \
    libgtk-3-dev \
    libhdf5-dev graphviz \
    libopenblas-dev libatlas-base-dev gfortran \
    python-tk python3-tk python-pil.imagetk \
    python3-dev


# install gcloud
echo "deb http://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get install -y google-cloud-sdk

#install docker
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
    
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
   
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER

# docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# vscode
sudo apt install -y snapd
sudo snap install code --classic

# pyenv + peotry
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
    xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
    
curl https://pyenv.run | bash
# install desired version
PYENV_VERSION="3.7.9"
pyenv install $PYENV_VERSION
pyenv global $PYENV_VERSION
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python
poetry config virtualenvs.in-project true


# change shell
chsh -s /usr/bin/fish

# install fisher + pure
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fish
fisher add rafaelrinaldi/pure
