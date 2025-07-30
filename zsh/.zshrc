# zsh config

# Set shell bindkeys to emacs, sorry vim
bindkey -e

# Enable starship prompt
eval "$(starship init zsh)"

# Set neovim as default editor
export EDITOR="nvim"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

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
alias nano='nvim'

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Functions
function gpw { password=$(bw get password $1); if [[ $? -eq 0 ]] then; echo "${password}" | pbcopy; echo 'Password copied to clipboard'; else :; fi }

# Make vim.databod use psql for postgresql
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
