#!/bin/bash

# epel 
# oracle-epel-release
yum install -y epel-release
yum update

yum install -y rsync fish htop python3 vim-enhanced 

curl https://raw.githubusercontent.com/YUChoe/dotfiles/master/.bash_aliases -o ~/.bash_aliases
