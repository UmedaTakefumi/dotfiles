#!/bin/bash

current_dir=`pwd`
setuplist=()

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
    echo "ln -s $value/${setupfilename} ${HOME}/${setupfilename}"
    ln -s $value/${setupfilename} ${HOME}/${setupfilename}
    numberline=$((numberline + 1))
  done

  cd $current_dir 
done


