#!/bin/bash

docker run -p 8888:8888 -u 1000:1000 -v "$PWD/work":"/home/cdsw/work" --name jupyter_cdsw bruno1996/cdsw_jupyterlab:latest

# docker run -d --init \
#     --hostname jupyterlab \
#     --log-opt max-size=50m \
#     -p 8888:8888 \
#     -e DOCKER_USER=$(id -un) \
#     -e DOCKER_USER_ID=$(id -u) \
#     -e DOCKER_PASSWORD=$(id -un) \
#     -e DOCKER_GROUP_ID=$(id -g) \
#     -v "$(pwd)/data":/workdir \
#     dclong/jupyterlab /scripts/sys/init.sh --switch-user


#     -v "$(pwd)":/workdir \
#     -v "$(dirname $HOME)":/home_host \
