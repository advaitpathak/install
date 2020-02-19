#!/usr/bin/env bash

# Install essentials
sudo yum install git
sudo yum install curl
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Clone the GIT Repository
sudo git clone http://advait.pathak:Advait%4022@192.168.0.21/Innoviti_Mumbai/Analytics.git

# Start nginx
sudo chown ec2-user:ec2-user Analytics
cd Analytics
bash start_containers.sh
