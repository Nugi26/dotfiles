#!/bin/bash
# update ubuntu
function aptup() {
  sudo apt update -y
  sudo apt upgrade -y
sudo apt dist-upgrade -y
  sudo apt autoremove -y
}

# append new line
function bashadd() {
  echo -e '\n# '$3'\n'alias $1=\'$2\' >> ~/.custom_bash.sh
  source ~/.custom_bash.sh
}

alias greet='echo "hello" $1 $2 $1'

# add and go to new directory
# why don't just use $1?: Positional vars can't be used more than once, dunno why
function mkcd() {
  dir=$1
  mkdir $dir
  cd $dir
}

# 
alias list='ls -1A | less'

# 
tviewer='/mnt/c/Users/nugie/Desktop/terminal-viewer.txt'

# dotfile git command 
alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/.git/ --work-tree=$HOME'
