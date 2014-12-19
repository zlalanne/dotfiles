
# Core utilities alias, most of these are taken from:
# https://wiki.archlinux.org/index.php/Core_Utilities
alias grep='grep -n --color=auto --exclude-dir={.bzr,.cvs,.git.hg.svn}'
alias mkdir='mkdir -p -v'
alias mv=' timeout 8 mv -iv'
alias rm=' timeout 3 rm -Iv --one-file-system'

# Make man pages more readable
man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}
