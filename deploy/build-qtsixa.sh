#!/bin/bash -e

yum install gcc-c++ bluez-libs-devel -y
wget https://github.com/falkTX/qtsixa/archive/master.zip
unzip master.zip
cd qtsixa-master/sixad
make

# Just copy the stuff we need, rather than make install
mv bins/sixad-bin /usr/sbin/sixad-bin
mv bins/sixad-sixaxis /usr/sbin/sixad-sixaxis
