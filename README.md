# Docker Cheatcodes for Ubuntu

#### Install Docker Engine
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
