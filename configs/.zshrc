# The following lines were added by compinstall
zstyle :compinstall filename '/home/saga/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
ZSH_THEME=agnoster

source /usr/share/nvm/init-nvm.sh
source /usr/share/oh-my-zsh/oh-my-zsh.sh

alias please=sudo
alias fetch=fastfetch
alias s="zen-browser --search"
alias hist='fc -l -t "%Y/%m/%d" 1 | bat --language=sh'

#control
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

export EDITOR=nvim
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"
export BAT_THEME="Github Dark"

# Electron
export ELECTRON_OZONE_PLATFORM_HINT=wayland
export QT_QPA_PLATFORM=wayland
# Proton
export PROTON_ENABLE_WAYLAND=1
export PROTON_USE_NTSYNC=1
export DXVK_ASYNC=1
export VKD3D_FEATURE_FLAGS=all
export PROTON_ENABLE_WAYLAND=1
export PROTON_USE_NTSYNC=1
export DXVK_ASYNC=1

