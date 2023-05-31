# Docker Cheatcodes for Ubuntu

#### Install Docker Engine
Follow [instructions](https://docs.docker.com/engine/install/)

##### Make Docker launch at start-up
```bash
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
```

##### Stop and Remove all containers
```bash
docker kill $(docker ps -q)
docker container rm $(docker container ls -aq)
```
##### Remove all images
```bash
docker image rm $(docker image ls -aq)
```
##### Remove all unused data
```bash
docker system prune
```

##### Remove all volumes
```bash
docker volume rm $(docker volume ls -q)
```
##### Remove services using your Docker port
> Error starting userland proxy: listen tcp4 0.0.0.0:XXXX: bind: address already in use
```bash
sudo kill `sudo lsof -t -i:XXXX`
```

##### When Docker has consumed all your disk space
```bash
sudo -s
systemctl stop docker
rm -rf /var/lib/docker
systemctl start docker
exit 
```
