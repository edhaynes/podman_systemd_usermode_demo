#!/bin/sh

podman create --name redis_server -p 6379:6379 redis
podman generate systemd redis_server --restart-policy=always -t 5 -f -n
mkdir -p ~/.config/systemd/user
cp ./container-redis_server.service ~/.config/systemd/user/redis_server.service
systemctl enable --user redis_server.service
systemctl start --user redis_server.service
systemctl status --user redis_server.service

