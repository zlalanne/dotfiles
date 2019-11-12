#!/usr/bin/zsh
#
# Setup snap packages

apps_bin_path=/etc/profile.d/apps-bin-path.sh

if [[ -f ${apps_bin_path} ]]; then
    emulate sh -c "source ${apps_bin_path}"
fi
