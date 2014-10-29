script_name=golang.sh
echo "Loding $script_name ..."

if [ -e ${HOME}/Data/Develop-AZ/Library/gocode ]; then
  export GOROOT=/usr/local/Cellar/go/1.3.3/libexec/
  export GOPATH=$HOME/Data/Develop-AZ/Library/gocode
else
  mkdir -p ${HOME}/Data/Develop-AZ/Library/gocode
fi

