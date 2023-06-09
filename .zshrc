### Command history
HISTFILE=~/.zsh-histfile
HISTSIZE=5000
SAVEHIST=5000

### Options
setopt autocd 
setopt nomatch
setopt notify
unsetopt menucomplete
setopt automenu

autoload -U compinit 
compinit

### Plugin > using antigen
source $HOME/antigen.zsh

## antigen use oh-my-zsh
## antigen theme https://github.com/tobyjamesthomas/pi.git pi

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
neofetch

