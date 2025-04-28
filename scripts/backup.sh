#!/bin/bash

echo "📦 Backing up current dotfiles..."

mkdir -p ~/dotfiles/backup

for file in .bashrc .bash_aliases .bash_profile .zshrc .aliases .functions .exports .zprofile .zshenv .gitconfig; do
  if [ -f ~/$file ]; then
    cp ~/$file ~/dotfiles/backup/
    echo "✅ Backed up $file"
  fi
done

echo "✅ Backup complete!"
