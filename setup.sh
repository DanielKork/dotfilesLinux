#!/bin/bash

# Go into scripts folder
cd ~/dotfiles/scripts

# Backup old configs
./backup.sh

# Install new configs
./install.sh

# Reload the shell
echo "🔄 Reloading the shell..."
exec $SHELL -l
