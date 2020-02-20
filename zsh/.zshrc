# .zshrc file
#
# To Customize:
# - Put files to source in $HOME/.zsh/ directory
# - To configure oh-my-zsh plugins/settings/theme modify $HOME/.oh-my-zsh
# - Put any local settings to source in $HOME/.localrc

# Path to dotfiles repository
export DOTFILES=$HOME/.dotfiles

# Load local settings if it exists
if [[ -a $HOME/.localrc ]]
then
    source $HOME/.localrc
fi

# Load custom autocompletions
fpath[1,0]=$HOME/.zsh/completion/
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path $HOME/.zsh/cache

# Load oh-my-zsh
source $HOME/.oh-my-zsh.zsh

# Load all other zsh files
typeset -U config_files
config_files=($HOME/.zsh/*.zsh)
for file in ${config_files}
do
    source $file
done
unset config_files
