# Docker in Docker + Jenkins

This is a docker image with Jenkins, on the 2.3 version, with the docker (+ docker-compose) daemon inside, using just the docker.sock of the host.

## How to build and run

```
docker-compose up --build
```

Server url: http://{DOCKER_HOST}:8080
* Password: docker exec jenkins2.3 cat /var/jenkins_home/secrets/initialAdminPassword 
