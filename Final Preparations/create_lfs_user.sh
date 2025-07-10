#!/bin/bash

groupadd lfs
useradd -s /bin/bash -g lfs -m -k /dev/null lfs
passwd lfs

chown -vR lfs $LFS/{usr,var,etc,tools}
case $(uname -m) in
	x86_64) chown -v lfs $LFS/lib64 ;;
esac
