# nexusoss3-docker
Sonatype Nexus 3 Images

This is a full buildout of Nexus 3.1.0-04 docker image. Based on Ubuntu and Java 8.

# Running


Docker compose file is provided
```
    docker-compose up
```
Will start Nexus

You can modify the environment params in the docker-compose.yml

Alternatively use docker command
```
    docker run -d -p 8081:8081 --name nexus-docker -v /data/docker/repository:/data jalexoid/sonatype-nexus:3.1.0-04
```
Or with larger Java heap size
```
    docker run -d -p 8081:8081 -e MAX_HEAP=4096M --name nexus-docker -v /data/docker/repository:/data jalexoid/sonatype-nexus:3.1.0-04
```


# User

Nexus runs with user ID 200, so all external data will have that user ID associated on the filesystem.

`useradd -r -u 200 -m -c "nexus role account" -d /data -s /bin/false nexus`
