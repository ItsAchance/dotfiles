# bash config

# Set shell keybindings to emacs, sorry vim
set -o emacs

# Enable starship prompt
eval "$(starship init bash)"

# Set neovim as default editor
export EDITOR="nvim"

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

# Export GO path
export GOPATH=$HOME/go

# Path for air
export PATH=$PATH:$(go env GOPATH)/bin

# History
HISTSIZE=10000
HISTFILESIZE=10000
HISTFILE=~/.bash_history
HISTCONTROL=ignoredups:erasedups

# Share command history between tmux panes
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND; }history -a"

# Aliases
alias ls='ls --color'
alias grep='grep --color=auto'
alias vim='nvim'
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias tf='tofu'
alias nano='nvim'
alias k='kubectl'
