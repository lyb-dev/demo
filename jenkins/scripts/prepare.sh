#!/usr/bin/env bash

echo "1.Prepare Stage"
checkout scm
pom = readMavenPom file: 'pom.xml'
docker_img_name = "${pom.groupId}-${pom.artifactId}"
echo "group: ${pom.groupId}, artifactId: ${pom.artifactId}, version: ${pom.version}"
echo "docker-img-name: ${docker_img_name}"
