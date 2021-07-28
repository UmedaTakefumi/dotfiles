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
#t  () {  }
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
