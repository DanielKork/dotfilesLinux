# Common Shortcuts
alias ll='ls -la --color=auto'
alias ..='cd ..'
alias ...='cd ../..'

# Fuzzy Finder Aliases
alias hist='history | fzf'
alias cdf='cd $(find . -type d | fzf)'
alias cz='cd $(zoxide query -l | fzf)'

# Quick Edit & Reload
alias edp='nano ~/.bashrc'
alias src='source ~/.bashrc'

