#!/bin/bash

# Update package information
sudo apt-get update

# Install necessary packages
sudo apt-get install curl apt-transport-https ca-certificates software-properties-common -y

# Add Docker GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update package information again to include Docker repository
sudo apt-get update

# Install Docker
sudo apt-get install -y docker-ce

# Optional: Add current user to the docker group for non-root Docker usage
# sudo usermod -aG docker $(whoami)

# Optional: Start Docker service
# sudo systemctl start docker

# Optional: Enable Docker service to start on boot
# sudo systemctl enable docker

echo "Docker has been successfully installed."
