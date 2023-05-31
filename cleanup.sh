docker kill $(docker ps -q)
docker container rm $(docker container ls -aq)
docker image rm $(docker image ls -aq)
docker volume rm $(docker volume ls -q)
docker system prune -f
