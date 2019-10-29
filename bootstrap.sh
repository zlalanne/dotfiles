#!/usr/bin/env bash
#
# Install some tools to help install dotfiles. Expects an debian/ubuntu system

sudo apt-get update
sudo apt-get install -y git rsync stow

# Setup virtualenv
sudo apt-get install -y python3-virtualenv virtualenvwrapper
