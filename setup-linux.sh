#!/bin/bash

sudo yum -y update
sudo yum -y install chromium firefox vim screen
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
yum check-update
sudo yum install code
sudo yum -y install kubernetes podman
LANG=C xdg-user-dirs-update
sudo yum -y install wireshark
sudo yum -y install libreoffice



