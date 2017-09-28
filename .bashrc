# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# added by Anaconda3 4.4.0 installer
export PATH=/opt/anaconda3/bin:$PATH
ccdes_BB=/mnt/hgfs/Shared/ccdes_BB
# enable XON/XOFF control
stty -ixon
