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

# Path for air
export PATH=$PATH:$(go env GOPATH)/bin

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
alias tf='tofu'
alias xargs='xargs '
alias ipy='ipython3 --TerminalInteractiveShell.editing_mode="vi"'
alias sed='gsed'
alias fzvim='nvim $(fzf --preview="bat -f {}")'
alias nano='nvim'
alias k='kubectl'
alias lf='lf-ueberzug'

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Make vim.databod use psql for postgresql
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# Path for rancher desktop
export PATH=$PATH:$HOME/.rd/bin

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/achance/.dart-cli-completion/zsh-config.zsh ]] && . /home/achance/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

