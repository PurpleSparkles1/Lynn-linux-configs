# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

#Starship (Make sure to install) 
eval "$(starship init bash)"

#-------
#Startup
#-------
##########
#lsd (optional - needs to be installed)
#ls
fastfetch #--logo-color-1 red --logo-color-2 red
#########

#--------
# Aliases
#--------
# -Uncomment package manager alias for distro-

#Nala
#----
#alias nu="sudo nala update"
#alias npg="sudo nala upgrade"
#alias install="sudo nala install"
#--------------------------------

#Apt
#---
#alias au="sudo apt update"
#alias apg="sudo apt upgrade"
#alias ai="sudo apt install"
#--------------------------

#Zypper
#------
#alias zu="sudo zypper update"
#alias zr="sudo zypper refresh"
#alias zd="sudo zypper dup"
#alias zi="sudo zypper install"
#-----------------------------

#Dnf
#---
#alias d="sudo dnf update"
#alias di="sudo dnf install"
#--------------------------

#Pacman 
#------
#alias Syu="sudo pacman -Syu"
#alias Sy="sudo pacman -Sy"
#alias pi="sudo pacman -S"
#-----------------------

#flatpak (On by Default)
#-------
alias fp="flatpak update"
alias fin="flatpak install"
#-------------------------

#Miss (Optional- may be need to be installed)
#----

#alias ls="lsd" 
