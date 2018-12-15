# Jenkins

## Installation

Set chown to directory `jenkins_home` to user jenkins

```bash
chown 1000 ./jenkins_home
```

## How to update Jenkins version ?

````bash
wget http://updates.jenkins-ci.org/download/war/$(JENKINS_VERSION)/jenkins.war
mv ./jenkins.war /usr/share/jenkins/jenkins.war
chown jenkins:jenkins /usr/share/jenkins/jenkins.war
```
