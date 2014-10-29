" Vim の表示関連用のスクリプト

" 行番号表示
set number

" カラースキーマー
colorscheme elflord
"colorscheme evening 

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

" Hack #40: 不可視文字を表示する
"
" Vim-users.jp - Hack #40: 不可視文字を表示する:
" http://vim-users.jp/2009/07/hack40/
"scriptencoding utf-8
"augroup highlightIdegraphicSpace
"  autocmd!
"  autocmd Colorscheme * highlight IdeographicSpace term=underline ctermbg=DarkGreen guibg=DarkGreen
"  autocmd VimEnter,WinEnter * match IdeographicSpace /　/
"augroup END
"
"set list    "タブ、行末等の不可視文字を表示する
"set listchars=tab:>\ ,trail:_,eol:$
"scriptencoding utf-8 "これ入れないと下記が反映されない
"augroup highlightZenkakuSpace "全角スペースを赤色にする
"  autocmd!
"  autocmd VimEnter,ColorScheme * highlight ZenkakuSpace term=underline ctermbg=Red guibg=Red
"  autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
"augroup END



