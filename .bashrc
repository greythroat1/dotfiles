# User specific environment
export PATH="$PATH:$HOME/.local/bin"

# Parameters settings
export HISTCONTROL=ignoreboth:erasedups
export HISTFILESIZE=2000
export HISTSIZE=2000

# Readline settings
bind "set bell-style none"
bind "set echo-control-characters off"
bind "set colored-completion-prefix on"
bind "set completion-ignore-case on"

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Defaults
export EDITOR='nvim'

# Aliases
alias v='nvim'
alias ls='eza --icons'

# Prompts
## Single-line prompt
PS1="\[\e[35m\]\w"
PS1+="\[\e[32m\] 󰘧 "
PS1+="\[\e[0m\]"

## Multi-line prompt
# PS1="\n\[\e[31m\]\u"
# PS1+="\[\e[37m\] @"
# PS1+="\[\e[34m\] \h"
# PS1+="\[\e[37m\] in"
# PS1+="\[\e[35m\] \w\n"
# PS1+="\[\e[32m\]󱞩 "
# PS1+="\[\e[0m\]"

# Program when opening shell
fastfetch
