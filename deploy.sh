#!/usr/bin/env bash
#
# Install the correct dotifles needed for this machine

set -eu

declare -r DOTFILES="${HOME}/.dotfiles"
declare -r STOWFLAGS="--verbose --restow --target ${HOME}"

hostname=$(hostname)

stow ${STOWFLAGS} bin
stow ${STOWFLAGS} spacemacs
stow ${STOWFLAGS} zsh

# Host specific files
if [[ ${hostname} == "thinkpad" ]]; then
    stow ${STOWFLAGS} git
    ln --symbolic --force ${DOTFILES}/git/.gitignore ${HOME}/.gitignore
fi
