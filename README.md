# TTN Ulm Raspbian Dragino LoRa Base Image for Docker

A Docker base image for LoRa Projects using Dragino LoRa HAT.

Contains all the good stuff like GCC and devenv together with WiringPi and GPS :)

## Dependencies

* Raspberry Pi (tested with Model 2B).
* Installed Docker for ARM.

## Usage

In order to use this you need to have Docker for ARM/Raspbian installed.
A great tutorial for this is available on https://www.raspberrypi.org/blog/docker-comes-to-raspberry-pi.

To build container you must navigate into repo directory and execute

``
docker build -t ttn-ulm-rpi-dragino-lora-base .
``

To spin up a new container which builds the LMIC LoRa examples use

``
docker run -it --privileged ttn-ulm-rpi-dragino-lora-base
``

Note: privileged CLI flag is required for direct hardware access.

## License

AGPL 3.0

See agpl-3.0.txt.