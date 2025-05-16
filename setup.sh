#!/bin/bash

# Go into scripts folder
cd ~/dotfiles/scripts

# Source the install.sh file to use its functions
source ./install.sh

# Backup old configs
./backup.sh

# Install new configs
./install.sh
install_dependencies
setup_zsh


# Reload the shell
if command -v zsh >/dev/null && [ "$SHELL" != "$(which zsh)" ]; then
  echo "🔁 Reloading shell into Zsh..."
  exec zsh
fi
#echo "🔄 Reloading the shell..."
#exec $SHELL -l
