# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> ~/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# install fish
brew install fish
fish -c 'curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher'
fish -c 'fisher install pure-fish/pure'

# gcloud
brew install --cask google-cloud-sdk

# python deps
brew install cmake
