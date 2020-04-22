![License MIT](https://img.shields.io/badge/license-MIT-blue.svg)
[![](https://img.shields.io/docker/stars/adamkdean/jenkins.svg)](https://hub.docker.com/r/adamkdean/jenkins 'DockerHub') [![](https://img.shields.io/docker/pulls/adamkdean/jenkins.svg)](https://hub.docker.com/r/adamkdean/jenkins 'DockerHub')

# jenkins

`adamkdean/jenkins` is a Jenkins docker image with docker embedded binary

## Usage

The container can be ran as a standalone container that redirects all requests.

```
docker run \
  --detach \
  --publish 8080:8080 \
  --volume jenkins_home:/var/jenkins_home \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  adamkdean/jenkins
```

## Usage (nginx-proxy)

It works better if it's used with [jwilder/nginx-proxy](https://github.com/jwilder/nginx-proxy).

```
docker run \
  --detach \
  --restart always \
  --name jenkins \
  --network your-network-here \
  --volume jenkins_home:/var/jenkins_home \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  --env VIRTUAL_HOST=jenkins.example.com \
  --env VIRTUAL_PORT=8080 \
  --env LETSENCRYPT_HOST=jenkins.example.com \
  --env LETSENCRYPT_EMAIL="your@email.com" \
  adamkdean/jenkins
```

For a full guide on how to setup and use nginx-proxy see [Automatic SSL with Let's Encrypt & Nginx](https://dev.to/adamkdean/automatic-ssl-with-let-s-encrypt-nginx-4nfk).
