#!/bin/bash
cd /home/ec2-user/my-node-app || exit
#sudo systemctl start my-node-app.service
sudo nohup npm start &
