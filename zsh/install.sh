#!/usr/bin/env bash
#
# Script to install oh-my-zsh so zsh plugins will work

if [[ -d ~/.oh-my-zsh ]]; then
    echo "Oh My Zsh already installed"
else
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi
