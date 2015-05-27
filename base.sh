#!/bin/bash
# Basic bash setup to Ubuntu

sudo apt-get install -y git
sudo apt-get install -y curl

# install dotfiles as well
cd $HOME
if [ -d ./dotfiles/ ]; then
    mv dotfiles dotfiles.old
fi

ln -sb bash-dotfiles/.bash_profile .
ln -sb bash-dotfiles/.bashrc .
ln -sb bash-dotfiles/.bashrc_custom .
ln -sb bash-dotfiles/.bash_functions .

