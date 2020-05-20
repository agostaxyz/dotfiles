# agosta.dev/dotfiles
# Create Folders

mkdir /home/$USER/Documents
mkdir /home/$USER/Downloads
mkdir /home/$USER/git_workspace
mkdir /home/$USER/.config
mkdir /home/$USER/.config/bspwm
mkdir /home/$USER/.config/polybar
mkdir /home/$USER/.config/sxhkd
mkdir /home/$USER/.config/nvim

# VOID STUFF
# Allow multilib and nonfree repo.
sudo xbps-install -Suy void-repo-nonfree void-repo-multilib

# Symlinks
sudo ln -s /$HOME/git_workspace/dotfiles/bspwm .config/
sudo ln -s /$HOME/git_workspace/dotfiles/sxhkd .config/
sudo ln -s /$HOME/git_workspace/dotfiles/.xinitrc ~/
sudo ln -s /$HOME/git_workspace/dotfiles/fonts/fontsaga/ /usr/share/fonts/
sudo ln -s /$HOME/git_workspace/dotfiles/.Xresources .Xresources
sudo ln -s /$HOME/git_workspace/dotfiles/.vimrc /home/cdsg/
sudo ln -s /$HOME/git_workspace/dotfiles/compton.conf .config/
sudo ln -s /$HOME/git_workspace/dotfiles/nvim/ .config/
sudo ln -s /$HOME/git_workspace/dotfiles/polybars/modules/ .config/polybar
sudo ln -s /$HOME/git_workspace/dotfiles/neofetch/ .config/neofetch
sudo ln -s /$HOME/git_workspace/dotfiles/.zshrc ~/

# Changing file mode
chmod +x /home/$USER/.config/bspwm/bspwmrc
chmod +x /home/$USER/.config/sxhkd/sxhkdrc

# Update repos and install must-have Software.
sudo xbps-install -Suy
sudo xbps-install -Suy git vim python NetworkManager inetutils nodejs cmake htop libpulseaudio curl xcb-util xcb-util-keysyms xcb-util-wm inetutils
sudo xbps-install -Suy xorg xinit libX11 urxvt rxvt-unicode alsa-lib   
sudo xbps-install -Suy bspwm polybar neovim zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting
git clone https://github.com/Coldsaga/dotfiles.git /home/$USER/git_workspace/

# setup Polybar 
echo "Which polybar do you want?"
ls /home/git_workspace/dotfiles/polybars
read -p bar
sudo ln -s /home/git_workspace/dotfiles/polybars/$bar .config/polybar/

# INSERT HERE Link xstart to runit 
