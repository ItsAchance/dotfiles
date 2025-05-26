#!/usr/bin/env bash

# Sets wallpaper
osascript -e osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Users/alexander.chance/backgrounds/lofiwallpaper.png"'

# Sets dock to autohide
defaults write com.apple.dock autohide -int 0

