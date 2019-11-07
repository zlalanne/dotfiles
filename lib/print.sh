#!/usr/bin/env bash

function info() {
    printf "\r  [ \033[00;34m..\033[0m ] %s\n" "$1"
}

function user() {
    printf "\r  [ \033[0;33m??\033[0m ] %s\n" "$1"
}

function success() {
    printf "\r\033[2K  [ \033[00;32mOK\033[0m ] %s\n" "$1"
}

function fail() {
    printf "\r\033[2K  [\033[0;31mFAIL\033[0m] %s\n" "$1"
    echo ''
    exit
}
