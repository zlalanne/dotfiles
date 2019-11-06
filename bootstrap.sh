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

# Setup languages needed for tools
sudo apt-get install -y python3-venv python3-virtualenv python3-pip virtualenvwrapper
python3 -m pip install --user pipx
sudo apt-get install -y golang-go
sudo apt-get install -y npm
mkdir -p ${HOME}/.local/npm

# Setup terminal
sudo apt-get install -y rxvt-unicode

# Install python development packages
pipx install black
pipx install pylint
pipx install isort
pipx install pyls

# Install shell-scripting packages
pipx install bashate
sudo apt-get install -y shellcheck

# Install web/html/css packages
sudo apt-get install -y node-js-beautify

# Install markdown packages
npm install --prefix ${HOME}/.local/npm --global vmd
sudo apt-get install -y markdown

# Install bazel packages
go get github.com/bazelbuild/buildtools/buildifier
