#!/bin/bash

# Go to the app directory
cd /home/ubuntu/myapp

# Install dependencies (again, just in case)
npm install

# Kill existing app running on port 80 (optional, advanced)
# sudo fuser -k 80/tcp

# Start app in background
nohup npm start > app.log 2>&1 &

