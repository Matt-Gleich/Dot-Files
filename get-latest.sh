#!/bin/bash

# Removing repo copy folders
rm -rf zsh
rm -rf vim
rm -rf homebrew/Brewfile
rm -rf flutter
rm -rf VSCode
rm -rf macos
rm -rf jrnl

# Making new folders
mkdir zsh
mkdir vim
mkdir flutter
mkdir VSCode
mkdir macos
mkdir jrnl

# Generating Brewfile
cwd=$(pwd)
cd ~
rm -rf Brewfile
brew bundle dump --describe
cd $cwd

# Generating shortcuts plist
touch macos/shortcuts.plist
shortcuts read --as-plist >> macos/shortcuts.plist

# Copying files to repo
cp ~/.zshrc ./zsh/.zshrc
cp ~/.p10k.zsh ./zsh/.p10k.zsh
cp ~/.vimrc ./vim/.vimrc
cp ~/Brewfile ./homebrew/Brewfile
cp ~/.flutter_settings ./flutter/.flutter_settings
cp ~/.config/jrnl/jrnl.yaml ./jrnl/.jrnl.yaml
cp ~/Library/Application' 'Support/Code/User/settings.json ./VSCode/settings.json
