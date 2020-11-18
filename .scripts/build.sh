#!/bin/sh

echo "00. init dir and download archive"
mkdir -p ~/Data/repos
mkdir -p ~/{tmp,Dockers,Develop-AZ,GoogleDrive,OneDrive,Vagrant,Logs}
cd ~/tmp
curl -OL https://github.com/UmedaTakefumi/dotfiles/archive/master.zip

echo "01. install brew"
## ref. https://brew.sh/index_ja
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "02. install app-list/brew"
xargs brew install < brew.txt 

echo "03. install app-list/brew-cask"
xargs brew cask install < brew_cask.txt

## ref. https://qiita.com/UmedaTakefumi/items/c81e596b246e48aa2c16
pyenv install -l | grep -E "\s3.[0-9.]+$" | sort -nr | head -2 | xargs -I{} pyenv install {}
#pyenv install -l | grep -E "\s3.[0-9.]+$" | sort -nr | head -10 | xargs -I{} pyenv install {}

