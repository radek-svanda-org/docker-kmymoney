#!/usr/bin/env bash

SERVICE_NAME=kmymoney
SERVICE_VERSION=4.7.2.3

xhost +

docker run -ti \
    --rm \
    --name $SERVICE_NAME-$USER \
    --volume $HOME:/home/$USER \
    --volume /tmp/.X11-unix:/tmp/.X11-unix \
    --workdir /home/$USER \
    -e DISPLAY=$DISPLAY \
    -e HOME=/home/$USER \
    -e USER=$USER \
    -e USERID=$UID \
    $SERVICE_NAME:$SERVICE_VERSION
