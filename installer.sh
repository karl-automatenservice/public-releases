#!/bin/bash
echo "Start installer"
apt update
apt install snapd
snap install core

apt install xrdp
systemctl enable xrdp

snap install ngrok
wget https://raw.githubusercontent.com/karl-automatenservice/public-releases/main/ngrok_config.yml
export PATH="/snap/ngrok/current/:$PATH"
source ~/.profile
ngrok service install --config ngrok_config.yml
ngrok service start

snap install openjdk
export PATH="/snap/openjdk/current/jdk/bin"
source ~/.profile
