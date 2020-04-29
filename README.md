# OS X Setup Script
This repository contains scripts which automate the setup of a new OS X machine. Through the application of system settings, personal configurations, and installation of several package management tools and applications, one can be up-and-running in a matter of minutes.

# Author
Chris Spoehr, chris.spoehr@gmail.com

# How to Use

## SSH Key Setup
Because certain versions OS X may save your git password in a locally accessible way, when cloning with HTTPS, I much prefer to only clone with SSH. Therefore, the SSH setup script is its own entry point. 

* [Download the raw version](https://raw.githubusercontent.com/WiSparky82/osx-setup/master/ssh.sh) of `./ssh.sh`
* Execute `./ssh.sh`
* Attach the copy of your RSA key left on your clipboard to your Git repository host account.

## Setup Script
`setup.sh` is the main entry point to the setup process. This will take you to the main menu and allow you to select from all the available options.

### Pre-requisites
Assuming you've setup an SSH key and attached it to your Git repository host
* [Setup an SSH key](#ssh-key-setup)
* Clone this repository using `git clone` to a location of your choice

### Main Menu
* Run `./setup.sh` to run setup in main menu mode

### Specific Setup Option
* Run `./setup.sh [OPTION]` to trigger a specific setup script

# Credits
While not directly forked from it, this repo certainly owes *a lot* to https://github.com/danielsaidi/osx.
