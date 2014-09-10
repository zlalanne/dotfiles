#!/usr/bin/env bash
#
# Script to install Sublime Text Plugins

save_cwd=$(pwd)

cd "$(dirname "$0")"
CONFIG_ROOT=$(pwd)

cd ~/.config/sublime-text-3/Packages
rm -rf User
ln -s ${CONFIG_ROOT}/User

cd "${save_cwd}"
