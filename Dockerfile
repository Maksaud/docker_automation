FROM centos:centos6

MAINTAINER maksaud@hotmail.com

# Enable EPEL for node.js
RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

# Install Node...
RUN yum install -y npm

# Copy app to /src
COPY . /src

# Create a nonroot user, and switch to it
RUN /usr/sbin/useradd --create-home --home-dir /usr/local/nonroot --shell /bin/bash nonroot
RUN chown -R nonroot /usr/local/
RUN chown -R nonroot /usr/lib/
RUN chown -R nonroot /usr/bin/
RUN chown -R nonroot /src
RUN /bin/su nonroot

# Install app and dependencies into /src
RUN cd /src; npm install

EXPOSE 8080

CMD cd /src && node ./app.js