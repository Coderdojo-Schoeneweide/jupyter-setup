#!/bin/bash

CONTAINER_NAME="jupyter_cdsw"
docker rm -f "$CONTAINER_NAME" 2>/dev/null
docker run -p 8888:8888 -u 1000:1000 -v "$PWD/work":"/home/cdsw/work" --name "$CONTAINER_NAME" bruno1996/cdsw_jupyterlab:latest
