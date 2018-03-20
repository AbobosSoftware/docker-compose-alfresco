#!/usr/bin/env bash
set -e
ARCHIVE_DIR_NAME=docker-compose-alfresco-master

cd /tmp/

rm -fr docker-compose-alfresco-master

curl https://github.com/MenelicSoftware/docker-compose-alfresco/archive/master.zip -o ${ARCHIVE_DIR_NAME}.zip

tar -xvf ${ARCHIVE_DIR_NAME}.zip

cd ${ARCHIVE_DIR_NAME}
chmod +x *.sh
./setup.sh

