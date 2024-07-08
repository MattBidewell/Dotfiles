# dot-files

This repository contains my dot files for my personal setup.

It should automatically install the dot files in the home directory and if needed install brew and all bundled packages in the Brewfile.

### Zsh

It relies on the following submodules for zsh plugins:

- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [alias-tips](https://github.com/djui/alias-tips)


### Git

Has two config files one for the global git config and one for the work git config.

### Brew

The Brewfile contains all the packages that I use basis.

### Vscode

The settings.json file contains all the settings that I use in vscode.

> ⚠️ **Warning**:
This will overwrite your current settings.json file.
This might require you to reload vscode when making changes.


## Installation

```bash
chmod +x install.sh
./install.sh
```