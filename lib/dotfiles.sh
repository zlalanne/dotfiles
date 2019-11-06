
declare -r HOSTNAME=$(hostname)

function check_codename() {
    codename=$(lsb_release --codename | cut -f2)

    if [[ "${codename}" != "bionic" ]]; then
        exit 1
    fi
}


function at_work() {
    if [[ "${hostname}" == "*0273326" ]]; then
        true
    else
        false
    fi
}

function dotfiles_apt() {
    sudo apt-get --quiet install --yes "${@}"
}

function dotfiles_npm() {
    npm install --quiet --no-progress --prefix ${HOME}/.local/npm --global "${1}"
}
