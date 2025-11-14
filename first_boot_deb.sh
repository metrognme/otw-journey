#!/bin/bash

#personal script to install everething I usually need after installing a fresh new debian distro.

URL_CHROME="https://www.google.com/chrome/next-steps.html?platform=linux&statcb=0&installdataindex=empty&defaultbrowser=0"
URL_SIMPLENOTE="https://github.com/Automattic/simplenote-electron/releases/download/v2.23.2/Simplenote-linux-2.23.2-amd64.deb"
DIRECTORY_PROGRAMAS="$HOME/Downloads/programas/"

remover_locks() {
  sudo rm /var/lib/dpkg/lock-frontend
  sudo rm /var/cache/apt/archives/lock
}

adicionar_ppas() {
  true
}

adicionar_arquitetura() {
  sudo dpkg --add-archtecture i386
}

atualizar_repositorios() {
  sudo apt update
}

instalar_debs() {
  mkdir /home/metrogn0me/Downloads/programas
  wget "$URL_CHROME" -P "$DIRECTORY_PROGRAMAS"
  wget "$URL_SIMPLENOTE" -P "$DIRECTORY_PROGRAMAS"
  sudo apt -f install -y
}

instalar_pacotes_apt() {
  sudo apt install snapd -y
}

instalar_snaps() {
  sudo snap install spotify
  sudo snap install nvim --classic
  sudo snap install localsend
  sudo snap install keepassxc
}

upgrade_mais_limpeza() {
  sudo apt dist-upgrade -y
  sudo apt autoclean
  sudo apt autoremove -y
}

remover_locks
adicionar_arquitura
adicionar_ppas
atualizar_repositorios
instalar_debs
instalar_pacotes_apt
instalar_snaps
atualizar_repositorios
upgrade_mais_limpeza
