#!/bin/bash
# Author: Rohtash Lakra
# Display Port Usage
#
echo
PORT=${1:-8080}
PORT=$((PORT))
echo "Checking ${PORT} port usage"
#sudo lsof -i tcp:$PORT
sudo lsof -i -P | grep 8080 | awk '{ print $2 }'
echo
