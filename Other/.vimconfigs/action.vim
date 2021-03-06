" スワップファイルを作成しない
set noswapfile

" バックアップファイルを作成しない
set nobackup

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自動的にディレクトリを作成する
"
" Vim-users.jp - Hack #202: 自動的にディレクトリを作成する
" http://vim-users.jp/2011/02/hack202/
augroup vimrc-auto-mkdir  " {{{
  autocmd!
  autocmd BufWritePre * call s:auto_mkdir(expand('<afile>:p:h'), v:cmdbang)
  function! s:auto_mkdir(dir, force)  " {{{
    if !isdirectory(a:dir) && (a:force ||
    \    input(printf('"%s" does not exist. Create? [y/N]', a:dir)) =~? '^y\%[es]$')
      call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
    endif
  endfunction  " }}}
augroup END  " }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 一時的に追記
" 水平分割 + VimShellの起動
noremap vsp :sp<cr><c-w><c-w>:VimShell<cr>



