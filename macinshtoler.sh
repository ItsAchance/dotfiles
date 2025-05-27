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

# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center

# Bottom right screen corner
defaults write com.apple.dock wvous-br-corner -int 0
defaults write com.apple.dock wvous-br-modifier -int 0

# Top right screen corner
defaults write com.apple.dock wvous-tr-corner -int 0
defaults write com.apple.dock wvous-tr-modifier -int 0

# Bottom left screen corner
defaults write com.apple.dock wvous-bl-corner -int 0
defaults write com.apple.dock wvous-bl-modifier -int 0

# Top left screen corner
defaults write com.apple.dock wvous-tl-corner -int 0
defaults write com.apple.dock wvous-tl-modifier -int 0



