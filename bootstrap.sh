#!/usr/bin/env bash
set -e
ARCHIVE_DIR_NAME=docker-compose-alfresco-master

cd /tmp/
echo "===installing 7zip"
sudo apt install  p7zip-full
rm -fr docker-compose-alfresco-master*
echo "===downloading zip file from github"
curl -L https://github.com/MenelicSoftware/docker-compose-alfresco/archive/master.zip -o ${ARCHIVE_DIR_NAME}.zip
sleep 5
echo "===Extracting zip file"
7z x ${ARCHIVE_DIR_NAME}.zip

cd ${ARCHIVE_DIR_NAME}
chmod +x *.sh
echo "===Running setup process"
./setup.sh
echo "===Setup done"
