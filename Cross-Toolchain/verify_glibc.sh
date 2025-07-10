#!/bin/bash

echo "Compiling and linking:"
echo 'int main(){}' | $LFS_TGT-gcc -x c - -v -Wl,--verbose &> dummy.log
readelf -l a.out | grep ': /lib'
echo

echo "Start files:"
grep -E -o "$LFS/lib.*/S?crt[1in].*succeeded" dummy.log
echo

echo "Searching for header files:"
grep -B3 "^ $LFS/usr/include" dummy.log
echo

echo "Search paths:"
grep 'SEARCH.*/usr/lib' dummy.log |sed 's|; |\n|g'
echo

echo "Libc:"
grep "/lib.*/libc.so.6 " dummy.log
echo 

echo "GCC dynamic linker:"
grep found dummy.log
echo
