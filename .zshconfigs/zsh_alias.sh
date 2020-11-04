DOTFILES_STANDARD_PATH=$HOME/Data/repos/github.com/UmedaTakefumi/dotfiles

#a  () { }
#b  () {  }
#c  () {  }
#d  () {  }
#e  () {  }
#f  () {  }
g  () { cd $(ghq root)/$(ghq list) | peco }
gc () { git checkout }
gh () { ghq get }
gom () { git push origin master }
gp () { git pull  }
h  () { history }
#i  () {  }
#j  () {  }
#k  () {  }
l  () { ls -lasF }
#m  () {  }
#n  () {  }
#o  () {  }
p  () { python }
#q  () {  }
#r  () {  }
#s  () {  }
#t  () {  }
#u  () {  }
v  () {
  if [ -e $HOME/.vimconfigs/all.vim ]; then

    vim -u $HOME/.vimconfigs/all.vim

  elif [ -e $DOTFILES_STANDARD_PATH/.vimconfigs/all.vim ]; then
    
    vim -u $DOTFILES_STANDARD_PATH/.vimconfigs/all.vim

  else

    vim 

  fi

}
#w  () {  }
#x  () {  }
#y  () {  }
#z  () {  }
