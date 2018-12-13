#!/bin/bash

alias yinstall="sudo apt install -y "

echo "System Setup Script"

# Install Aliases
cp .bash_aliases ~/.bash_aliases

# Install git config
cp .gitconfig ~/.gitconfig

# Update/Upgrade
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y

# Install Neovim
yinstall neovim

# Install sl
yinstall sl

# Setup ssh
echo "Paste Private Key Content"


