#!/bin/bash

# Set this to your ESP project directory
export ESP_PROJECT=~/githubs/esp32-80211-tx

#docker pull bandi13/esp-idf
docker run --rm -it --device /dev/ttyUSB0 -v ${ESP_PROJECT}:/esp/project bandi13/esp-idf
