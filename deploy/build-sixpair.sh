#!/bin/bash -ex

# Install build deps
yum install gcc libusb-devel -y

# Fetch source
curl --output sixpair.c http://www.pabr.org/sixlinux/sixpair.c

# Build
gcc -o sixpair sixpair.c -lusb

# Install
mv sixpair /usr/local/bin

# Clean
rm sixpair.c
