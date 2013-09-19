#!/usr/bin/env bash

### Setup ###
clear
log "Setting up Mac mini Continuous Intergration Server"

### dotFiles ###
echo "-----> Downloading dotfiles"
cd; mkdir -p ${HOME}/dotfiles && cd $_
curl -#L https://github.com/mathiasbynens/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,bootstrap.sh,LICENSE-MIT.txt}

echo "-----> Downloading mac-mini-ci files"
cd; mkdir -p ${HOME}/mac-mini-ci && cd $_
curl -#L https://github.com/willfarrell/mac-mini-ci/tarball/master | tar xzv --strip-components 1 --exclude={README.md,bootstrap.sh,CI Server.graffle}

log "-----> Setting up Mac"
curl -#L https://github.com/mathiasbynens/dotfiles/tarball/master | tar xzv --strip-components 1 --exclude={README.md,bootstrap.sh,CI Server.graffle}
sh .osx

log "-----> Installing XCode &  Command Line Tools"
# To be included in Boxen - https://github.com/boxen/boxen/issues/90

# change mac settings
# 

# change background
osascript -e scripts/Blank Desktop Image.scpt

# Clear Dock
osascript -e scripts/Clear Dock.scpt

## Terminal
defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applicatons/Utilities/Terminal.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'

## Browsers Folder

# system prefs - http://www.macosxautomation.com/applescript/features/system-prefs.html
# 




log "-----> Initializing Boxen"

log "-----> Setting up Boxen"

# node - https://gist.github.com/jexchan/1528060

log "-----> Done!"