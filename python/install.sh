#!/usr/bin/env bash
#
# Install python packages

source ../script/print.sh

user 'Install python virtualenv tools?'
read -e status
if [[ $status == "Y" || $status == "y" ]]; then
    sudo pip install virtualenv
    sudo pip install virtualenvwrapper
fi

user 'Install better bpython terminal?'
read -e status
if [[ $status == "Y" || $status == "y" ]]; then
    sudo pip install bpython
fi
