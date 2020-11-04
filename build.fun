# ref. https://qiita.com/qoAop/items/7b7533c716ba1fa4c16b
brew_export()  {

  brew leaves > brew.txt
  brew cask list -1 > brew_cask.txt
}

# ref: https://qiita.com/UmedaTakefumi/items/fe02d17264de6c78443d
os_platform() {

  if [ $(uname) = "Darwin" ]; then

    os_type='mac'
    return $os_type

  else
    echo "Your platform ($(uname -a)) is not supported."
    exit 1
  fi

}

