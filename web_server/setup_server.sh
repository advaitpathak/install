#!/usr/bin/env bash

# Install essentials
sudo yum install git
sudo yum install curl
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Clone the GIT Repository
sudo git clone https://advaitpathak:Advait22@github.com/advaitpathak/install.git

# Start nginx
cd install
sudo chown ec2-user:ec2-user web_server
cd web_server
bash start_containers.sh
