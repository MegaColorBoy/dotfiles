#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias reloadbg='wal -i ~/Pictures/Wal/city.jpg'
PS1='[\u@\h \W]\$ '
