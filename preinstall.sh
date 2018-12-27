#!/bin/bash
# install the build environment
sudo apt -y install automake libtool pkg-config build-essential ccache
# install the dependancies
sudo apt -y install libboost-dev libboost-system-dev liblog4cplus-dev libssl-dev
# install mysql
sudo apt -y install mysql-server
