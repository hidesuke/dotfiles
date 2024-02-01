# prompt設定
export PS1="%n %~ "$'\n'" %# "

# zsh補完機能
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi

# zsh autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# zsh syntax high light
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# historyに同じコマンドを出さない
setopt hist_ignore_all_dups

# iTerm2でlsコマンドに色付け
export TERM=xterm-256color
alias ls='ls -G'
alias ll='ls -ahl'
export LSCOLORS=gxfxcxdxbxegedabagacad