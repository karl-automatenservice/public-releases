#!/bin/bash

version=1.0-SNAPSHOT
name=karl-display-client-linux-x64-$version.jar

echo "Download $name"

mkdir -p ~/karl-display-client
cd ~/karl-display-client
rm -f $name
wget "https://github.com/karl-automatenservice/public-releases/releases/download/$version/$name"

rm -f karl-display-client.jar
cp $name karl-display-client.jar

sudo chmod +x ./start.sh
echo "export MESA_EXTENSION_OVERRIDE=\"-GL_ARB_invalidate_subdata\"" > start.sh
echo "/snap/openjdk/current/jdk/bin/java -jar karl-display-client.jar" >> start.sh
./start.sh