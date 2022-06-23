# Docker Cheatcodes for Ubuntu

#### Install Docker Engine
Follow [instructions](https://docs.docker.com/engine/install/)

##### Make Docker launch at start-up
```
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
```

##### Stop and Remove all containers
```
docker kill $(docker ps -q)
docker container rm $(docker container ls -aq)
```
##### Remove all images
```
docker image rm $(docker image ls -aq)
```
##### Remove all unused data
```
docker system prune
```
