First off edit `Makefile` to map a folder on your computer to one in the docker container, so you can attach the folder with your code into the container

### If you don't want to build the image from scratch and just use a CI build, do this
```
git clone https://github.com/evanhuang117/cse3901-docker && cd cse3901-docker
make remote
```

### Manually building/running the docker image
```
git clone https://github.com/evanhuang117/cse3901-docker && cd cse3901-docker
make local
```

***Exit the docker container shell with CTRL-d***





