# 色の有効化
autoload -Uz colors && colors

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
export LSCOLORS=gxfxcxdxbxegedabagacad
alias ls='ls -G'
alias ll='ls -ahl'

# git周り
autoload -Uz compinit && compinit
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
PROMPT="%U%B%F{magenta}%n%f%b%u %U%F{cyan}%~%f%u "\$vcs_info_msg_0_" "$'\n'"%# " 
precmd(){ vcs_info }
