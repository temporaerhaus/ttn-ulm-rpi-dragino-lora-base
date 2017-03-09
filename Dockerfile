FROM resin/rpi-raspbian:jessie-20161228

# Set container metadata.
MAINTAINER ralph.greschner.dev@gmail.com
ENV CONTAINER_REVISION 2017030401

# Install build tools.
RUN apt update -y && \
    apt install -y build-essential unzip git wget
# Build & install WiringPi.
RUN cd /root && \  
    git clone git://git.drogon.net/wiringPi && \  
    cd wiringPi/ && \  
    ./build
# Build LoRa / LMIC example.
RUN cd /root && \  
    wget https://github.com/ernstdevreede/lmic_pi/archive/master.zip && \  
    unzip master.zip && \  
    rm -f master.zip && \
    cd lmic_pi-master/examples/thethingsnetwork-send-v1/ && \  
    make
# Install GPS support.
RUN apt install -y gpsd gpsd-clients python-gps

# Set bash as shell.
CMD ["/bin/bash"]