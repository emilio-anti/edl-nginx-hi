# Deploying Custom Nginx-hello Image Using Terraform, GKE, CIRCLECI, Helmfile, Helm and Helm-secrets

The repository contains all that is needed in order to deploy using Circleci a custom nginx-hello using helmfile, helm and helm-secrets in a GKE cluster.

Currently the repository contains 2 branches dev and main which belongs to stage.

The repository triggers an automatic deployment using circleci config.yml file for each branch or can be built manually. If you go through the repository there are README.md files with information about the deployment.

# Using environment variables in nginx configuration
The image was modified in order to be able to add environment variables to the .conf file. The index.html was modified also so it can display the values Environment and a Secret.

#### NGINX webserver that serves a simple page containing its hostname, IP address and port as wells as the request URI and the local time of the webserver.


The images are uploaded to Docker Hub

To download the image run:
```
$ docker pull emiliork1231/hello-nginx:latest
```

How to run:
```
$ docker run -P -d emiliork1231/hello-nginx:latest
```

The images were created to be used as simple backends for various load balancing demos.
