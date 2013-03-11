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
Bundle 'thinca/vim-quickrun'
Bundle 'motemen/git-vim'
Bundle 'vim-scripts/IndentAnything'
Bundle 'vim-scripts/JSON.vim'
Bundle 'vim-scripts/grep.vim'
Bundle 'h1mesuke/vim-alignta'
Bundle 'scrooloose/nerdcommenter'
Bundle 'othree/html5.vim'
Bundle 'mattn/calendar-vim'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-endwise'
Bundle 'vim-scripts/ruby-matchit'
Bundle 'kchmck/vim-coffee-script'
Bundle 'mattn/zencoding-vim'
Bundle 'jelera/vim-javascript-syntax'

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

" Ev/Rvでvimrcの編集と反映
command! Ev edit $MYVIMRC
command! Rv source $MYVIMRC

"===========================
" neocomplcache
"===========================
" 起動時に有効化
let g:neocomplcache_enable_at_startup = 1 
" tabで補完
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" uniteと連携
imap <C-k> <Plug>(neocomplcache_start_unite_complete)
" snippets を使えるように
imap <C-k> <Plug>(neocomplcache_snippets_expand)
smap <C-k> <Plug>(neocomplcache_snippets_expand)

"=============================
" Unite setting
"=============================
" バッファ一覧
nnoremap <silent> :ub<CR> :<C-u>Unite buffer<CR>
" ファイル一覧
nnoremap <silent> :uf<CR> :<C-u>Unite file<CR>
" 最近使用したファイル一覧 MostRecentUse
nnoremap <silent> :um<CR> :<C-u>Unite file_mru<CR>
" レジスタ一覧
nnoremap <silent> :ur<CR> :<C-u>Unite -buffer-name=register register<CR>

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

"============================
" Align setting
"============================
let g:Align_xstrlen = 3     " for Japanese string
let g:DrChipTopLvlMenu = '' "remove 'DrChip' menu

"============================
" express setting
"============================
au BufRead,BufNewFile *.ejs set filetype=html fenc=utf-8 foldmethod=syntax

"============================
" CoffeeScript setting
"============================
autocmd BufWritePost *.coffee silent CoffeeMake! -cb | cwindow | redraw!

"============================
" zencoding setting
"============================
let g:user_zen_settings = { 'indentation':'  '}


