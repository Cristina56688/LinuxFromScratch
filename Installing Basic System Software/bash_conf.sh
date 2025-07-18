#!/bin/bash

./configure --prefix=/usr             \
            --without-bash-malloc     \
            --with-installed-readline \
            --docdir=/usr/share/doc/bash-5.3

make
make install

exec /usr/bin/bash --login
