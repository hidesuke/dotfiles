# .bashrcの読み込み
# githubに上げるべきで無い設定は .bashrcに書く
if [ -f ~/.bashrc ] ; then
  . ~/.bashrc
fi

# iTerm2 でタブに書かれる文字列の設定
PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'

# MacVim 設定
export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

# iTerm2でlsコマンドに色付け
export TERM=xterm-color
alias ls='ls -G'
alias ll='ls -hl'
export LSCOLORS=gxfxcxdxbxegedabagacad

export VIM=/Home/hideuske/.vim

alias less='less -M'

# rbenv用設定
eval "$(rbenv init -)"


