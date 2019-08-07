#!/bin/bash

if [ -z $1 ]; then
  echo "Usage: $0 <pathToYourProject>"
  exit 1
fi

# Set this to your ESP project directory
ESP_PROJECT=$1

CONTAINER_NAME=bandi13/esp-idf
docker pull ${CONTAINER_NAME}

# Create cache for built objects
docker volume create ccache

RUN_ARGS="--rm -it -e CCACHE_DIR=/ccache -v ccache:/ccache -v ${ESP_PROJECT}:/esp/project"

if [ ! -e "/dev/ttyUSB0" ]; then
  echo "No USB device for ESP32 found. You won't be able to flash the part."
  sleep 1
else
  RUN_ARGS+="--device /dev/ttyUSB0"
fi

# Run the container
docker run ${RUN_ARGS} ${CONTAINER_NAME}
