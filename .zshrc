# Use powerline
USE_POWERLINE="true"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e

# The following lines were added by compinstall
zstyle :compinstall filename '/home/cdsg/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


alias please='sudo $(fc -ln -1)'
alias pa='sudo pacman -Syu'
alias nv='nvim'
alias c='clear'

source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
