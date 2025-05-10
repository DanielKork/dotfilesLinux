# Source bash_aliases if available
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Load Zoxide if available
[ -f ~/dotfiles/zoxide/zoxide.bash ] && source ~/dotfiles/zoxide/zoxide.bash

# Fancy Bash prompt
PS1='\[\e[0;32m\]\u@\[\e[0;34m\]\w\[\e[m\] \$ '
