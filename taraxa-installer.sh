#!/bin/bash
sudo apt update
sudo apt install wget curl unzip -y < "/dev/null"
wget -O get-docker.sh https://get.docker.com 
sudo sh get-docker.sh
sudo apt install -y docker-compose < "/dev/null"
rm -f get-docker.sh
cd $HOME
wget https://github.com/Taraxa-project/taraxa-ops/archive/refs/heads/master.zip && unzip master.zip && rm -f master.zip
cd $HOME/taraxa-ops-master/taraxa_compose
sudo docker-compose up -d
