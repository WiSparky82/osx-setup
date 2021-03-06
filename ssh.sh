#!/usr/bin/env bash

# DESCRIPTION
# Creates an ssh key and copies it to the pasteboard

# EXECUTION

read -rp "[SSH] Create new SSH key (y/n): " response
if [[ $response == y* ]]; then
  echo ""
  read -rp "Enter your e-mail: " ssh_email
  echo ""
  echo "[SSH] Creating ssh key"
  ssh-keygen -t rsa -b 4096 -C "$ssh_email"
fi
echo ""

echo "[SSH] Adding ssh key to ssh-agent"
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_rsa
echo ""

echo "[SSH] Copying ssh key to pasteboard"
pbcopy <~/.ssh/id_rsa.pub

echo "[SSH] Done"
echo ""
