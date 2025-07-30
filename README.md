# My dotfiles

This directory contains the dotfiles for my system using mainly macOS

## Prerequisites

### Install Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install stow
```
## Add the following alias to your .bashrc or .zshrc
```
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
```
### Change directory to your dotfiles repo, for example
```
cd ~/dotfiles
```
### And then clone the repo
```
$ git clone git@github.com/ItsAchance/dotfiles.git
$ cd dotfiles
```
### Then use GNU stow to create symlinks

```
$ stow .
```

