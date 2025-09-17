#!/bin/bash
# Scripts/start.sh
# This script is run by AWS CodeDeploy (ApplicationStart hook)

# Exit immediately if a command exits with a non-zero status
set -e

# Log file
LOGFILE="/home/ubuntu/myapp/deploy.log"

echo "==== Deployment started at $(date) ====" >> $LOGFILE

# Go to app folder
cd /home/ubuntu/myapp

# Example: start a Node.js app
# Adjust according to your app (npm, python, java, etc.)
if [ -f "server.js" ]; then
  echo "Starting Node.js app..." >> $LOGFILE
  nohup node server.js > app.log 2>&1 &
elif [ -f "app.py" ]; then
  echo "Starting Python app..." >> $LOGFILE
  nohup python3 app.py > app.log 2>&1 &
elif [ -f "index.html" ]; then
  echo "Static site detected, nothing to start." >> $LOGFILE
else
  echo "No known app entry point found in /home/ubuntu/myapp" >> $LOGFILE
fi

echo "==== Deployment finished at $(date) ====" >> $LOGFILE
