FROM node:7

MAINTAINER maksaud@hotmail.com

# Copy app to /src
COPY package*.json ./

# Install app and dependencies into /src
RUN cd ./; npm install

EXPOSE 8080

CMD node ./app.js