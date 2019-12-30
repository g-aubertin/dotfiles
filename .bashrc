#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias ec='emacs -nw'
alias gitconf='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'

TERM=xterm


if [ $TERM != eterm-color ] ; then
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    . /usr/share/powerline/bindings/bash/powerline.sh
fi
