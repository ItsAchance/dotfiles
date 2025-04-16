# zsh config

eval "$(starship init zsh)"

# Enable colors and change prompt:
#autoload -U colors && colors
#PS1="%B%{$fg[cyan]%}%~ %{$fg[green]%}>%{$reset_color%}%b "

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Shows time and date at the right side of the prompt
#RPROMPT="%{$fg[cyan]%}%D{%f/%m/%y}|%D{%H:%M:%S}%{$reset_color%}"

# Export GO path
export GOPATH=$HOME/go

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Ignore duplicate entries in .zsh_history
setopt HIST_IGNORE_ALL_DUPS

# Shares command history between tmux panes
setopt INC_APPEND_HISTORY

# Jump word with control + f or b
bindkey "^b" backward-word
bindkey "^f" forward-word

# Alias
alias ls='ls --color'
alias grep='grep  --color=auto'
alias vim='nvim'
alias py='python3'
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias bw='NODE_OPTIONS="--no-deprecation" bw'
alias tf='tofu'
alias xargs='xargs '
alias ipy='ipython3 --TerminalInteractiveShell.editing_mode="vi"'
alias sed='gsed'
alias fzvim='nvim $(fzf --preview="bat -f {}")'

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Functions
function gpw { bw get password "$1" | pbcopy 2>&1; echo "Password copied to clipboard" }
