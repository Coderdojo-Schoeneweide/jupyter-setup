#!/bin/bash

CONTAINER_NAME="jupyter_cdsw"
docker rm -f "$CONTAINER_NAME" 2>/dev/null

# prepare permissions
chmod -w work/{Einleitung.ipynb,Malen_mit_Robotern.ipynb,Musik.ipynb,musik.py,roboter.py,robots.png,KlugeZuege.ipynb,ZugIds.ipynb}

docker run -d -p 8888:8888 \
	-u 1000:1000 \
	--net=host --privileged \
	-v /var/run/dbus:/var/run/dbus -v "$PWD/work":"/home/cdsw/work" \
	--name "$CONTAINER_NAME" bruno1996/cdsw_jupyterlab:latest

stop_container() {
	echo "stopping container \"$CONTAINER_NAME\" ..."
	docker stop "$CONTAINER_NAME"
	sleep 1
	echo "removing container \"$CONTAINER_NAME\" ..."
	docker rm "$CONTAINER_NAME"
	echo "restoring permissions ..."
	chmod u+w work/{Einleitung.ipynb,Malen_mit_Robotern.ipynb,Musik.ipynb,musik.py,roboter.py,robots.png,KlugeZuege.ipynb,ZugIds.ipynb}
	exit 0
}

trap stop_container SIGINT

echo "Press Ctrl+C to stop the container"

while true; do
	sleep 1
done
