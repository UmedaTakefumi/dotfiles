#!/bin/bash -e

current_dir=`pwd`

config_copy(){
  echo "cp -arp ${current_dir}/${setupfilename} ${HOME}/${setupfilename}"
  cp -arp ${current_dir}/${setupfilename} ${HOME}/${setupfilename}
}

config_move(){
  echo "mv ${HOME}/${setupfilename} ${HOME}/${setupfilename}.ORG"
  mv ${HOME}/${setupfilename} ${HOME}/${setupfilename}.ORG
}

echo '#--------------------------------------------------------------'
echo "# setup now ....."

numberline=1
cat setupfiles | while read setupfilename
do
  if [ -e "${HOME}/${setupfilename}" ]; then
    config_copy
    config_move
  else
    config_copy
  fi
  numberline=$((numberline + 1))
done


