#!/bin/sh

brew_export()  {
  brew leaves > brew.txt
  brew cask list -1 > brew_cask.txt
  ## ref. https://qiita.com/qoAop/items/7b7533c716ba1fa4c16b
}

