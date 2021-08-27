First off edit the docker compose file to map a folder on your computer to one in the docker container, so you can attach persistent storage to a container if you ever need to rerun/build it from scratch.

### If you don't want to build the image from scratch and just use a CI build, do this

`docker compose up -d`

***To attach to the container in a bash shell***

`docker ps` -> This will output the containers currently running, copy the container id then

`docker exec -it 'container id' /bin/bash`

***Exit the docker container shell with CTRL-d***

## Manual build steps
***To rebuild the docker image***

`docker build . -t 'your image name'`

***To start a container with the image***

edit the `docker-compose.yml` and replace the value for `image` with `'your image name'`

Then `docker compose up -d`



