#!/bin/bash -ex

# Install build deps
apt-get install -y libbluetooth-dev

# Fetch source
curl --output master.zip --location https://github.com/falkTX/qtsixa/archive/master.zip
unzip -o master.zip

# Build
pushd qtsixa-master/sixad
make
popd

# Install
mv qtsixa-master/sixad/bins/sixad-bin /usr/sbin/sixad-bin
mv qtsixa-master/sixad/bins/sixad-sixaxis /usr/sbin/sixad-sixaxis

# Cleanup
rm -rf qtsixa-master
rm -f master.zip
