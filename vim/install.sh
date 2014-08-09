#!/usr/bin/env bash
#
# Script to install Vundle so vim plugins will work

if [[ -d ~/.vim/bundle ]]; then
    echo "Vundle already installed"
else
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
