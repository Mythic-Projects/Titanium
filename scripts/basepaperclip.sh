#!/usr/bin/env bash

cp ../../Titanium-Server/build/libs/titanium-1.8.8-R0.1-SNAPSHOT.jar ./Paperclip/titanium-1.8.8.jar
cp ./work/1.8.8/1.8.8.jar ./Paperclip/minecraft_server.1.8.8.jar
cd ./Paperclip
sed -i -e 's/http:\/\/clojars/https:\/\/clojars/g' ./java8/pom.xml # Replace http repository with https
mvn clean package --batch-mode -Dmcver=1.8.8 "-Dpaperjar=../titanium-1.8.8.jar" "-Dvanillajar=../minecraft_server.1.8.8.jar"
cd ..
cp ./Paperclip/assembly/target/paperclip*.jar ../../Titanium-Server/build/libs/titanium.jar

cd ../../Titanium-Server/build/libs

echo ""
echo ""
echo ""
echo "Build success!"
echo "Copied final jar to $(pwd)/titanium.jar"
