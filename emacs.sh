#!/bin/bash
# Emacs setup

# Install emacs24
# https://launchpad.net/~cassou/+archive/emacs
sudo apt-add-repository -y ppa:cassou/emacs
sudo apt-get -qq update
sudo apt-get install -y emacs24-nox emacs24-el emacs24-common-non-dfsg

cd $HOME
if [ -d .emacs.d/ ]; then
    mv .emacs.d .emacs.d~
fi

ln -sb emacs-dotfiles/.screenrc .
ln -sf emacs-dotfiles/.emacs.d .
ln -sf emacs-dotfiles/.dircolors .

