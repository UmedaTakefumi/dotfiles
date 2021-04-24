#!/bin/sh

## 
## 
## 
function usage() {
  echo "
    usage: ${0} [options]
    options:
      -c, --clean clean for dotfiles
      -m, --make-repo fix-dotfiles and add repo
      -s, --setup setup dotfiles
      -h, --help  Show this help.
  " | sed -E 's/^ {4}//'
  exit 1
  # return -1
}

## 
## 
## 
while [[ "${1}" ]]; do
  case "${1}" in
    -h | --help)
      usage
      exit 0
      ;;
    -c | --clean)
      shift
      ;;
      -v | --version)
      echo "${0} version $appversion"
      # shift
      break
      ;;
    -*)
      dotfiles "unrecognized option: ${1}"
     break
      ;;
    *)
        echo "using other files"
        shift
    #   break
      ;;
  esac
  shift
done

## ref:
##  https://github.com/pacav69/homebrew-homebrew-caskroom-offline-installer/blob/master/olinst
