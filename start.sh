#!/usr/bin/env bash
set -e
source .env

cd ${ALFRESCO_HOME}
echo "starting up alfresco ..."
sudo docker-compose up -d
sleep 2m
sudo docker-compose ps
echo "started alfresco!"
echo "Please navigate to https://127.0.0.1:8443/share "