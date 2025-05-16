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

# First: define detect_os
detect_os() {
  case "$(uname -s)" in
    Linux*)  echo linux;;
    Darwin*) echo mac;;
    *)       echo unknown;;
  esac
}

install_dependencies() {
  OS=$(detect_os)

  echo "📦 Installing dependencies for $OS..."

  if [ "$OS" = "mac" ]; then
    # macOS: use Homebrew
    command -v brew >/dev/null 2>&1 || {
      echo "🍺 Installing Homebrew..."
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    }

    brew install fzf neovim
    /opt/homebrew/opt/fzf/install --all --no-bash --no-fish

  elif [ "$OS" = "linux" ]; then
    # Ubuntu/Debian
    sudo apt update
    sudo apt install -y fzf neovim

    # Optional: fzf keybindings
    yes | /usr/share/doc/fzf/examples/install --no-bash --no-fish

  else
    echo "⚠️ Unsupported OS: $OS"
  fi
}


#setup_zsh() {
  # Check if zsh is installed
#  if ! command -v zsh >/dev/null 2>&1; then
#    echo "🐚 Installing Zsh..."
#   if [ "$OS" = "mac" ]; then
#      brew install zsh
#    elif [ "$OS" = "linux" ]; then
#      sudo apt install -y zsh
#    fi
#  fi

  # Set Zsh as default shell if it's not already
#  if [ "$SHELL" != "$(which zsh)" ]; then
#    echo "💡 Setting Zsh as default shell..."
#    chsh -s "$(which zsh)" "$USER"
#    echo "✅ Zsh will be your default shell next time you log in."
#  else
#    echo "✔️ Zsh is already your default shell."
#  fi
#}



