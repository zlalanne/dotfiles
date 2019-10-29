#!/usr/bin/env bash
#
# Install the correct dotifles needed for this machine

set -eux

declare -r DOTFILES="${HOME}/.dotfiles"
declare -r STOWFLAGS="--verbose --restow --target ${HOME}"

source ${DOTFILES}/lib/dotfiles.sh

check_codename

hostname=$(hostname)

stow ${STOWFLAGS} bin
stow ${STOWFLAGS} spacemacs
stow ${STOWFLAGS} zsh
stow ${STOWFLAGS} urxvt

# Host specific files
if at_work; then
    stow ${STOWFLAGS} git-work
else
    stow ${STOWFLAGS} git
fi
ln --symbolic --force ${DOTFILES}/git-common/.gitignore ${HOME}/.gitignore
