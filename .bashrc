#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

neofetch

source /home/user/bash_scripts/play_audio_function.sh

set -o vi

export PATH="$HOME/bin:$PATH"

export PATH="$HOME/bash_scripts:$PATH"
