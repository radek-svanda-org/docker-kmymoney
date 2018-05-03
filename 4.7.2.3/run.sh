#!/usr/bin/env bash

xhost +

docker run -ti \
    --rm \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /home/radek/Downloads:/Downloads \
    -e DISPLAY=:1 \
    -e QT_GRAPHICSSYSTEM="native" \
    kmymoney:4.7.2.3 \
    /bin/bash
