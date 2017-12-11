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
export PYTHONPATH=$HOME/greg/caffe/python:$PYTHONPATH
export CPLUS_INCLUDE_PATH=/usr/include/python2.7
ccdes_BB=/mnt/hgfs/Shared/ccdes_BB
ccdes=/mnt/hgfs/Shared/ccdes
caffe=~/greg/caffe
# enable XON/XOFF control
stty -ixon
# Color mapping
grey='\[\033[1;30m\]'
red='\[\033[0;31m\]'
RED='\[\033[1;31m\]'
green='\[\033[0;32m\]'
GREEN='\[\033[1;32m\]'
yellow='\[\033[0;33m\]'
YELLOW='\[\033[1;33m\]'
purple='\[\033[0;35m\]'
PURPLE='\[\033[1;35m\]'
white='\[\033[0;37m\]'
WHITE='\[\033[1;37m\]'
blue='\[\033[0;34m\]'
BLUE='\[\033[1;34m\]'
cyan='\[\033[0;36m\]'
CYAN='\[\033[1;36m\]'
NC='\[\033[0m\]'
PS1="$yellow[$CYAN\t$yellow][$red\u$white@$purple\h$yellow][$GREEN\w$grey$yellow]$NC# "
