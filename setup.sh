#!/bin/bash

# Install rclone static binary
wget -q https://downloads.rclone.org/v1.53.0/rclone-v1.53.0-linux-amd64.zip
unzip -q rclone-v1.53.0-linux-amd64.zip
export PATH=$PWD/rclone-v1.53.0-linux-amd64:$PATH

echo "Trying to configure rclone..."
echo -e "$RCLONE_CONFIG" > rclone.conf

#install olaris
echo "Updating olaris-server from nightlies"
cd /opt
curl -vL 'https://gitlab.com/api/v4/projects/olaris%2Folaris-server/jobs/artifacts/develop/download?job=dist-linux-amd64' > /opt/build.zip && unzip -o /opt/build.zip && unzip "olaris-linux-amd64-*.zip"
echo "running olaris-server"
chmod +x /opt/bin/olaris

export OLARIS_SERVER_PORT=$PORT
echo "PORT IS"
echo "$PORT"
echo $PATH > PATH
cd /opt/bin/
./olaris
