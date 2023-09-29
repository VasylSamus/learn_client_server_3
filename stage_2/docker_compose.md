## структура файлу
```
services:
     container1:
         properties: values

     container2:
         properties: values

networks:
     network:

volumes:
     volume:
```

## YML types
Each compose property has one or multiple possible types. The different possibilities are a basic key:value, an array, or a dictionary.

### Value
'key: value'

### Array
```
key:
     - value
     - value
```
### Dictionary
```
master:
     key: value
     key: value
```

## Properties

### build (value)
Build an image with the specified name by using the Dockerfile in the specified directory.

Need help or want to share feedback? Join my discord community!
```
container:
     build: ./path
     image: image-name
```

### image (value)
Use an image that is on the system or that can be downloaded from the docker hub.

```
image: image-name
```

### container_name (value)
Specify the container name, that the container will be accessible with.

```
container_name: name
```

### volumes (array)
Create container volumes to persist data and to make certain directories available on the host system.

```
volumes:
     - /path/to/host-dir:/path/to/container-dir
```

### command (value)
Overwrite the start command of the container.

```
command: command-to-execute
```

### environment (dictionary/array)
Define environment variables to use inside of the container.

```
environment:
     KEY: VALUE
---
environment:
     - KEY=VALUE
```

### env_file (dictionary/array)
Define environment variables inside a .env file to use inside of the container. The environment variables specified in the file will override the variables specified in the environment property.
```
env_file: .env
---
env_file:
     - .env
```

### restart (value)
Specify a restart rule for the container. (no, always, on-failure, unless-stopped)

```
restart: unless-stopped
```

### networks (array)
Define the networks a container should be attached to.

```
networks:
     - network-name
```

### ports (array)
Define ports to expose to other containers and the host system.
```
ports:
     - "9999:9999"
```

### expose (array)
Define ports to expose only to other containers.

```
expose:
     - "9999"
```

network_mode (value)
Set the network driver for the container. (bridge, host, none, service:[service name], container:[container name/id])
```
network_mode: host
```

### depends_on (array)
Specify the build, start and stop order of the container.

```
depends_on:
     - container-name
```

## Other
### idle container
Define the command, to make the container do nothing! The container will not stop and it is possible to enter it without problems. Mostly only needed for debugging.

```
command: tail -f /dev/null
```

### named volumes
Create named volumes that can be used in the volumes property. More information.

```
services:
   container:
     image: image-name
     volumes:
       - data-volume:/path/to/dir
volumes:
   data-volume:
```

###networks
Create new networks that can be used in the network’s property. It will specify the name and the network driver. More information.

```
networks:
   frontend:
     driver: bridge
```
