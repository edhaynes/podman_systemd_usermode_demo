# podman_systemd_usermode_demo

System should have podman
run following as user


"launch_redis_container.sh" launches redis container, adds usermode systemd entry, enables and starts it

"test_redis_container.sh" tests redis API, then kills redis server so systemd restarts, tests API again

"cleanup.sh" cleans up demo so you can start again from the top
