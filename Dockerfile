FROM ubuntu:22.04

# Install build dependencies (and vim + picocom for editing/debugging)
RUN DEBIAN_FRONTEND=noninteractive apt-get -qq update \
    && apt-get install -y git wget flex bison gperf python3 python3-pip python3-setuptools python3-venv cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Setup IDF_PATH
RUN mkdir -p /esp && cd /esp && git clone --recursive https://github.com/espressif/esp-idf.git

RUN cd /esp/esp-idf && ./install.sh all

RUN echo '. /esp/esp-idf/export.sh' >> ~/.bashrc

# This is the directory where our project will show up
RUN mkdir -p /esp/project
WORKDIR /esp/project
ENTRYPOINT ["/bin/bash"]
