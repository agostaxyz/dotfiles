# Arch Installation
# agosta.dev/dotfiles

function install () {
    # Insert here code to enable AUR
    sudo Pacman -Syu yay

    # Must have software
    yay -Syu curl git curl NetworkManager neovim make python inetutils nodejs cmake htop libpulseaudio curl xcb-util xcb-util-keysyms xcb-util-wm inetutils xtools alsa-lib qbittorrent noto-fonts ttf-roboto ttf-croscore exiftool
    
    # Auxiliary software
    yay firefox chromium surfshark-vpn spotify neofetch zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting lutris
}

function cdesktop () {
    yay sxhkd xinit libxcb lxappearance dmenu conky tint2 dzen2 bspwm polybar xorg xinit libX11 rxvt-unicode

    # Configuring needed files
    echo 'sxhkd &' >> ~/.Xinitrc
    echo 'exec bspwm' >> ~/.Xinitrc
    echo 'polybar main &' >> ~/.config/bspwm/bspwmrc
    chmod +x /home/$USER/.config/bspwm/bspwmrc
    chmod +x /home/$USER/.config/sxhkd/sxhkdrc
    chmod +x git_workspace/dotfiles/private/script.sh
}

function all () {
    yay blender krita steam davinci-resolve firefox-developer-edition github-desktop surfshark-vpn
    cdesktop openscad-git
    full-productivity
}

install
