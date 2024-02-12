#!/bin/bash
mkdir ~/karl-desktop-client
cd ~/karl-desktop-client
wget https://github.com/karl-automatenservice/public-releases/releases/download/1.0-SNAPSHOT/karl-desktop-client-linux-x64-1.0-SNAPSHOT.jar
cp karl-desktop-client-linux-x64-1.0-SNAPSHOT.jar karl-desktop-client.jar

echo "java -jar karl-desktop-client.jar" > start.sh
./start.sh


