DOTFILES_STANDARD_PATH=$HOME/Data/repos/github.com/UmedaTakefumi/dotfiles

#a  () { }
#b  () {  }
c  ()	{ clear }
#d  () {  }
#e  () {  }
#f  () {  }
g  ()   { cd $(ghq root)/$(ghq list) | peco }
gb ()	{ git branch --contains=HEAD }
gc ()   { git checkout $* }
gh ()   { ghq get $* }
gom ()  { git push origin master $* }
gp ()   { git pull $* }
gs ()	{ git status }
h  ()   { history }
#i  () {  }
#j  () {  }
#k  () {  }
l  ()   { ls -lasF $* }
#m  () {  }
#n  () {  }
#o  () {  }
p  ()   { python }
#q  () {  }
#r  () {  }
#s  () {  }
t  () { tree }
ta () { tree -a}
tg () { 
  pwd;find . | sort | sed '1d;s/^\.//;s/\/\([^/]*\)$/|--\1/;s/\/[^/|]*/|  /g' 
  ## ref: https://qiita.com/yone098@github/items/bba8a42de6b06e40983b
}
#u  () {  }
v  ()   {
  if [ -e $HOME/.vimconfigs/config.vim ]; then
    vim -u $HOME/.vimconfigs/config.vim $*

  elif [ -e $DOTFILES_STANDARD_PATH/.vimconfigs/config.vim ]; then
    vim -u $DOTFILES_STANDARD_PATH/.vimconfigs/config.vim $*

  else
    vim $*

  fi

}
#w  () {  }
#x  () {  }
#y  () {  }
#z  () {  }
