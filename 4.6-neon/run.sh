#!/usr/bin/env bash

xhost +

docker run -ti \
    --rm \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /home/radek/Downloads:/Downloads \
    -e DISPLAY=:1 \
    kmymoney:4.6-neon
