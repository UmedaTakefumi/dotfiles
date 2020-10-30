#!/bin/sh

echo "00. install brew"
## ref. https://brew.sh/index_ja
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "01. install app-list/brew"
## export:
##   $ brew leaves > brew.txt
## 
## ref. https://qiita.com/qoAop/items/7b7533c716ba1fa4c16b
## 
xargs brew install < brew.txt 

echo "02. install app-list/brew-cask"
## export: 
## 		$ brew cask list -1 > brew_cask.txt
##
## ref. https://qiita.com/qoAop/items/7b7533c716ba1fa4c16b
## 
xargs brew cask install < brew_cask.txt


