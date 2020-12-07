#!/bin/sh

echo  '#Send command to redis to set index "frog" to 56' 
echo  '#Not using redis cli to keep base OS clean'
echo  '(printf "set frog 56\n";) | nc localhost 6379'

(printf "set frog 56\n";) | nc localhost 6379

echo '#Show value frog is properly set'
echo '(printf "get frog\n";) | nc localhost 6379'
(printf "get frog\n";) | nc localhost 6379


echo '#Show ID of running redis-server container'
echo pgrep redis-server
pgrep redis-server

echo '#Now Kill redis-server container and watch systemd relaunch it'
echo pkill redis-server
pkill redis-server

sleep 2

echo '#Pid of new redis-server container'
echo pgrep redis-server
pgrep redis-server

echo '#Validate we can still get value of frog'
echo '(printf "get frog\n";) | nc localhost 6379'
(printf "get frog\n";) | nc localhost 6379
