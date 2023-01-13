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
}
#u  () {  }
v  ()   {

}
#w  () {  }
#x  () {  }
#y  () {  }
#z  () {  }
