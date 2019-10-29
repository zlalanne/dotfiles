#!/usr/bin/env bash
#
# Install some tools to help install dotfiles

set -eu

declare -r DOTFILES="${HOME}/.dotfiles"

source ${DOTFILES}/lib/dotfiles.sh

check_codename

sudo apt-get update
sudo apt-get install -y git rsync stow

# Setup virtualenv
sudo apt-get install -y python3-virtualenv virtualenvwrapper

# Setup terminal
sudo apt-get install -y rxvt-unicode
