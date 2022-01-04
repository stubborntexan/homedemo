#!/bin/bash
# This shell script is just for reference to ensure it works outside of the cloud-init process and so it can be formatted into the cloudinit.yml
sudo apt update
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt update && sudo apt install docker-ce docker-ce-cli containerd.io docker-compose -y


#sudo docker-compose pull
#sudo docker-compose up -d