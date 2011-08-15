"基本設定
set number
set nobackup

" setting for vundle
set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/unite.vim'
Bundle 'thinca/vim-ref'

filetype plugin indent on 


