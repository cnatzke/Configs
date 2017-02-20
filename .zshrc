#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
# sets the redhat colour scheme

# set default editor
export EDITOR="/usr/bin/vim"

alias sleep="sudo pm-suspend"
alias wifi="sudo wifi-menu"
alias alaprint="ssh_print cnatzke@bb136-10"
alias bright="sudo tee /sys/class/backlight/radeon_bl0/brightness <<< 100"
alias rt="root -l"
#Connects to eduroam
alias eduroam="/home/connor/.eduroam/eduroam.sh"
#Start-up script
alias strt="~/Programs/startup.sh"

PATH="$PATH:$HOME/bin"
