# Jenkins docker-compose

[Using Jenkins Docker Image](https://github.com/jenkinsci/docker/blob/master/README.md)

## Installation

Set chown to directory `jenkins_home` to user jenkins

```bash
chown 1000 ./jenkins_home
```

Create the `.env` file from [.env.dist](.env.dist) example with the
environment variables from [docker let's encrypt nginx proxy](https://github.com/JrCs/docker-letsencrypt-nginx-proxy-companion/wiki/Basic-usage)

```bash
docker-compose up -d
```

## Update docker images

```bash
./updateDockerImages.sh
```
