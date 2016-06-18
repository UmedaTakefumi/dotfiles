script_name=golang.sh
echo "Loding $script_name ..."

# As of go 1.2, a valid GOPATH is required to use the `go get` command:
#   https://golang.org/doc/code.html#GOPATH
# 
# You may wish to add the GOROOT-based install location to your PATH:
#   export PATH=$PATH:/usr/local/opt/go/libexec/bin

if [ -e ${HOME}/Data/Develop-AZ/Library/gocode ]; then
#  export GOROOT=/usr/local/Cellar/go/1.3.3/libexec/
  export GOPATH=$HOME/Data/Develop-AZ/Library/gocode
else
  mkdir -p ${HOME}/Data/Develop-AZ/Library/gocode
fi

export PATH=$PATH:/usr/local/opt/go/libexec/bin
