#!/bin/bash

# DESCRIPTION
# Executes the command line interface.

# USAGE
# ./setup.sh [OPTION]

run_ssh() {
    source ssh.sh
}

# OPTIONS

process_option() {
  case $1 in
  'all')
    run_ssh
    break
    ;;
  'ssh')
    run_ssh
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
    echo "      ssh:  Create & copy SSH key"
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
