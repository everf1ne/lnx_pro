#!/bin/bash

# Обновление списка пакетов
sudo apt update

# Установка необходимых зависимостей
sudo apt install -y software-properties-common

# Установка tree
sudo apt install -y tree

# Установка VirtualBox
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"
sudo apt update && sudo apt install -y virtualbox-7.0
sudo apt install -y virtualbox-ext-pack
# sudo apt install -y virtualbox

# Установка Vagrant
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install vagrant

# Установка Git
sudo apt install -y git

# Установка Vim
sudo apt install -y vim

# Установка Wget
sudo apt install -y wget

# Установка Curl
sudo apt install -y curl

# Установка Tcpdump
sudo apt install -y traceroute net-tools tcpdump 

# Установка Visual Studio Code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update && sudo apt install -y code

# Удаление временного файла
rm microsoft.gpg

echo "Установка завершена!"
