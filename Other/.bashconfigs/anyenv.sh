script_name=anyenv.sh
echo "Loding $script_name ..."

export PATH="$HOME/Software/anyenv/bin:$PATH"
eval "$(anyenv init -)"
exec $SHELL -l


