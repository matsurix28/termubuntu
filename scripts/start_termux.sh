#!/bin/sh

# Access permission.
termux-setup-storage

# Make .bashrc
echo "# Termux bashrc" >> .bashrc

# Install Ubuntu.
pkg install proot proot-distro -y
proot-distro install ubuntu
proot-distro login ubuntu --termux-home -- bash termubuntu/scripts/setting_user_ubuntu.sh

# Reload bashrc.
shopt -s expand_aliases
source $HOME/.bashrc
ubuntu -- bash /data/data/com.termux/files/home/termubuntu/scripts/start_ubuntu.sh
ubuntu
