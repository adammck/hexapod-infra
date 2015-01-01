#!/bin/bash -e

yum install libusb-devel -y
wget http://www.pabr.org/sixlinux/sixpair.c
gcc -o sixpair sixpair.c -lusb
mv sixpair /usr/local/bin
