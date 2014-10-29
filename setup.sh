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

#func_git_submodule_setup

#while read f; do
#  setuplist+=("$f")
#done < <(find `pwd` -name 'UmedaTakefumi.*' -maxdepth 1 -mindepth 1)

#for value in ${setuplist[@]}
#do
  echo '#--------------------------------------------------------------'
  echo "# setup now ....."
#  cd $value

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

#  cd $current_dir 
#done


