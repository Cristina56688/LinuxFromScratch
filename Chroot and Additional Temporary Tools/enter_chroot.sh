#!/bin/bash

chroot "$LFS" /usr/bin/env -i   \
    HOME=/root                  \
    TERM="$TERM"                \
    PS1='(lfs chroot) \u:\w\$ ' \
    PATH=/usr/bin:/usr/sbin     \
    MAKEFLAGS="-j1"      \
    TESTSUITEFLAGS="-j$(nproc)" \
    /bin/bash --login
