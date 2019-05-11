#!/bin/bash

# Runs jenkins on port 8080
# tutorial: https://jenkins.io/doc/tutorials/build-a-java-app-with-maven/#setup-wizard

docker run \
  --rm \
  -u root \
  -p 8080:8080 \
  -v jenkins-data:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v "$HOME":/home \
  jenkinsci/blueocean
