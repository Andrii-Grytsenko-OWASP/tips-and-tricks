#!/bin/bash

cd /tmp
wget https://download.docker.com/linux/ubuntu/dists/focal/pool/stable/amd64/containerd.io_1.4.9-1_amd64.deb
wget https://download.docker.com/linux/ubuntu/dists/focal/pool/stable/amd64/docker-ce-cli_20.10.9~3-0~ubuntu-focal_amd64.deb
wget https://download.docker.com/linux/ubuntu/dists/focal/pool/stable/amd64/docker-ce_20.10.9~3-0~ubuntu-focal_amd64.deb
sudo dpkg -i docker-ce_20.10.9~3-0~ubuntu-focal_amd64.deb docker-ce-cli_20.10.9~3-0~ubuntu-focal_amd64.deb containerd.io_1.4.9-1_amd64.deb
rm docker-ce_20.10.9~3-0~ubuntu-focal_amd64.deb
rm docker-ce-cli_20.10.9~3-0~ubuntu-focal_amd64.deb
rm containerd.io_1.4.9-1_amd64.deb

sudo apt-install curl -y
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
