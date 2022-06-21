# Docker Cheatcodes for Ubuntu

### Uninstall Docker Engine
1. Uninstall the Docker Engine, CLI, Containerd, and Docker Compose packages:
```
 sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-compose-plugin
 sudo rm -rf /var/lib/docker
 sudo rm -rf /var/lib/containerd
```
Note: You must delete any edited configuration files manually.

### Install Docker Engine

#### A: Set up the repository
Follow [instructions](https://docs.docker.com/engine/install/)

##### Make Docker launch at start-up
```
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
```

##### Remove containers
```
docker container rm $(docker container ls -aq)
```
##### Remove images
```
docker image rm $(docker image ls -aq)
```
##### Clean-up
```
docker system prune -y
```
