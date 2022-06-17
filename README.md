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

#### A: Set up the repository

1. Update the apt package index and install packages to allow apt to use a repository over HTTPS:
```
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg lsb-release
```
2. Add Docker’s official GPG key:
```
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```
3. Use the following command to set up the repository:
```
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```
#### B: Install Docker Engine
1. Update the apt package index, and install the latest version of Docker Engine, containerd, and Docker Compose, or go to the next step to install a specific version:
```
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

```
2. Find and download a <VERSION_STRING> of your choice (e.g.: <VERSION_STRING> = 5:20.10.15~3-0~ubuntu-focal)
```
apt-cache madison docker-ce
sudo apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io docker-compose-plugin
```
3. (Optional) Verify that Docker Engine is installed correctly by running the hello-world image.
```
sudo docker run hello-world
```

Start docker with
```
sudo systemctl start docker
```
Check if docker is running
```
sudo systemctl status docker
```

Got permission denied while trying to connect to the Docker daemon socket
1. Try add yourself (user) to the group.
```
sudo gpasswd -a $USER docker
```
2. Set the proper permissions.
```
sudo setfacl -m user:<YOUR USERNAME>:rw /var/run/docker.sock
```


