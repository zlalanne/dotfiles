#!/usr/bin/env bash
#
# Install the correct dotifles needed for this machine

set -eu

declare -r DOTFILES="${HOME}/.dotfiles"
declare -r STOWFLAGS=(--restow --target ${HOME})

# shellcheck source=./lib/dotfiles.sh
source "${DOTFILES}/lib/dotfiles.sh"
# shellcheck source=./lib/print.sh
source "${DOTFILES}/lib/print.sh"

check_codename

info "Installing git hooks"
pre-commit install &> /dev/null

info "Deploying .bin directory"
stow "${STOWFLAGS[@]}" bin

info "Deploying spacemacs config"
stow "${STOWFLAGS[@]}" spacemacs

info "Deploying zsh config"
stow "${STOWFLAGS[@]}" zsh

info "Deploying urxvt config"
stow "${STOWFLAGS[@]}" urxvt

info "Deploying aspell dictionary"
stow "${STOWFLAGS[@]}" aspell

info "Deploying git config"
if at_work; then
    stow "${STOWFLAGS[@]}" git-work
else
    stow "${STOWFLAGS[@]}" git
fi
ln --symbolic --force "${DOTFILES}/git-common/.gitignore" "${HOME}/.gitignore"
