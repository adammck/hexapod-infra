#!/bin/bash -e

yum install gcc-c++ bluez-libs-devel -y
wget https://github.com/falkTX/qtsixa/archive/master.zip
unzip master.zip
cd qtsixa-master/sixad
make
make install
