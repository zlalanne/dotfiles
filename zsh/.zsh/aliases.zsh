
# Core utilities alias, most of these are taken from:
# https://wiki.archlinux.org/index.php/Core_Utilities
alias grep='grep -n --color=auto --exclude-dir={.bzr,.cvs,.git.hg.svn}'
alias mkdir='mkdir -p -v'
alias mv=' timeout 8 mv -iv'
alias rm=' timeout 3 rm -Iv --one-file-system'

# Clipboard
alias setclip='xclip -selection c'
alias getclip='xclip -selection clipboard -o'

# Files to Edit
alias i3conf="vim ~/.config/i3/config"
alias vimrc="vim ~/.vimrc"
