#!/bin/bash
docker-compose down
docker pull jenkins/jenkins:lts
docker-compose build
docker-compose up -d
