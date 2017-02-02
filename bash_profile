# .bashrcの読み込み
# githubに上げるべきで無い設定は .bashrcに書く
if [ -f ~/.bashrc ] ; then
  . ~/.bashrc
fi

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

export VIM=/Home/hideuske/.vim

# bashのヒストリをダイエットする設定
# ignorespace(スペースで始まるコマンドを記録しない) + ignoredups (重複したコマンドを記録しない) 
export HISTCONTROL=ignoreboth 
export HISTIGNORE=":history*:cd*:ls*"

alias less='less -M'

# rbenv用設定
# eval "$(rbenv init -)"


# 自動で追加された以下のスクリプトは.bashrcに移動
# eval "$(rbenv init -)"

# {{{
# Node Completion - Auto-generated, do not touch.
# shopt -s progcomp
# for f in $(command ls ~/.node-completion); do
#   f="$HOME/.node-completion/$f"
#   test -f "$f" && . "$f"
# done
# }}}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
