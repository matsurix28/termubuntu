#!/bin/bash

# Setting VNC.
sudo -S apt install tigervnc-standalone-server openbox xterm -y

# Setting Time Zone
ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
sudo dpkg-reconfigure --frontend noninteractive tzdata

# Download dotfiles.
read -n1 -p "Do you clone dotfiles? It will take a long time to set up. [y/N]: " yn
if [[ $yn = [yY] ]]; then
  curl -LO https://raw.githubusercontent.com/matsurix28/dotfiles/main/install_linux.sh; source install_linux.sh
else
  printf '\n'
fi
