[![Docker Stars](https://img.shields.io/docker/stars/bandi13/esp-idf.svg?style=flat-square)](https://hub.docker.com/r/bandi13/esp-idf/)
[![Docker Pulls](https://img.shields.io/docker/pulls/bandi13/esp-idf.svg?style=flat-square)](https://hub.docker.com/r/bandi13/esp-idf/)
[![](https://images.microbadger.com/badges/image/bandi13/esp-idf.svg)](https://microbadger.com/images/bandi13/esp-idf "Get your own image badge on microbadger.com")

[![Buy Me A Coffee](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoff.ee/bandi13)

# esp-idf
A container for Espressif's IDE that is self contained all you need is your project.

An example scenario is if you pull: https://github.com/Jeija/esp32free80211, then run the 'runContainer.sh', you will be able to run:
```make defconfig && make -j4 all && make flash```

This will build the sample application and flash it to the ESP32. Subsequent compiles will also be faster because ccache will have already stored the object files.
