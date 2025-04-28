#!/bin/bash

echo "🔗 Linking dotfiles..."

# Zsh files
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/dotfiles/zsh/.aliases ~/.aliases
ln -sf ~/dotfiles/zsh/.functions ~/.functions
ln -sf ~/dotfiles/zsh/.exports ~/.exports
ln -sf ~/dotfiles/zsh/.zprofile ~/.zprofile
ln -sf ~/dotfiles/zsh/.zshenv ~/.zshenv

# Bash files
ln -sf ~/dotfiles/bash/.bashrc ~/.bashrc
ln -sf ~/dotfiles/bash/.bash_aliases ~/.bash_aliases
ln -sf ~/dotfiles/bash/.bash_profile ~/.bash_profile

# Git config
ln -sf ~/dotfiles/git/.gitconfig ~/.gitconfig

echo "✅ Dotfiles linked successfully!"
