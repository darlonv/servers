#!/bin/bash
mkdir -p data
docker run --name jlab --rm -td -p 8899:8888 -v "$PWD"/data:/data -e JUPYTER_ENABLE_LAB=yes darlon/jlab

#run as root
#docker exec -it --user root -e GRANT_SUDO=yes jlab /bin/bash