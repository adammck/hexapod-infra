#!/bin/bash -ex

# Install build deps
apt-get install -y libusb-dev

# Fetch source
curl --output sixpair.c http://www.pabr.org/sixlinux/sixpair.c

# Build
gcc -o sixpair sixpair.c -lusb

# Install
mv sixpair /usr/local/bin

# Cleanup
rm sixpair.c
