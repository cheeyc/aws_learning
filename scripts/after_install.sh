#!/bin/bash
cd /home/ec2-user/my-node-app || exit
if ! command -v node &> /dev/null
then
  echo "Installing Node.js..."
  curl -fsSL https://rpm.nodesource.com/setup_18.x | sudo bash -
  sudo yum install -y nodejs
fi
sudo chown -R ec2-user:ec2-user /home/ec2-user/my-node-app
sudo chmod -R 755 /home/ec2-user/my-node-app

# Install dependencies
sudo -u ec2-user npm install --omit=dev