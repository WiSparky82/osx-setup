#!/bin/bash

# DESCRIPTION
# Installs OS X system software.

echo "[SYSTEM] Checking for the XCode CLI tools"

xcode-select -p 2> /dev/null

if [ $? -eq 2 ]; then
    echo "[SYSTEM] ERROR: XCode CLI tools not found. Installation has been requested." >/dev/stderr
    echo "[SYSTEM] ERROR: Follow UI prompts to install CLI tools. Rerun this script when completed" >/dev/stderr
    xcode-select --install
    exit 2
else
    echo "[SYSTEM] XCode CLI tools found; proceeding with setup"
fi

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

echo "[SYSTEM] Installing Git via Homebrew"
brew install git
echo ""

echo "[SYSTEM] Installing Docker via Homebrew"
brew cask install docker
echo ""
