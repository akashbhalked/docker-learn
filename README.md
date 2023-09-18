# COMMANDS

# to build a docker image with no tag-name->

> docker build .

# to build a docker image with -t tag-name->

> docker build -t <image-id> .

# to run a docker image --name containe-name in -d detach mode with port->

> docker run -d -p <container-port>:<app-port> --name <container-name> <image-id>
> docker run -d --env PORT=<PORT> -p <container-port>:<PORT> --name <container-name> <image-id>

# to list available images ->

> docker image ls

# to list available docker conatiner ->

> docker ps
> docker ps -a

# to delete the image -->

> docker image rm <image-id>

# to stop the conatiner -->

> docker stop <container-name>

# to delete the conatiner -->

> docker rm <container-name>

# to forcely delete the conatiner -->

> docker rm <container-name> -f

# to see logs -->

> docker logs <container-name>

#

#

# Dockerfile

FROM node:version -----> setup docker node image version
WORKDIR /app -----> setup worlking directory for docker image
COPY package.json . -----> copy package.json to working directory , working directory is cashed now
RUN npm install ---> run npm command inside the container and install production dependencies only
COPY . . ------------> copy all files from current folder into app folder in container, this will be cached too
EXPOSE PORT ------> provide port to run the application
CMD ["npm","start"] -----> run command to start container
