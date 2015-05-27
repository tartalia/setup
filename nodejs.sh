#!/bin/bash
# NodeJS setup

# Install nvm: node-version manager
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.3/install.sh | bash

# Load nvm and install latest production node
source $HOME/.nvm/nvm.sh
nvm install v0.12.4
nvm use v0.12.4

# Install jshint to allow checking of JS code within emacs
sudo npm install -g jshint

# Install rlwrap to provide libreadline features with node
# See: http://nodejs.org/api/repl.html#repl_repl
sudo apt-get install -y rlwrap

