#!/bin/bash -e

current_dir=`pwd`

func_link(){
  echo "ln -s ${current_dir}/${setupfilename} ${HOME}/${setupfilename}"
  ln -s ${current_dir}/${setupfilename} ${HOME}/${setupfilename}
}

func_unlink(){
  echo "unlink ${HOME}/${setupfilename}"
  unlink ${HOME}/${setupfilename}
}

echo '#--------------------------------------------------------------'
echo "# setup now ....."

numberline=1
cat setupfiles | while read setupfilename
do
  if [ -e "${HOME}/${setupfilename}" ]; then
    func_unlink
    func_link
  else
    func_link
  fi
  numberline=$((numberline + 1))
done


