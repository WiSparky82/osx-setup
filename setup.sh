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

run_ruby() {
  source scripts/ruby.sh
}

# OPTIONS

process_option() {
  case $1 in
  'all')
    run_system
    run_ruby
    run_ssh
    break
    ;;
  'ruby')
    run_ruby
    break
    ;;
  'ssh')
    run_ssh
    break
    ;;
  'system')
    run_system
    return
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
    echo "     ruby:  Install Ruby and GEM"
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
