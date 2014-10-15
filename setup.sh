#!/bin/bash

current_dir=`pwd`
setuplist=()

func_link(){
  echo "ln -s $value/${setupfilename} ${HOME}/${setupfilename}"
  ln -s $value/${setupfilename} ${HOME}/${setupfilename}
}

func_unlink(){
  echo "unlink ${HOME}/${setupfilename}"
  unlink ${HOME}/${setupfilename}
}

while read f; do
  setuplist+=("$f")
done < <(find `pwd` -name 'UmedaTakefumi.*' -maxdepth 1 -mindepth 1)

for value in ${setuplist[@]}
do
  echo '#--------------------------------------------------------------'
  echo "# $value / setup now ....."
  cd $value

  numberline=1
  cat setupfile.config | while read setupfilename
  do
    if [ -e "${HOME}/${setupfilename}" ]; then
      func_unlink
      func_link
    else
      func_link
    fi
      
    numberline=$((numberline + 1))
  done

  cd $current_dir 
done


