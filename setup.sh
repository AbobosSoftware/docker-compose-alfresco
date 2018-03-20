#!/usr/bin/env bash
set -e
source .env

echo "===about to install docker"
sudo snap install docker
echo "===docker installed"
echo "===about to install docker-compose"
sudo curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
 
sudo chmod +x /usr/local/bin/docker-compose
  
docker-compose --version
echo "===docker-compose installed"

echo "===creating directory $ALFRESCO_DATA"
sudo mkdir -p $ALFRESCO_DATA
echo "===moving files to $ALFRESCO_HOME"
cp -fr * .env ${ALFRESCO_HOME}
echo "===finished installing alfresco!"
echo "===To run Alfresco, please do: cd  ${ALFRESCO_HOME} then sudo ./start.sh "
