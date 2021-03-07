#!/bin/bash

# Instructions from https://kb.isc.org/docs/kea-build-on-debian

# install the build environment
sudo apt -y install automake libtool pkg-config build-essential ccache
# install the dependancies
sudo apt -y install libboost-dev libboost-system-dev liblog4cplus-dev libssl-dev

wget https://ftp.isc.org/isc/kea/1.5.0/kea-1.5.0.tar.gz
tar xvfz kea-1.5.0.tar.gz
cd kea-1.5.0

export PKG_CONFIG_PATH=/usr/local/lib64/pkgconfig
# export CC="ccache gcc" CXX="ccache g++"
declare -x PATH="/usr/lib64/ccache:$PATH"
autoreconf --install
./configure [your additional options here]
make -j4
sudo make install
echo "/usr/local/lib/hooks" > /etc/ld.so.conf.d/kea.conf
ldconfig

