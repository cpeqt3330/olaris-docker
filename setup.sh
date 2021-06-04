#!/bin/bash

# Install rclone static binary
wget -q https://downloads.rclone.org/v1.53.0/rclone-v1.53.0-linux-amd64.zip
unzip -q rclone-v1.53.0-linux-amd64.zip
export PATH=$PWD/rclone-v1.53.0-linux-amd64:$PATH

echo "Trying to configure rclone..."
echo -e "$RCLONE_CONFIG" > rclone.conf

export OLARIS_SERVER_PORT=$PORT

echo $PATH > PATH
