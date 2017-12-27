# difido-docker
Docker swarm with the Difido server, Elastisearch server and Kibana

## Prerequisites
* The docker run only on Linux
* To make sure that Elastisearch server will be able to launch, you will first need to set the `vm.max_map_count` to at least 262144

To set the 'vm.max_map_count` on Ubuntu:

```
sudo echo /etc/sysctl.conf >> vm.max_map_count=262144
```

## Run the Docker Swarm
Just run

```
> ./start_swarm
```

Browser to `127.0.0.1`
