### Команди docker
```
docker –version
docker pull
docker run
docker ps
docker ps -a
docker exec
docker stop
docker kill
docker commit
docker login
docker push
docker images
docker rm
docker rmi
docker build
Docker copy
Docker history
Docker logout
Docker logs
Docker network
Docker restart
Docker search
Docker volume
```


1. `docker –version`

This command is used to get the currently installed version of docker

2. `docker pull`

Usage: `docker pull <image name>`

This command is used to pull images from the docker repository(hub.docker.com)

3. `docker run`

Usage: `docker run -it -d <image name>`

This command is used to create a container from an image

4. `docker ps`

This command is used to list the running containers

5. `docker ps -a`

This command is used to show all the running and exited containers

6. `docker exec`

Usage: `docker exec -it <container id> bash`

This command is used to access the running container

7. `docker stop`

Usage: `docker stop <container id>`

This command stops a running container

8. `docker kill`

Usage: `docker kill <container id>`

This command kills the container by stopping its execution immediately. The difference between ‘docker kill’ and ‘docker stop’ is that ‘docker stop’ gives the container time to shutdown gracefully, in situations when it is taking too much time for getting the container to stop, one can opt to kill it

9. `docker commit`

Usage: `docker commit <conatainer id> <username/imagename>`

This command creates a new image of an edited container on the local system

10. `docker login`

This command is used to login to the docker hub repository

11. `docker push`

Usage: `docker push <username/image name>`

This command is used to push an image to the docker hub repository

12. `docker images`

This command lists all the locally stored docker images

13. `docker rm`

Usage: `docker rm <container id>`

This command is used to delete a stopped container
14. `docker rmi`

Usage: `docker rmi <image-id>`

This command is used to delete an image from local storage

15. `docker build`

Usage: `docker build <path to docker file>`

This command is used to build an image from a specified docker file

16. `Docker copy`

Usage: `COPY <source_file> <destination_directory>`

This command copies files or directories from the host machine’s file system to the container’s file system during Docker image construction.

17. `Docker history`
Usage: `docker history <image_name>`

Using this command, you may examine the evolution of a Docker image or its constituent parts.

18. `Docker Logout` 
Usage: `docker logout [REGISTRY_URL]`

This command is used to log out or remove the credentials used to authenticate with a Docker registry. 

19. `Docker logs`
Usage: `docker logout [REGISTRY_URL]`

This command is used to log out of a Docker registry or to delete the credentials used to login with it. 

20. `Docker network`
Usage: `docker network create <network_name>`

This command manages Docker networks. Docker networks enable containers to connect securely and isolatedly with one another and with external network resources.

21. `Docker restart`
Usage: `docker restart [OPTIONS] CONTAINER [CONTAINER…]`

This command is used to restart one or more Docker containers that are currently operating. Restarting a container entails gently pausing it and then restarting it with the same configuration and parameters. 

22. `Docker search`
Usage: `docker search [OPTIONS] TERM`

This command searches for Docker images on Docker Hub, a public registry for Docker images.

23. `Docker volume`
Usage: `docker volume create my_volume`

This command creates a new Docker volume named “my_volume” in the Docker container. Volumes in Docker are generated independently of containers.