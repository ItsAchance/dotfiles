# zsh config

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Shares command history between tmux panes
setopt inc_append_history

# Shows time and date at the right side of the prompt
#RPROMPT="%{$fg[cyan]%}%D{%f/%m/%y}|%D{%H:%M:%S}%{$reset_color%}"

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Alias
alias ls='ls --color'
alias grep='grep  --color=auto'
alias vim='nvim'
alias py='python3'
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias bw='NODE_OPTIONS="--no-deprecation" bw'

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

