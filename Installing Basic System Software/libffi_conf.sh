#!/bin/bash

./configure --prefix=/usr    \
            --disable-static \
            --with-gcc-arch=native

make
make install
