#!/bin/bash
cd /home/ec2-user/my-node-app || exit
#sudo systemctl start my-node-app.service
nohup npm start > /home/ec2-user/my-node-app/app.log 2>&1 &
