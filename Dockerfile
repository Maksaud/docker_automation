FROM centos:centos6

MAINTAINER maksaud@hotmail.com

# Enable EPEL for node.js
RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

# Install Node...
RUN yum install -y npm

# Copy app to /src
COPY package*.json ./

# Install app and dependencies into /src
RUN cd ./; npm install

EXPOSE 8080

CMD node ./app.js