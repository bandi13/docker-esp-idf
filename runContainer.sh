#!/bin/bash

# Set this to your ESP project directory
export ESP_PROJECT=~/githubs/esp32-80211-tx

docker pull bandi13/esp-idf

# Create cache for built objects
docker volume create ccache

# Run the container
docker run --rm -it -e CCACHE_DIR=/ccache -v ccache:/ccache --device /dev/ttyUSB0 -v ${ESP_PROJECT}:/esp/project bandi13/esp-idf
