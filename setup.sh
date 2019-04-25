#!/bin/bash

alias yinstall="sudo apt install -y "

echo "System Setup Script"

# Install Aliases
[ -e ~/.bash_aliases ] && cp ~/.bash_aliases ~/backup.bash_aliases
cp .bash_aliases ~/.bash_aliases

# Install git config
[ -e ~/.gitconfig ] && cp ~/.gitconfig ~/backup.gitconfig
cp .gitconfig ~/.gitconfig

# Update/Upgrade
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y

# Install Neovim
yinstall neovim

# Install sl
yinstall sl

# Install fortune
yinstall fortune



# Setup ssh
echo "Paste Private Key Content"


