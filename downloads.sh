#!/bin/bash 

mkdir -v $LFS/sources
chmod -v a+wt $LFS/sources
wget https://www.linuxfromscratch.org/lfs/downloads/stable/wget-list
wget --input-file=wget-list --continue –directory-prefix=$LFS/sources
wget https://www.linuxfromscratch.org/lfs/downloads/stable/md5sums

wget https://www.linuxfromscratch.org/patches/lfs/development/bzip2-1.0.8-install_docs-1.patch
wget https://www.linuxfromscratch.org/patches/lfs/development/coreutils-9.7-upstream_fix-1.patch
wget https://www.linuxfromscratch.org/patches/lfs/development/coreutils-9.7-i18n-1.patch
wget https://www.linuxfromscratch.org/patches/lfs/development/expect-5.45.4-gcc15-1.patch
wget https://www.linuxfromscratch.org/patches/lfs/development/glibc-2.41-fhs-1.patch
wget https://www.linuxfromscratch.org/patches/lfs/development/kbd-2.8.0-backspace-1.patch
wget https://www.linuxfromscratch.org/patches/lfs/development/perl-5.40.2-upstream_fix-1.patch
wget https://www.linuxfromscratch.org/patches/lfs/development/sysvinit-3.14-consolidated-1.patch
