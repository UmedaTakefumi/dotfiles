script_name=golang.sh
echo "Loding $script_name ..."


if [ -e ${HOME}/Data/Develop-AZ/Library/gocode ]; then
  
else
  mkdir -p ${HOME}/Data/Develop-AZ/Library/gocode
fi

export GOPATH=$HOME/Data/Develop-AZ/Library/gocode
