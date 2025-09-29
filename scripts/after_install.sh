#!/bin/bash
cd /home/ec2-user/my-node-app || exit
if ! command -v node &> /dev/null
then
  echo "Installing Node.js..."
  curl -fsSL https://rpm.nodesource.com/setup_18.x | sudo bash -
  sudo yum install -y nodejs
fi
npm install --production