#!/bin/bash
# to execute run
# rm -f ./start_installer.sh && sudo -s && wget https://raw.githubusercontent.com/karl-automatenservice/public-releases/main/start_installer.sh && chmod 777 ./start_installer.sh && ./start_installer.sh
echo "Init"
mkdir /tmp/install
cd /tmp/install
rm -f ./installer.sh
echo "Download installer"
wget https://raw.githubusercontent.com/karl-automatenservice/public-releases/main/installer.sh
chmod 777 ./installer.sh
sh ./installer.sh

