#!/usr/bin/env bash
set -e
ARCHIVE_DIR_NAME=docker-compose-alfresco-master

cd /tmp/
sudo apt install  p7zip-full
rm -fr docker-compose-alfresco-master*

curl -L https://github.com/MenelicSoftware/docker-compose-alfresco/archive/master.zip -o ${ARCHIVE_DIR_NAME}.zip
sleep 5
7z x ${ARCHIVE_DIR_NAME}.zip

cd ${ARCHIVE_DIR_NAME}
chmod +x *.sh
./setup.sh

