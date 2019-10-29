
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
