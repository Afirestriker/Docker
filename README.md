## Getting Started with Docker

First, redirect to your sample application.

Second, Start the Docker Desktop application

Third, create a Dockerfile make sure 'D' is capital:

Fourth, setup the Dockerfile and verify it.

Fifth, add .dockerignore file in case you need to exclude somme files or folders.

Sixth, Run the docker build command

```bash
# build syntax
docker build -t $imageName:$label .

# actual build
docker build -t welcome-to-docker:dev .
```

Breaking down the command:
 - The `-t` flag tags your image with a name. (welcome-to-docker in this case).
 - The `:dev` is an optional label used to categories the build. Here :dev represent the image is for development environment.
 - The `.` lets Docker know where it can find the `Dockerfile`.

Seventh, Run your container

Once the build is complete, an image will appear in the Images tab of the Docker desktop application.

Select the image name to see its details. Select Run to run it as a container. In the Optional settings remember to specify a port number (something like 8089).

Eight, View the frontend

You now have a running container. If you don't have a name for your container, Docker provides one. View your container live by selecting the link below the container's name.

## Learn More

To learn more about Docker, take a look at the following resources:

[Docker Documentation](https://docs.docker.com/get-started/overview/) - learn about Docker.


## Deploy Docker Image
The easiest way to deploy your Docker Images is through [Docker Hub](https://www.docker.com/products/docker-hub/).

# Docker Commands

```bash
# docker command help
docker --help

# build docker image
docker build -t $imageName:$label .

# show all docker images
docker images

# stop running image
docker stop $imageName

# docker container command help
docker container --help

# list all docker containers (running)
docker container ls

# list all docker containers (running and stopped)
docker container ls -a

# stop one or more running containers
docker container kill $containerId

# kill one or more running containers
docker container kill $containerId

# remove one or more containers
docker container rm $containerId
docker container rm $(docker ps -aq)
```

# Q&A
**Q**: What is the Difference Between `Docker stop` and `Docker kill` container?

**A**: Docker stop gracefully stops a container by sending a SIGTERM signal followed by a SIGKILL signal after a grace period. Docker kill immediately stops the container by sending a SIGKILL signal, without waiting for it to shut down gracefully

