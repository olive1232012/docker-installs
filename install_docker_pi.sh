#!/bin/bash
echo "Updating Packages..."
echo ""
echo ""
sleep 2s

sudo apt update

echo ""
echo ""
echo "Install Prerequisite Packages..."
echo ""
echo ""
sleep 2s

sudo apt-get install -y libffi-dev libssl-dev
sudo apt-get install -y python3 python3-pip

echo ""
echo ""
echo "Installing Docker through docker script..."
echo ""
echo ""
sleep 2s

curl -sSL https://get.docker.com | sh

echo ""
echo ""
echo "Adding Main user to Docker Group..."
echo ""
echo ""
sleep 2s

sudo usermod -aG docker ${USER}

echo ""
echo ""
echo "Installing Docker-Compose..."
echo ""
echo ""
sleep 2s

sudo pip3 -v install docker-compose

echo ""
echo ""
echo "Now you should log out and back in, or reboot your system."
echo ""
echo ""
