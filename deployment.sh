# agosta.dev/dotfiles
# Create Directories
sudo mkdir /home/$USER/Documents /home/$USER/Downloads /home/$USER/git_workspace /home/$USER/.config /home/$USER/.config/bspwm /home/$USER/.config/sxhkd /home/$USER/.config/polybar /home/$USER/.config/nvim

# Void linux stuff
# Allow multilib and nonfree repo.
sudo xbps-install -Suy void-repo-nonfree void-repo-multilib

# Hard Linking files
sudo ln /$HOME/git_workspace/dotfiles/bspwm/bspwmrc .config/bspwm/
sudo ln /$HOME/git_workspace/dotfiles/sxhkd/sxhkdrc .config/sxhkd/
sudo ln /$HOME/git_workspace/dotfiles/.xinitrc ~/
sudo ln /$HOME/git_workspace/dotfiles/fonts/fontsaga/ /usr/share/fonts/
sudo ln /$HOME/git_workspace/dotfiles/.Xresources ~/
sudo ln /$HOME/git_workspace/dotfiles/compton.conf .config/
sudo ln /$HOME/git_workspace/dotfiles/nvim/init.vim .config/nvim/
# sudo ln /$HOME/git_workspace/dotfiles/polybars/modules/ .config/polybar/
# sudo ln /$HOME/git_workspace/dotfiles/polybars/cdbar .config/polybar/


sudo ln /$HOME/git_workspace/dotfiles/neofetch/config.conf .config/neofetch/
sudo ln /$HOME/git_workspace/dotfiles/.zshrc ~/

# Update repos and install must-have Software.
sudo xbps-install -Suy git vim make NetworkManager python inetutils nodejs cmake htop neofetch libpulseaudio curl xcb-util xcb-util-keysyms xcb-util-wm inetutils
sudo xbps-install -Suy xtools xorg xinit libX11 rxvt-unicode alsa-lib   
sudo xbps-install -Suy sxhkd xinit libxcb lxappearance dmenu conky tint2 dzen2 bspwm polybar neovim zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting
git clone https://github.com/Coldsaga/dotfiles.git /home/$USER/git_workspace/

echo 'sxhkd &' >> ~/.Xinitrc
echo 'exec bspwm' >> ~/.Xinitrc
echo 'polybar main &' >> ~/.config/bspwm/bspwmrc

# Changing file mode
chmod +x /home/$USER/.config/bspwm/bspwmrc
chmod +x /home/$USER/.config/sxhkd/sxhkdrc
chmod +x git_workspace/dotfiles/private/script.sh

# INSERT HERE Link xstart to runit
sh git_workspace/dotfiles/private/script.sh

echo 'Choose a polybar'
# setup Polybar
# echo "Which polybar do you want?"
# ls /home/git_workspace/dotfiles/polybars
# read -p bar
# sudo ln /home/git_workspace/dotfiles/polybars/$bar .config/polybar/
