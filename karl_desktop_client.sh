#!/bin/bash

$version=1.0-SNAPSHOT
$name=karl-desktop-client-linux-x64-$version.jar

mkdir ~/karl-desktop-client
cd ~/karl-desktop-client
rm -f name
wget https://github.com/karl-automatenservice/public-releases/releases/download/$version/$name
cp $name karl-desktop-client.jar

echo "export MESA_EXTENSION_OVERRIDE=\"-GL_ARB_invalidate_subdata\"" > start.sh
echo "/snap/openjdk/current/jdk/bin/java -jar karl-desktop-client.jar" >> start.sh
./start.sh


