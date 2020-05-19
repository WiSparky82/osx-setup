#!/bin/bash

# DESCRIPTION
# Establishes node

echo "[NODE] Install NVM"
brew install nvm
echo ""

echo "[NODE] Enable nvm for terminal session"
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
echo ""

echo "[NODE] Install latest stable node"
nvm install node
nvm use node
echo ""

echo "[NODE] Install yarn"
brew install yarn