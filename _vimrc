"======================
" setting for vundle
"======================
set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()

" plug-ins
Bundle 'gmarik/vundle'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/unite.vim'
Bundle 'thinca/vim-ref'

filetype plugin indent on 

"==================
" 基本設定
"==================
set number                       " 行番号表示
set nobackup                     " backup不要
set textwidth=0                  " 折り返さない
set noswapfile                   " スワップファイルなんていらない
set autoread                     " 他で書き換えられたら自動で再読み込み
set whichwrap=b,s,h,l,<,>,[,]    " カーソルを行頭、行末で止まらないようにする
set notitle                      " タイトルを表示しない
set showcmd                      " コマンドをステータス行に表示
set showmode                     " 現在のモードを表示

syntax enable                    " 色をつける

" ファイルタイプ判定をon
filetype plugin on

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
