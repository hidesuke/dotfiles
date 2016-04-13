
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/dotfiles/vimfiles/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('~/dotfiles/vimfiles/dein/'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neocomplcache.vim')
call dein#add('Shougo/vimfiler.vim')
call dein#add('tpope/vim-surround')
call dein#add('vim-scripts/Align')
call dein#add('itchyny/lightline.vim')

" html settings
call dein#add('mattn/emmet-vim', {'on_ft': ['html']})

" js settings
call dein#add('othree/javascript-libraries-syntax.vim', {'on_ft':['js']})
call dein#add('othree/yajs.vim', {'on_ft':['js']})

" Python settings
call dein#add('davidhalter/jedi-vim', {'on_ft':['py']})

" You can specify revision/branch/tag.
" call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" neocomplcache settings
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1

" lightline setting
if !has('gui_running')
  set t_Co=256
endif

"==================
" 基本設定
"==================
let mapleader = "\<Space>"

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
set ruler                     " カーソルが何行目に置かれてるか
set backspace=indent,eol,start
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲

syntax enable                 " 色をつける

" 分割画面移動をtmux風にしたい
" 分割画面間の移動
nnoremap <C-b>j <C-w>j
nnoremap <C-b>k <C-w>k
nnoremap <C-b>l <C-w>l
nnoremap <C-b>h <C-w>h
" 分割画面の入れ替え
nnoremap <C-b>J <C-w>J
nnoremap <C-b>K <C-w>K
nnoremap <C-b>L <C-w>L
nnoremap <C-b>H <C-w>H
" tab間の移動
nnoremap <C-b>p gT
nnoremap <C-b>n gt


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


