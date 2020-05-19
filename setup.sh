#!/bin/bash

# DESCRIPTION
# Executes the command line interface.

# USAGE
# ./setup.sh [OPTION]

run_ssh() {
    source ssh.sh
}

run_system() {
  source scripts/system.sh
}

run_config() {
  source scripts/config.sh
}

run_dotfiles() {
  source scripts/dotfiles.sh
}

run_dotnet() {
  source scripts/dotnet.sh
}

run_node() {
  source scripts/node.sh
}

run_apps() {
  echo "[APPS] Installing Apps via Homebrew bundle"
  brew bundle
  echo ""
}

# OPTIONS

process_option() {
  case $1 in
  'all')
    run_system
    run_config
    run_apps
    run_dotnet
    run_node
    run_dotfiles
    run_ssh
    break
    ;;
  'apps')
    run_apps
    break
    ;;
  'config')
    run_config
    break
    ;;
  'dotnet')
    run_dotnet
    break
    ;;
  'node')
    run_node
    break
    ;;
  'dotfiles')
    run_dotfiles
    break
    ;;
  'ssh')
    run_ssh
    break
    ;;
  'system')
    run_system
    break
    ;;

  'q')
    break
    ;;
  *)
    break
    ;;
  esac
}

# MENU
while true; do
  if [[ $# == 0 ]]; then
    echo ""
    echo "******************"
    echo "    Setup OS X    "
    echo "******************"
    echo ""
    echo "Available commands:"
    echo ""
    echo "      all:  Install everything"
    echo "   config:  Configure macOS"
    echo "     apps:  Install apps via Homebrew bundle"
    echo "   dotnet:  Setup .Net Core"
    echo "     node:  Setup Node"
    echo " dotfiles:  Establish dotfiles via Homesick"
    echo "      ssh:  Create & copy SSH key"
    echo "   system:  Install system software"
    echo ""
    echo "        q:  Quit/Exit."
    echo ""
    read -rp "Enter option: " response
    echo ""
    process_option "$response"
  else
    process_option "$1"
  fi
done
