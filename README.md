First off edit the docker compose file to map a folder on your computer to one in the docker container, so you can attach persistent storage to a container if you ever need to rerun/build it from scratch.


***To rebuild the docker image***

`docker build . -t cse3901`

***To start a container with the image***

`docker run -dit cse3901`


***To attach to the container in a bash shell***

`docker ps`

This will output the containers running, copy the container id then

`docker exec -it 'container id' /bin/bash`
