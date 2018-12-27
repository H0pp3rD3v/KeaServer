#!/bin/bash
wget https://ftp.isc.org/isc/kea/1.5.0/kea-1.5.0.tar.gz
tar xvfz kea-1.5.0.tar.gz
cd kea-1.5.0

export PKG_CONFIG_PATH=/usr/local/lib64/pkgconfig
# export CC="ccache gcc" CXX="ccache g++"
declare -x PATH="/usr/lib64/ccache:$PATH"
autoreconf --install
./configure --with-dhcp-mysql
make -j4
sudo make install
echo "/usr/local/lib/hooks" > /etc/ld.so.conf.d/kea.conf
ldconfig
