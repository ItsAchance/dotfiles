#!/usr/bin/env bash

# Sets wallpaper
osascript -e osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Users/alexander.chance/backgrounds/lofiwallpaper.png"'

# Sets the dock to the left
defaults write com.apple.dock orientation left

# Sets dock to autohide
defaults write com.apple.dock autohide -int 0

# Sets dock icon size
defaults write com.apple.dock tilesize -int 70

# Sets Caps Lock to left Control
hidutil property --set '{"UserKeyMapping": [ {"HIDKeyboardModifierMappingSrc":0x700000039, "HIDKeyboardModifierMappingDst":0x7000000E0} ]}'

