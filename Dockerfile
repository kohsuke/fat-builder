FROM maven:3.3-jdk-8

# add Ruby
RUN apt-get update && apt-get install -y ruby

# add Docker
RUN apt-get install -y apt-transport-https
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN echo "deb [arch=amd64] https://download.docker.com/linux/debian jessie stable" > /etc/apt/sources.list.d/docker.list
RUN apt-get update && apt-get install -y docker-ce
