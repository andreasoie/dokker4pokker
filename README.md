# Docker Cheatcodes for Ubuntu

### Uninstall Docker Engine
1. Uninstall the Docker Engine, CLI, Containerd, and Docker Compose packages:
```
 sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-compose-plugin
 ```
2. Images, containers, volumes, or customized configuration files on your host are not automatically removed. To delete all images, containers, and volumes:
```
 sudo rm -rf /var/lib/docker
 sudo rm -rf /var/lib/containerd
```
Note: You must delete any edited configuration files manually.

### Install Docker Engine
1. ...
```
stuff
```


Start docker with
```
sudo systemctl start docker
```
Check if docker is running
```
sudo systemctl status docker
```

