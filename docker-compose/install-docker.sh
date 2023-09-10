#!/bin/sh

# Update
# sudo apt update

# Upgrade
# sudo apt upgrade -y

# Install required dependencies
sudo apt install lsb-release ca-certificates apt-transport-https software-properties-common -y

# Adding Docker repository to system sources
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update system packages
sudo apt update

# Install Docker
sudo apt install docker-ce -y

echo "Done :)"

# Create the docker group
sudo groupadd docker
sudo usermod -aG docker $USER

sudo systemctl status docker