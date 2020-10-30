#!/bin/sh

echo "00. init dir and download archive"
mkdir -p ~/Data/repos
mkdir -p ~/{tmp,Dockers,Develop-AZ,GoogleDrive,OneDrive,Vagrant}
cd ~/tmp
curl -OL https://github.com/UmedaTakefumi/dotfiles/archive/master.zip

echo "01. install brew"
## ref. https://brew.sh/index_ja
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "02. install app-list/brew"
## export:
##   $ brew leaves > brew.txt
## 
## ref. https://qiita.com/qoAop/items/7b7533c716ba1fa4c16b
## 
xargs brew install < brew.txt 

echo "03. install app-list/brew-cask"
## export: 
## 		$ brew cask list -1 > brew_cask.txt
##
## ref. https://qiita.com/qoAop/items/7b7533c716ba1fa4c16b
## 
xargs brew cask install < brew_cask.txt

