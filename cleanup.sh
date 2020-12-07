#!/bin/sh

systemctl --user stop redis_server.service
systemctl --user disable redis_server.service
rm -f ~/.config/systemd/user/redis_server.service
podman stop redis_server
podman rm redis_server

