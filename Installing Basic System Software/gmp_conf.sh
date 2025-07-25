#!/bin/bash

sed -i '/long long t1;/,+1s/()/(...)/' configure

./configure --prefix=/usr    \
            --enable-cxx     \
            --disable-static \
            --docdir=/usr/share/doc/gmp-6.3.0

make
make html
make install
make install-html

