#!/bin/bash
# NodeJS setup

# Install nvm: node-version manager
sudo apt-get update
sudo apt-get install build-essential libssl-dev
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.3/install.sh | sh

# Load nvm and install latest production node
source $HOME/.profile
nvm install v0.12.4
nvm use v0.12.4

sudo ln -s $HOME/.nvm/versions/node/v0.12.4/bin/node /usr/bin/node
sudo ln -s $HOME/.nvm/versions/node/v0.12.4/bin/node /usr/lib/node
sudo ln -s $HOME/.nvm/versions/node/v0.12.4/lib/node_modules/npm/bin/npm-cli.js /usr/bin/npm

# Install jshint to allow checking of JS code within emacs
sudo npm install -g jshint

# Install rlwrap to provide libreadline features with node
# See: http://nodejs.org/api/repl.html#repl_repl
sudo apt-get install -y rlwrap

