# .zshrc file

# Path to dotfiles repository
export DOTFILES=$HOME/.dotfiles

# Load local settings
if [[ -a $HOME/.localrc ]]
then
    source $HOME/.localrc
fi

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

# User configuration
export PATH=$HOME/.bin:/usr/local/bin:$PATH
export EDITOR='vim'

