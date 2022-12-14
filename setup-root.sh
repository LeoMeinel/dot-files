#!/bin/bash
###
# File: setup-root.sh
# Author: Leopold Meinel (leo@meinel.dev)
# -----
# Copyright (c) 2022 Leopold Meinel & contributors
# SPDX ID: GPL-3.0-or-later
# URL: https://www.gnu.org/licenses/gpl-3.0-standalone.html
# -----
###

# Fail on error
set -e

# Copy dot-files
cp -R ~/dot-files/root/.config ~/dot-files/root/.bash_profile ~/dot-files/root/.bashrc ~/dot-files/root/.bash_aliases ~/
source ~/.bash_profile

# Create .ssh
mkdir -p ~/.ssh
chmod 700 ~/.ssh

# Create src
mkdir -p ~/src
chmod 700 ~/src

# Create XDG dirs
mkdir -p ~/.local/share/android
mkdir -p ~/.local/share/cargo
mkdir -p ~/.local/share/go
mkdir -p ~/.local/share/platformio
mkdir -p ~/.local/share/rustup
mkdir -p ~/.local/state/bash

# Create ~/.local/share/gnupg
mkdir -p ~/.local/share/gnupg
chmod 700 ~/.local/share/gnupg

# Set default rust
rustup default stable

# Initialize nvim
nvim --headless -c 'sleep 5' -c 'q!'

# Remove repo
rm -rf ~/dot-files
