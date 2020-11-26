# Docker builder
This script will download the specified git repository, build an image from the Dockerfile in the root, and will publish it on docker hub.
## Usage
Start the container using
```
docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock docker-builder
```
then follow the instructions.