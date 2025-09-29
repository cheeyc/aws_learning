#!/bin/bash
sudo systemctl stop my-node-app.service || true
sudo rm -rf /home/ec2-user/my-node-app
