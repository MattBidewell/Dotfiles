# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="af-magic"

# source custom configurations from ~/.zsh directory
source ~/.zsh/aliases.zsh # For alias definitions.
source ~/.zsh/plugins.zsh # For plugin configurations.
source ~/.zsh/nvm.zsh # For Node Version Manager (NVM) configurations.
source ~/.zsh/fzf.zsh # For FZF configurations.
source ~/.zsh/sdkman.zsh # For SDKMAN configurations.
source ~/.zsh/functions.zsh # For custom functions.
source ~/.zsh/path.zsh # For $PATH and environment variable configurations.
source ~/.zsh/custom.zsh # For any other custom configurations.
source ~/.zsh/go.zsh # For Go configurations.

# if work
# source ~/.zsh/work.zsh

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# User configuration

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

ssh-add --apple-use-keychain ~/.ssh/id_ed25519

