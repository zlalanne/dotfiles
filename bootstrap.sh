#!/usr/bin/env bash
#
# Install some tools to help install dotfiles

set -eu

declare -r DOTFILES="${HOME}/.dotfiles"

source ${DOTFILES}/lib/dotfiles.sh

check_codename

# Setup projects directory
mkdir -p ${HOME}/Projects

sudo apt-get update
sudo apt-get install -y git rsync stow

# Setup virtualenv
sudo apt-get install -y python3-venv python3-virtualenv python3-pip virtualenvwrapper

# Setup terminal
sudo apt-get install -y rxvt-unicode

# Get pipx installed
python3 -m pip install --user pipx

# Install python packages
pipx install black
pipx install pylint
pipx install isort
pipx install pyls

# Install shell-scripting packages
pipx install bashate
sudo apt-get install -y shellcheck

# Install web/html/css packages
sudo apt-get install -y node-js-beautify

# Install go
sudo apt-get install -y golang-go

# Install bazel packages
go get github.com/bazelbuild/buildtools/buildifier
