#!usr/bin/bash

APPS=(
chrome
balena etcher
obs
spotify
nvim
simple note
localsend
keepassxc
mgba
bambustudio
)

remove_locks () {
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock
}

update_repos () {
sudo apt update -y
}


