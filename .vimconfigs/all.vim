" vim plugin path
let s:DOTFILE_STANDARD_PATH = "$HOME/Data/repos/github.com/UmedaTakefumi/dotfiles"

" vim plugin
execute 'set runtimepath+=' . s:DOTFILE_STANDARD_PATH . '/Other/.vim'

" スワップファイルを作成しない
set noswapfile

" バックアップファイルを作成しない
set nobackup

" 一時的に追記
" 水平分割 + VimShellの起動
noremap vsp :sp<cr><c-w><c-w>:VimShell<cr>

" タブスペース
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" 文字コード
set encoding=utf8
"set termencoding=uft8
set fileencoding=utf8

" 自動インデント
set autoindent

" 行番号表示
set number

" カラースキーマー
colorscheme blue

" シンタックスハイライトを有効にする
syn on

" 折り返し表示を無視する 
set textwidth=0

" カーソルラインを表示する
set cursorline

" 記号対応
set ambiwidth=double

" 入力中のコマンドを表示
set showcmd

" ステータスバーの表示
set statusline=%<%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%r%m%h%w%=%l/%L:%c%V%8P

" ルーラーを表示
set ruler

" ファイルタイプによるSyntaxHightlightの有効化
au BufNewFile,BufRead *.py setf python

" vi互換モードoff
set nocompatible

" backspace有効化
set backspace=indent,eol,start
