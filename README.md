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
