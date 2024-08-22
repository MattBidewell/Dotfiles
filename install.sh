#!/bin/bash

echo "[] Configuration setup..."

# Check if Homebrew is installed, and install it if not
echo "[] Checking if Homebrew is installed"

if ! command -v brew &> /dev/null; then
  echo "[Homebrew] Homebrew not found, installing..."
  # run brew install but mute the output
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" > /dev/null
else
  echo "[Homebrew] Homebrew is already installed."
fi

echo "[Homebrew] Installing brew apps..."
# run brew bundle and mute error output
brew bundle --file ./Brew/Brewfile  > /dev/null

echo "[zsh] running git submodule init and update"
git submodule init
git submodule update

echo "[zsh] creating git symlinks"
stow git

echo "[zsh] creating zsh symlinks"
stow zsh

echo "[vscode] creating vscode symlinks"
echo "[vscode] creating symlink to ~/Library/Application Support/Code/User/..."
stow -t ~/Library/Application\ Support/Code/User vscode

# make sure nvim config directory exists
mkdir -p "${XDG_CONFIG_HOME:-$HOME/.config}/nvim"

echo "[nvim] creating nvim symlinks"
stow -t "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim nvim
# stow -t vscode


# Inital idea was to manually create Symlinks... instead we will use stow

# function ask() {
#   read -p "$1 (Y/n): " resp
#   [ -z "$response" ] || [ "$response" = "y" ]
# }

# for file in shell/*
# do
#   fullpath=$(realpath $path)

#   if ask "Source $file"; then
#     echo "source $fullpath"
#     # echo "source $fullpath" >> ~/.bashrc
#   fi
# done
# for file in ""
# # loop through dot files and create symbolic links in ~/.
# echo "Creating symbolic links for dotfiles..."
# for file in "TBC"; do
#   if ask "Add $file?"; then
#     ln -s "$(realpath "$file")" ~/${file}
#   fi
# done

# stow -v -t ~ shell
