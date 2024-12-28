### Command history
HISTFILE=~/.zsh-histfile
HISTSIZE=5000
SAVEHIST=5000

### Options
setopt nomatch
setopt nobeep
setopt notify
setopt nomenucomplete

autoload -U compinit 
compinit

### Allow to execute python app (ex: jupyter-lab)
PATH=${PATH}:$HOME/.local/bin

### Plugin > using antigen
source $HOME/antigen.zsh

antigen bundle reobin/typewritten@main
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search

antigen apply

# Prompt customization 
TYPEWRITTEN_RELATIVE_PATH="home"
TYPEWRITTEN_CURSOR="terminal"

# Highlight on completion
zstyle ':completion:*' menu select

# Keybind for history
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

### Aliases
alias "v"="nvim"
alias "rn"="ranger"

### Program when opening shell
fastfetch
