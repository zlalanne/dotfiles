if [ -f /etc/os-release ]
then
    name=$(cat /etc/os-release | grep "^NAME" | cut -d \" -f 2)
    if [[ ${name} == *"elementary"* ]];
    then
        builtin . /usr/share/pantheon-terminal/enable-zsh-completion-notifications || builtin true
    fi
fi

