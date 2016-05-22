#!/usr/bin/env bash
#
# Install ansible and clone dotfiles. Ready to install machine

sudo add-apt-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install git ansible python-pycurl stow

git clone https://github.com/zlalanne/dotfiles ~/.dotfiles
