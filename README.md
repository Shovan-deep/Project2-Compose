# Project2-Compose
### This Repository contains two files: a docker file 'Dockerfile' and a docker-compose file 'Docker-compose.yml'. 

## Dockerfile
This Dockerfile is used to create a custom Docker image based on the official Jenkins LTS mage. The purpose of this custom image is to integrate Docker into the Jenkins image so that Jenkins can communicate with the Docker daemon and carry out Docker-related tasks. 

## Docker-compose

This Docker Compose file is used to define and run a multi-container Docker application consisting of two services: dind (Docker-in-Docker) and jenkins.
