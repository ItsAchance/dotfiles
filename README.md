# ItsAchance's dotfiles

This is a repo containing my dotfiles running on macOS.

## Prerequisites

### Install Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
### Install GNU Stow
```
brew install stow
```
## Add the following alias to your .bashrc or .zshrc
```
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
```
### Clone the repo and change to your dotfiles directory
```
git clone git@github.com/ItsAchance/dotfiles.git
cd dotfiles
```
### Then use GNU stow to create symlinks
```
stow .
```

