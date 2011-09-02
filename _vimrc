"======================
" setting for vundle
"======================
set nocompatible

filetype off
set rtp+=~/.vim/vundle.git/
call vundle#rc()

" plug-ins
" Bundle 'gmarik/vundle'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimfiler'
Bundle 'thinca/vim-ref'
Bundle 'motemen/git-vim'
Bundle 'vim-scripts/IndentAnything'
Bundle 'vim-scripts/JSON.vim'
Bundle 'vim-scripts/grep.vim'
Bundle 'pix/vim-align'
Bundle 'scrooloose/nerdcommenter'

filetype plugin indent on 

"==================
" 基本設定
"==================
set number                    " 行番号表示
set nobackup                  " backup不要
set textwidth=0               " 一行に長い文章を書いても自動で折り返さない
set noswapfile                " スワップファイルなんていらない
set autoread                  " 他で書き換えられたら自動で再読み込み
set whichwrap=b,s,h,l,<,>,[,] " カーソルを行頭、行末で止まらないようにする
set notitle                   " タイトルを表示しない
set showcmd                   " コマンドをステータス行に表示
set showmode                  " 現在のモードを表示
set laststatus=2              " 常にステータスラインを表示
set showmatch                 " カッコの対応をハイライト
set expandtab                 " タブはスペースに変換
set tabstop=2                 " ファイル中の<tab>文字を空白いくつで表現するか
set softtabstop=2             " キーボードで<tab>を打ったときの空白数
set shiftwidth=2              " 自動挿入されるタブの空白数

syntax enable                 " 色をつける

" ファイルタイプ判定をon
filetype plugin on

" カーソル行をハイライト
set cursorline
" カレントウィンドウのみに罫線をひく
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END

"===========================
" neocomplcache
"===========================
" 起動時に有効化
let g:neocomplcache_enable_at_startup = 1 

" tabで補完
function InsertTabWrapper()
  if pumvisible()
    return "\<c-n>"
  endif
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k\|<\|/'
    return "\<tab>"
  elseif exists('&omnifunc') && &omnifunc == ''
    return "\<c-n>"
  else
    return "\<c-x>\<c-o>"
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

"=============================
" javascript setting
"=============================
"tab幅設定 など
au FileType javascript set ts=2 sw=2 expandtab
au BufNewFile *.js set ft=javascript fenc=utf-8

"============================
" json setting
"============================
au! BufRead,BufNewFile *.json set filetype=json foldmethod=syntax

"============================
" VimFiler setting
"============================
" VimFilerをデフォルトのExploreに (netrwを無効化)
let g:vimfiler_as_default_explorer = 1

