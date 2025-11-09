#!/bin/bash

sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock
sudo dpkg --add-archtecture i386
sudo apt update -y
mkdir /home/metrogn0me/Downloads/programas
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P /home/metrogn0me/Downloads/programas
sudo dpkg -i /home/metrogn0me/Downloads/programas/*.deb
sudo apt -f install -y
sudo apt install snapd -y
sudo snap install spotify
sudo apt update && sudo apt dist-upgrade -y
sudo apt autoclean
sudo apt autoremove -y
