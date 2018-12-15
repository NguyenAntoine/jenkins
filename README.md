# Jenkins

## Installation

Set chown to directory `jenkins_home` to user jenkins

```bash
chown 1000 ./jenkins_home
```

## How to update Jenkins version ?

````bash
docker-compose down
docker-compose pull
docker-compose up -d
```
