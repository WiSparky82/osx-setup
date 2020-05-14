#!/bin/bash

# DESCRIPTION
# Installs Ruby and GEM package management
echo "[SYSTEM] Install Ruby"
brew install ruby-install
echo ""

echo "[SYSTEM] Update gem"
gem update --system
echo ""
