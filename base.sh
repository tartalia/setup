#!/bin/bash
# Basic bash setup to Ubuntu

sudo apt-get install -y git
sudo apt-get install -y curl

# install dotfiles as well
cd $HOME
if [ -d ./dotfiles/ ]; then
    mv dotfiles dotfiles.old
fi

ln -sb ./setup/dotfiles-bash/.bash_profile .
ln -sb ./setup/dotfiles-bash/.bashrc .
ln -sb ./setup/dotfiles-bash/.bashrc_custom .
ln -sb ./setup/dotfiles-bash/.bash_functions .

