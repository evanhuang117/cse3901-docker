First off edit the docker compose file to map a folder on your computer to one in the docker container, so you can attach persistent storage to a container if you ever need to rerun/build it from scratch.

### If you don't want to build the image from scratch and just use a CI build, do this

`docker compose up -d`

Download the docker image
`docker pull evanhuang117/cse3901-docker`

Start the container and attach to it
`docker run -it evanhuang117/cse3901-docker bash`


### Manually building/running the docker image

git clone https://github.com/evanhuang117/cse3901-docker && cd cse3901-docker

docker run -it $(docker build -q .) bash

***Exit the docker container shell with CTRL-d***


***To rebuild the docker image***

`docker build . -t 'your image name'`

***To start a container with the image***

edit the `docker-compose.yml` and replace the value for `image` with `'your image name'`

Then `docker compose up -d`



