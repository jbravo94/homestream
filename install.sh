#!/bin/bash
apt-get update
apt-get install -y docker.io docker-compose
mkdir -p /etc/docker/compose
cp docker-compose@.service /etc/systemd/system/docker-compose@.service
systemctl daemon-reload
systemctl enable docker-compose@homestream.service
ln -s $(pwd) /etc/docker/compose/homeserver

echo "Type systemctl start docker-compose@homestream.service to start the stream."
