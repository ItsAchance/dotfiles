# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### git
### stow
### brew

```
brew install git, stow
```
## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com/ItsAchance/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```
