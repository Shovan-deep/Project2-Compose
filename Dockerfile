# Use the official Jenkins LTS image as the base image
FROM jenkins/jenkins:lts

# Switch to the root user to install dependencies
USER root

# Update and install necessary packages for Docker
RUN apt-get update -qq && apt-get install -qqy \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common

# Add Docker's official GPG key
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

# Add the Docker repository to sources
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

# Install Docker packages
RUN apt-get update -qq && apt-get install -qqy \
    docker-ce \
    docker-ce-cli \
    containerd.io

# Add the jenkins user to the docker group
RUN usermod -aG docker jenkins

# Switch back to the Jenkins user
USER jenkins

