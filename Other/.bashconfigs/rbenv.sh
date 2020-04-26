script_name=rbenv.sh
echo "Loding $script_name ..."

# rbenv'
export RBENV_ROOT="$HOME/Software/rbenv"
export PATH="$RBENV_ROOT/bin:$PATH"

eval "$(rbenv init -)"


