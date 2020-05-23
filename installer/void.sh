# Void Installation
# agosta.dev/dotfiles

function install () {
    # Allow multilib and nonfree repo.
    sudo xbps-install -Suy void-repo-nonfree void-repo-multilib
    # Update repos and install must-have Software.
    sudo xbps-install -Suy
    sudo xbps-install -Suy git vim make NetworkManager python inetutils nodejs cmake htop neofetch libpulseaudio curl xcb-util xcb-util-keysyms xcb-util-wm inetutils xtools xorg xinit libX11 rxvt-unicode alsa-lib neovim zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting

    # adding needed files
    echo 'sxhkd &' >> ~/.Xinitrc
    echo 'exec bspwm' >> ~/.Xinitrc
    echo 'polybar main &' >> ~/.config/bspwm/bspwmrc

    # Changing file mode
    chmod +x /home/$USER/.config/bspwm/bspwmrc
    chmod +x /home/$USER/.config/sxhkd/sxhkdrc
    chmod +x git_workspace/dotfiles/private/script.sh
}

function desktop () {
    sudo xbps-install -Suy sxhkd xinit libxcb lxappearance dmenu conky tint2 dzen2 bspwm polybar 
    install
}

function productivity () {
    sudo xbps-install -Suy discord
    install
}

function all () {
    sudo xbps-install -Suy steam 
    desktop
    full-productivity
    install
}
