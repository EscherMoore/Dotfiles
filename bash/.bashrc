#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# My aliases
alias btw="neofetch | lolcat"
alias weather="curl wttr.in/Manassas"
alias spotify="ncspot"
alias visualizer="cava"
alias matrix="cmatrix"
alias pipes="pipes.sh"
#vmv allows you to see vm storage in gb
alias storage-v="/usr/local/lib/i3blocks/storage-v.sh"
alias vm-v="/usr/local/lib/i3blocks/vm-storage-v.sh"
alias image="mupdf"
alias video="mpv"
alias pdf="mupdf"
alias updates="checkupdates"
alias updatefor="checkupdates | grep"
alias nordvpnst="nordvpn status"
alias pkgsearch="pacman -Qe | grep"
alias ff="firefox --no-remote"

# Dev aliases
alias server_ip="/home/escher/.dev/dev-aliases/tdd-server.sh"

### Bash welcome message ### 

if [ $(ls /dev/pts/  | wc -l) -le 2 ]; then
    echo "			                                            "
    btw 
#elif [ $(ls /dev/pts/  | wc -l) -le 3 ]; then     
fi

############################

# Weather alias
#alias fairfaxwr="curl wttr.in/Fairfax"
#alias dcwr="curl wttr.in/DC"

# Powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh


# stow (th stands for target=home)
stowth() {
	stow -vSt ~ $1
}

# s stands for simulate (test)
sstowth() {
	stow -nvSt ~ $1
}

unstowth() {
	stow -vDt ~ $1
}

# s stands for simulate (test)
sunstowth() {
	stow -nvDt ~ $1
}
