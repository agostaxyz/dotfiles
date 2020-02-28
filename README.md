# Dotfiles and Deployment
My arch linux dotfiles and shell script.  
I recommend you use some kind of [encryption](https://wiki.archlinux.org/index.php/Disk_encryption) on arch linux, I use [dm-crypt](https://wiki.archlinux.org/index.php/Dm-crypt).  

## Dotfiles
My Dotfiles are managed via [GNU stow](https://www.gnu.org/software/stow/).  

## Deployment
deployment.sh is a simple linux shell script to easily download my arch and AUR packages.
  
To run it use ```chmod +x deployment.sh```.  
and then ```sh ./deployment.sh```  .