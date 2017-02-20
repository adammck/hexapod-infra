# Hexapod Infrastructure

This repo contains the scripts and configurations to provision the operating
system of my [hexapod](http://github.com/adammck/hexapod). I don't imagine that
it'll be useful for anyone other than me, but here it is anyway.


## Usage

1. Write
   [Raspbian](https://www.raspberrypi.org/downloads/raspbian/)
   to an SD card, and set up SSH. I use
   [headless-raspbian](https://github.com/adammck/headless-raspbian)
   to create a ready-made image including my wifi settings and SSH keys, but
   whatever works, so long as you can connect.

2. (Re-)provision with Ansible:

        HEXAPOD_HOST="hexapod.local" \
        bin/provision


## License

MIT.
