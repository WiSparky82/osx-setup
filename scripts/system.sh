#!/bin/bash

# DESCRIPTION
# Installs OS X system software.

if ! command -v brew >/dev/null; then
  echo "[SYSTEM] Install Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
  echo "[SYSTEM] Update Homebrew"
  brew update
fi
echo ""

echo "[SYSTEM] Install Homebrew Cask"
brew tap homebrew/cask-versions
echo ""

echo "[SYSTEM] Install Brew Bundle"
brew tap Homebrew/bundle
echo ""
