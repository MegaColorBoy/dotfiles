# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -la'
PS1='[\u@\h \W]\$ '

(cat ~/.cache/wal/sequences &)

cat ~/.cache/wal/sequences

source ~/.cache/wal/colors-tty.sh
alias go-to-projects='cd ~/ubuntu-backup/Desktop/projects'
alias pythonserver='python -m http.server 8000'

# Get your Public IP
export myip="$(dig +short myip.opendns.com @resolver1.opendns.com)"
alias myip="echo $myip"
