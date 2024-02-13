#!/bin/bash
mkdir ~/install
cd ~/install

echo "Start installer"

apt update
apt install snapd
snap install core

apt install xrdp
systemctl enable xrdp

sudo touch /etc/profile.d/add_path.sh
sudo chmod 777 /etc/profile.d/add_path.sh

snap install openjdk
snap install ngrok
wget https://raw.githubusercontent.com/karl-automatenservice/public-releases/main/ngrok_config.yml
echo "export PATH=\$PATH:/snap/ngrok/current/jdk/bin:/snap/openjdk/current/jdk/bin" >> /etc/profile.d/add_path.sh
source ~/.profile
ngrok service install --config ngrok_config.yml
ngrok service start

wget https://raw.githubusercontent.com/karl-automatenservice/public-releases/main/karl_desktop_client.sh
./karl_desktop_client
