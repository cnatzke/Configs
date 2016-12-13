# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

#Sourcing necessary programs
source ~/Programs/GRSISort/thisgrsi.sh
source ~/Programs/root-install/bin/thisroot.sh
#source ~/Programs/root-backup/root/bin/thisroot.sh
source ~/geant4/geant4.10.01.p03-install/bin/geant4.sh

# User specific aliases and functions
#____________________________________________________
	#Sources root 5.34.36 and geant4 10.01.p03
alias srcall="source ~/Programs/root-install/bin/thisroot.sh; source ~/geant4/geant4.10.01.p03-install/bin/geant4.sh"
	#Simplifies root usage
alias rt="root -l"
	#Simplifies GRSISort usage
alias gs="grsisort -l"
	#Expanded ls commands
alias la="ls -a"
alias ll="ls -l"
	#Makes running NTuple Easier
alias nt="~/Programs/NTuple/NTuple"
	#Changes directories 2 up
alias ...="cd ../.."


#_____________________________________________________
# Enables Colourful Bash
PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '

#_______________________________________________________
# Ignore Case for <tab> completion
bind "set completion-ignore-case on"
#bind "set show-all-if-ambiguous on"

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/lib

PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HOME/PracticePrograms/scripts

export PATH
