script_name=golang.sh
echo "Loding $script_name ..."

if [ ! -d ${HOME}/Data/Develop-AZ/Library/gocode ]; then
  
  mkdir -p ${HOME}/Data/Develop-AZ/Library/gocode

fi

export GOPATH=$HOME/Data/Develop-AZ/Library/gocode
