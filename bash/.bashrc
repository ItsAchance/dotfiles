# bash config
[ -x /home/linuxbrew/.linuxbrew/bin/brew ] && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

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
# PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND; }history -a"
PROMPT_COMMAND="history -a; history -c; history -r; ${PROMPT_COMMAND:-}"

# Aliases
alias ls='ls --color'
alias grep='grep --color=auto'
alias vim='nvim'
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias tf='tofu'
alias nano='nvim'
alias k='kubectl'
alias devcon='distrobox enter devcon'

# Opencode
export PATH=/home/alexander.chance@fnox.it/.opencode/bin:$PATH

# Set which TTY GPG should use
export GPG_TTY=$(tty)

#vSphere
export VSPHERE_LOCAL=alexander_chance@vsphere.local

