RAND_CHAR=`cat /dev/urandom | LC_ALL=C  tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1`


L1='\[\e[$[COLUMNS-$(echo -n " [\u@\h]" | wc -c)]C\e[m[\u@\h]\e[\e[$[COLUMNS]D\]'
PS1="[\w]\n$RAND_CHAR:$ "

#function cd () {
#  clear
#  builtin cd $1
#  echo [`pwd`]
#  ll
#}

#PS1="$RAND_CHAR:$ "

# 参考情報
# http://d.hatena.ne.jp/foosin/20090720/1248060010
