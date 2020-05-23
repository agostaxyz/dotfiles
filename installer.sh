function installation () {
	if [ $confirmation == n ]; then
		helper
	elif [ $confirmation == y ]; then
		if [ $version == unstable ]; then
			sudo git clone -b unstable https://github.com/Coldsaga/dotfiles.git ~./git_workspace/dotfiles
		else 
			sudo git clone -b master https://github.com/Coldsaga/dotfiles.git ~./git_workspace/dotfiles
		fi
		if [ $distro == void ]; then
			sh git_workspace/dotfiles/installer/void.sh
			echo $packages >> 'git_workspace/dotfiles/installer/'$distro'.sh'
			echo $version >> 'git_workspace/dotfiles/installer/'$universal_script'.sh'
		elif [ $distro == arch ]; then
			sh git_workspace/dotfiles/installer/arch.sh
			echo $packages >> 'git_workspace/dotfiles/installer/'$distro'.sh'
			echo $version >> 'git_workspace/dotfiles/installer/'$universal_script'.sh'
		else
			echo 'ERROR, INVALID DISTRO'
			helper
		fi
	else
		echo 'ERROR'
		helper
	fi
	chmod +x 'git_workspace/dotfiles/installer/universal_script.sh'
	chmod +x 'git_workspace/dotfiles/installer/'$distro'.sh'
	sudo sh 'git_workspace/dotfiles/installer/universal_script.sh' 
	sudo sh 'git_workspace/dotfiles/installer/'$distro'.sh' 
}

function helper () {
	echo '(1/4) Which distro are you on?'
	read -p '[void/arch]: ' distro
	echo ''
	echo '(2/4) Stable or unstable version?'
	read -p '[stable/unstable]: ' version
	echo ''
	echo '(3/4) Which Packages do you want?'
	echo ''
	echo 'Example:'
	echo 'full-productivity/desktop/this-is-an-example'
	echo ''
	read -p '[all/desktop/productivity/full-productivity]:' packages
	echo ''
	echo '(4/4) You are on a(n) '$distro' system, want the '$version' version and the '$packages' package(s)?'
	read -p 'Confirm [y/n]: ' confirmation
	installation
}
sudo mkdir ~/git_workspace/
helper
