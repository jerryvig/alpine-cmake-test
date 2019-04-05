#!/bin/sh
/usr/bin/curl -LX GET https://github.com/Kitware/CMake/releases/download/v3.14.1/cmake-3.14.1.tar.gz -o cmake-3.14.1.tar.gz
/bin/gunzip cmake-3.14.1.tar.gz
/bin/tar xvf cmake-3.14.1.tar
rm cmake-3.14.1.tar
cd cmake-3.14.1
./bootstrap
make
make install

