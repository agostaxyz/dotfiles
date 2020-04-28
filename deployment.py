import subprocess

packageManager = "sudo pacman -Syu "
aurManager = "yay "
# Packages
base = ["zsh", "zsh-completions", "ranger", "libxft-bgra","mesa", "reflector", "yay", "stow", "noto-fonts", "ttf-roboto", "ttf-croscore", "firefox-developer-edition", "neovim", "discord", "aur-surfshark-vpn", "aur-spotify", "chromium"]
bspwm = ["aur-bspwm-git", "sxhkd", "xorg-xinit", "xorg-xrdb", "aur-polybar-git", "feh", "rofi","aur-st-luke-git"]
entertainment = ["steam", "lutris", "aur-stremio", "aur-minecraft-launcher-beta"]
comunication = ["telegram-desktop", "tutanota-desktop"]
productivity = ["qbittorrent", "aur-notion-app"]
dev = ["aur-github-desktop", "python", "arduino", "aur-visual-studio-code-bin", "elixir", "npm", "nodejs"]
game-dev = ["blender", "aur-davinci-resolve", "aur-unreal-engine"]
video-editing = ["inkscape", "aur-davinci-resolve"]
engeenering = ["aur-freecad"]
audio-editing = ["ardour"]

#Funcions
def prompt_Function ():
    j[i] = input("({}/{})Install the {} Package? (y/n)".format(i+1, len(packages), packages[i]))
    
    if j[i] == "y":
        print("if test")
        allpack = allpack + packages[i]
    
    else:
        print("else test") 

    pacman = "sudo pacman -Syu"

def install_Function():
    subprocess.run([packagesInstall])
    subprocess.run([aurInstall])

# Vars and lists
i = 0
j = [list] * len(packages)
allpack = "test"
packageInstall = packageManager
aurInstall = aurManager

while i < len(packages):
    prompt_Function()
    i=i+1

print(j)
print(allpack)
print(packageInstall)
print(aurInstall)
