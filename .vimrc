"
packadd termdebug
set mouse=a
let g:termdebug_wide = 163

"
syn on

"
set cursorline

"
set nu

"
set nowrap

"
"set nocompatible
"filetype on

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
    call neobundle#begin(expand('~/.vim/bundle/'))
endif

"insert here your Neobundle plugins"
NeoBundle 'scrooloose/nerdtree'

" usage:
" 	:NeoBundleInstall
call neobundle#end()

filetype plugin indent on
