choose_function () {
    pacman = "sudo pacman -Syu reflector yay stow noto-fonts ttf-roboto ttf-croscore firefox discord "
    pacman = "${pacman} test " 

    aur = "yay surfshark-vpn spotify "
    aur = "${aur} test "

    echo "Welcome to the fast deployment command wizard!"
    echo "Choose the packages to install."
    echo "And remember to use the same capitalization as the prompts!"
 
    echo "If your Arch installation is on a removable drive and you want both, select 'drive'."
    read -p "(1/6) What CPU are you running? (amd/intel/drive/none): " cpu
    echo "you choose $cpu"

    read -p "(2/6) What GPU are you running? (amd/nvidia/none): " gpu
    echo "you choose $gpu"

    read -p "(3/6) Productivity package? (y/n): " productivity
    echo "you choose $productivity"

    read -p "(4/6) Coding package? (y/n): " coding
    echo "you choose $coding"

    read -p "(5/6) Editing & Manipulation package? (y/n): " editing
    echo "you choose $editing"

    read -p "(6/6) Gaming package? (y/n): " gaming
    echo "you choose $gaming"

    if [ "$cpu" = "amd" ]
    then
        pacman = "${pacman} amd-ucode "
    elif [ "$cpu" = "intel" ]
        pacman = "${pacman} intel-ucode "
    elif [ "$cpu" = "drive" ]
        pacman = "${pacman} amd-ucode intel-ucode "
    else
        echo "You didn't choose a CPU package"
    fi

    if [ "$gpu" = "amd"]

    elif ["$gpu" = "nvidia"]

    else
        echo "You didn't choose a GPU package"
    fi

    if [ "$productivity" = ""]

    elif ["" = ""]
        
    else
        echo "You didn't choose the productivity package"
    fi

    if [ "$coding" = ""]

    elif ["" = ""]
        
    else
        echo "You didn't choose the coding package"
    fi

    if [ "$editing" = ""]

    elif ["" = ""]
        
    else
        echo "You didn't choose the editing package"
    fi

    if [ "$gaming" = ""]

    elif ["" = ""]
        
    else
        echo "You didn't choose the gaming package"
    fi

    $eval "$pacman"
    $eval "$aur"
}

choose_function