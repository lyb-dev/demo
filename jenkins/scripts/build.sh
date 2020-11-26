#!/bin/sh

echo "2.maven build"
sh "mvn package  -Dmaven.test.skip=true"
echo "MAVEN BUILD SUCCESS"

echo "cp target/*.jar 2 docker/"
sh "cp target/*.jar docker/"

echo "3.Build Docker Image Stage"
sh "docker build -t demo ./docker/"
echo "Build Docker Image Success"