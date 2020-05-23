# Void Installation
# agosta.dev/dotfiles

function install () {
    # Allow multilib and nonfree repo.
    sudo xbps-install -Suy void-repo-nonfree void-repo-multilib
    # Update repos
    sudo xbps-install -Suy

    # Must have software
    sudo xbps-install -Suy git curl NetworkManager neovim make python inetutils nodejs cmake htop libpulseaudio curl xcb-util xcb-util-keysyms xcb-util-wm inetutils xtools alsa-lib qbittorrent noto-fonts ttf-roboto ttf-croscore  exiftool
    
    # Auxiliary software
    sudo xbps-install -Suy firefox chromium surfshark-vpn spotify neofetch zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting lutris barrier-gui
    # Not yet available on Package Manager
    # discord
}

function cdesktop () {
    sudo xbps-install -Suy sxhkd xinit libxcb lxappearance dmenu conky tint2 dzen2 bspwm polybar xorg xinit libX11 rxvt-unicode

    # Configuring needed files
    echo 'sxhkd &' >> ~/.Xinitrc
    echo 'exec bspwm' >> ~/.Xinitrc
    echo 'polybar main &' >> ~/.config/bspwm/bspwmrc
    chmod +x /home/$USER/.config/bspwm/bspwmrc
    chmod +x /home/$USER/.config/sxhkd/sxhkdrc
    chmod +x git_workspace/dotfiles/private/script.sh
}

function all () {
    sudo xbps-install -Suy blender krita steam
    # Not yet available on Package Manager
    # davinci-resolve firefox-developer-edition github-desktop surfshark-vpn openscad-git 
    cdesktop
    full-productivity
}
install
