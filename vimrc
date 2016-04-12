
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

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


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
set ruler                     " カーソルが何行目に置かれてるか

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


