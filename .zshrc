# History
HISTFILE=~/.zsh-histfile
HISTSIZE=5000
SAVEHIST=5000

# Options
setopt nomatch
setopt nobeep
setopt notify
setopt no_menu_complete
setopt no_case_glob
setopt no_case_match
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_save_no_dups
setopt hist_find_no_dups

# Environments
PATH=${PATH}:$HOME/.local/bin

# Defaults
export EDITOR='nvim'

# Plugins
fpath+=$HOME/.zsh/typewritten
autoload -U promptinit; promptinit
prompt typewritten

source /home/stretch/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/stretch/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Prompt customization 
TYPEWRITTEN_RELATIVE_PATH="home"

# Highlight on tab completion
autoload -U compinit; compinit
zstyle ':completion:*' menu select

# Keybinds for history
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

# Aliases
alias "ls"="eza --icons"
alias "v"="nvim"

# Program when opening shell
fastfetch
