#!/usr/bin/env bash
#
# Install some tools to help install dotfiles

set -eu

declare -r DOTFILES="${HOME}/.dotfiles"

# shellcheck source=./lib/dotfiles.sh
source ${DOTFILES}/lib/dotfiles.sh
# shellcheck source=./lib/print.sh
source ${DOTFILES}/lib/print.sh

check_codename

# Setup projects directory
mkdir -p "${HOME}/Projects"

# Setup zsh completion directory
mkdir -p "${HOME}/.zsh/completion"
mkdir -p "${HOME}/.zsh/cache"

info "Updating Ubuntu repositories"
sudo apt-get --quiet update

info "Installing some basic tools"
dotfiles_apt git rsync stow silversearcher-ag aspell libnotify-bin tig htop

info "Installing some fonts"
dotfiles_apt ttf-ancient-fonts fonts-hack

info "Installing languages and language package managers"
dotfiles_apt python3-venv python3-virtualenv python3-pip python3-setuptools virtualenvwrapper
python3 -m pip --quiet install --user pipx
dotfiles_apt golang-go
dotfiles_apt nodejs-dev node-gyp libssl1.0-dev
dotfiles_apt npm
mkdir -p "${HOME}/.local/npm"

info "Installing terminal"
dotfiles_apt rxvt-unicode

info "Installing some generic development packages"
pipx install pre-commit

info "Installing python development packages"
pipx install black
pipx install pylint
pipx install isort
pipx install pyls
python3 -m pip install --user importmagic
python3 -m pip install --user epc

info "Installing shell-scripting packages"
pipx install bashate
dotfiles_apt shellcheck

info "Installing YAML packages"
pipx install yamllint

info "Installing web development packages"
dotfiles_apt node-js-beautify

info "Installing markdown packages"
dotfiles_npm vmd
dotfiles_apt markdown

info "Installing Bazel packages"
go get github.com/bazelbuild/buildtools/buildifier
