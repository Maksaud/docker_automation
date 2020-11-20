# Docker DevOps
## Overview
This is a project to build DevOps automated workflow using docker

I will be:
- Taking a dockerised app made with NodeJS
- Using Git/Github as code management.
- Using Circle CI for automated CI that triggers image builds
- The image build will trigger on docker hub
- I will be using Tutum container platform for delivery
- Using AWS for production

### Dockerized app
An app configured to run in containers.
To dockerise an app, you will use a dockerfile.

### Dockerfile
Configureation file containing instructions on how to build a docker image.

## The App
A very simple app that links to a website.

### Pre-requirements

For the app to run and be teste the following is installation are required.

```
Express
Jade
Mocha
Supertest
```

These can be installed with npm