# esp-idf
A container for Espressif's IDE that is self contained all you need is your project.

An example scenario is if you pull: https://github.com/Jeija/esp32free80211, then run the 'runContainer.sh', you will be able to run:
```make defconfig && make -j4 all && make flash```

This will build the sample application and flash it to the ESP32. Subsequent compiles will also be faster because ccache will have already stored the object files.
