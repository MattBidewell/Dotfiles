#!/bin/bash

function ask() {
  read -p "$1 (Y/n): " resp
  [ -z "$response" ] || [ "$response" = "y" ]
}

echo "[] Configuration setup..."

# Check if Homebrew is installed, and install it if not
echo "Checking if Homebrew is installed"

if ! command -v brew &> /dev/null; then
  echo "Homebrew not found, installing..."
  # run brew install but mute the output
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" > /dev/null
else
  echo "Homebrew is already installed."
fi

echo "Installing brew apps..."
# run brew bundle and mute the output
/bin/bash -c "$(brew bundle ./brew/Brewfile)" > /dev/null

for file in shell/*
do
  fullpath=$(realpath $path)

  if ask "Source $file"; then
    echo "source $fullpath"
    # echo "source $fullpath" >> ~/.bashrc
  fi
done

# for file in ""
# loop through dot files and create symbolic links in ~/.
echo "Creating symbolic links for dotfiles..."
for file in "TBC"; do
  if ask "Add $file?"; then
    ln -s "$(realpath "$file")" ~/${file}
  fi
done

