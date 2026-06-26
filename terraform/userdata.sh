#!/bin/bash
set -e

exec > >(tee /var/log/user-data.log | logger -t user-data) 2>&1

echo "===== Starting EC2 Initialization ====="

apt-get update -y
apt-get upgrade -y

apt-get install -y \
    docker.io \
    git \
    curl \
    unzip \
    python3 \
    python3-pip

systemctl enable docker
systemctl start docker

usermod -aG docker ubuntu

mkdir -p /home/ubuntu/app
chown -R ubuntu:ubuntu /home/ubuntu/app

docker --version
python3 --version
git --version

echo "===== EC2 Initialization Completed Successfully ====="