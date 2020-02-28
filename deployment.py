import subprocess

packageManager = "sudo pacman -Syu "
aurManager = "yay "
# Package categories
packages = ["base", "cpu", "gpu", "productivity", "coding", "editing", "gaming", "drive"]
# Packages
base = ["reflector", "yay", "stow", "noto-fonts", "ttf-roboto", "ttf-croscore", "firefox", "discord", "aur-surfshark-vpn", "aur-spotify"]
cpu = ["amd","intel","both"]
gpu = ["amd","nvidia", "both"]
productivity = ["transmission-gtk", "pidgin", "aur-telegram-purple-git", "aur-notion-app"]
coding = ["aur-github-desktop", "aur-visual-studio-code-bin", "python"]
editing = ["krita", "blender", "aur-davinci-resolve"]
gaming = ["lutris", "steam"]
drive = ["amd-ucode", "intel-ucode", "dosfstools", "ntfs-3g"]

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
