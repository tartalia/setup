#!/bin/bash
# Emacs setup

# Install emacs24
# https://launchpad.net/~cassou/+archive/emacs
sudo apt-add-repository ppa:ubuntu-elisp/ppa
sudo apt-get update
sudo apt-get install -y emacs24-nox emacs24-el emacs24-common-non-dfsg

cd $HOME
if [ -d .emacs.d/ ]; then
    mv .emacs.d .emacs.d~
fi

ln -sb ./setup/dotfiles-emacs/.screenrc .
ln -sf ./setup/dotfiles-emacs/.emacs.d .
ln -sf ./setup/dotfiles-emacs/.dircolors .

