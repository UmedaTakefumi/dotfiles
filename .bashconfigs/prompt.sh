RAND_CHAR=`cat /dev/urandom | LC_ALL=C  tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1`
PS1="$RAND_CHAR : $"


