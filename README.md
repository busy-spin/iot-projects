# Tribute

![mark_weiser_quote.png](__files/mark_weiser_quote.png)

# About

This repository contains code samples and projects for working with sensors and actuators.
Programs are written in `C` and use raspberry-pi GPIO to interact with the sensors and actuators.

Each sensor or actuator is grouped in to a folder with resources for their data sheet, links to samples from other authors.

Larger project are build on top of above showcase. These real life project are using 1 or more sensors and actuators. 


# Setting up raspberry pi

Rapsberry PI 5 with ubuntu LTS


```shell
sudo apt install build-essential gdb cmake
```

### Install pigpio
```shell
git clone https://github.com/joan2937/pigpio.git
cd pigpio
make
sudo make install
```

# Links

[Keystudio 37 in 1](https://wiki.keyestudio.com/KS0487_Keyestudio_37_in_1_Sensor_Kit_upgrade_v3.0)

[GPIO C interface](https://abyz.me.uk/rpi/pigpio/cif.html)

[CLion setup](https://www.jetbrains.com/help/clion/remote-projects-support.html)

[Raspberry Pi Pin Layout](https://pinout.xyz/pinout/ground)
