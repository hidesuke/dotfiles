source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

# iTerm2 でタブに書かれる文字列の設定
PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'

# MacVim 設定
export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

# iTerm2でlsコマンドに色付け
#export TERM=xterm-color
export TERM=xterm-256color
alias ls='ls -G'
alias ll='ls -ahl'
export LSCOLORS=gxfxcxdxbxegedabagacad

IT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[35m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '
export PS1='\[\033[32m\][ ● ▲ ● ]\[\033[00m\]:\[\033[35m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '

export VIM=/Home/hideuske/.vim

# bashのヒストリをダイエットする設定
# ignorespace(スペースで始まるコマンドを記録しない) + ignoredups (重複したコマンドを記録しない) 
export HISTCONTROL=ignoreboth 
export HISTIGNORE=":history*:cd*:ls*"

alias less='less -M'
