script_name=bash_completion.sh
echo "Loding $script_name ..."

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi


