#! /bin/bash

trap "xhost '-local:anydesk'" ERR
trap "xhost '-local:anydesk'" SIGINT
 
xhost '+local:anydesk'

podman container run \
  -it \
  --rm \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  anydesk:latest

xhost '-local:anydesk'
