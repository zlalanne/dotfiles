# dotfiles

[![Build Status](https://travis-ci.org/zlalanne/dotfiles.svg?branch=master)](https://travis-ci.org/zlalanne/dotfiles)

There are two parts to my personal dotfiles repository.

1. Bootstrap script taken from the [Zach Holman dotfiles](https://github.com/holman/dotfiles)
1. [Ansible playbook](http://docs.ansible.com/playbooks.html) to install packages and get my machine up and configured

## Components
* __bin__/: Anything in `bin/` will get added to your `$PATH` and will be available anywhere
* __topic/\*.symlink__: Any files ending in `*.symlink` get symlinked into your `$HOME`. This is so you can keep all of those versioned in your dotfiles but still keep those autoloaded files in your home directory. These get symlinked in when you run `script/bootstrap`.
* __topic/\*.zsh__: Any files ending in `.zsh` get loaded into your environment.
* __playbook__: Ansible playbook to install applications and change system settings. The playbook is broken into different roles based on different use cases for your machine. Check out `playbook/roles`for all the different roles included. To run the playbook run `playbook/bootstrap`

## Configuration

* To modify dofiles check the topic folder and modify the file ending in `*.symlink`, these files are symlinked to your `$HOME` directory during installation
* To modify packages installed and system configuration look at the related role in `playbook/roles`. To remove a role from your machine simply remove the entry in `playbook/hosts`

## Installation

1. Run `script/bootstrap`, this takes all `*.symlink` files and adds them to your home folder
1. Install [ansible](http://docs.ansible.com/intro_installation.html)
1. Run `playbook/bootstrap` to run the ansible playbook. This will install packages, install oh-my-zsh, install vim plugins and a lot more to get the machine configured.

## Extra
Other features:
* Add a `.localrc` file in your home directory for environment variables you don't want apart of your dotfiles repository
