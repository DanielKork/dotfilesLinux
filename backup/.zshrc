# Load Zsh Environment
source ~/dotfiles/zsh/.zshenv

# Load Exports
[ -f ~/dotfiles/zsh/.exports ] && source ~/dotfiles/zsh/.exports

# Load Aliases
[ -f ~/dotfiles/zsh/.aliases ] && source ~/dotfiles/zsh/.aliases

# Load Functions
[ -f ~/dotfiles/zsh/.functions ] && source ~/dotfiles/zsh/.functions

# Load Zprofile (for login shells)
[ -f ~/dotfiles/zsh/.zprofile ] && source ~/dotfiles/zsh/.zprofile

# Load FZF if available
[ -f ~/dotfiles/fzf/fzf.bash ] && source ~/dotfiles/fzf/fzf.bash

# Load Zoxide if available
[ -f ~/dotfiles/zoxide/zoxide.bash ] && source ~/dotfiles/zoxide/zoxide.bash

# Fancy prompt
autoload -Uz colors && colors
PROMPT="%F{green}%n%f@%F{blue}%~%f %# "
