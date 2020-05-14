#!/bin/bash

# DESCRIPTION
# Establishes dotfiles, via Homeshick (https://github.com/andsens/homeshick)

echo "[DOTFILES] Install Homeshick"
brew install homeshick
echo ""

file=".castle"
castle=""
repo=""
while IFS=" " read -r p1 p2
do
  castle="$p1"
  repo="$p2"
done < "$file"

echo "[DOTFILES] Cloning castle '$castle' from '$repo'"
homeshick clone "$repo"
homeshick link "$castle"
