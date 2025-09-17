#!/bin/bash
set -euxo pipefail
cd /home/ubuntu/myapp || exit 1
# e.g., npm ci > /var/log/myapp/npm-install.log 2>&1
# start and redirect logs
nohup node index.js > /var/log/myapp/app.log 2>&1 &
