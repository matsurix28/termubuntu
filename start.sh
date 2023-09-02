#!/bin/bash

yes n | pkg update -y && pkg upgrade -y
pkg install git
git clone https://github.com/matsurix28/termubuntu.git $HOME/termubuntu
bash $HOME/termubuntu/scripts/start_termux.sh
