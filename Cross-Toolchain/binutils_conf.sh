#!/bin/bash 

# in /mnt/lfs/sources/binutils-2.44/build as lfs user
#

../configure --prefix=$LFS/tools \ #prepare to install the Binutils programs in the $LFS/tools directory
             --with-sysroot=$LFS \ #tells the build system to look in $LFS for the target system libraries
             --target=$LFS_TGT \  #tell the configure script to adjust binutil's build system for building a cross linker
             --disable-nls \ #disables internationalization as i18n is not needed for the temporary tools
             --enable-gprofng=no \ #disables building gprofng which is not needed for the temporary tools
             --disable-werror \  #prevents the build from stopping in the event that there are warnings from the host's compiler
             --enable-new-dtags \ #makes the linker use the “runpath” tag for embedding library search paths into executables and shared libraries, instead of the traditional “rpath” tag. It makes debugging dynamically linked executables easier and works around potential issues in the test suite of some packages. 
             --enable-default-hash-style=gnu #This makes the linker only generate the GNU-style hash table by default, so we can avoid wasting time to generate the classic ELF hash table when we build the packages, or wasting disk space to store it.

