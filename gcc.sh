#!/usr/bin/env bash

echo 'Building gcc ...'

wget http://www.os161.org/download/gcc-4.8.3+os161-2.1.tar.gz
tar -xvzf gcc-4.8.3+os161-2.1.tar.gz
rm gcc-4.8.3+os161-2.1.tar.gz

cd gcc-4.8.3+os161-2.1
find . -name '*.info' | xargs touch
touch intl/plural.c
cd ..

mkdir buildgcc

cd buildgcc
../gcc-4.8.3+os161-2.1/configure \
--enable-languages=c,lto \
--nfp --disable-shared --disable-threads \
--disable-libmudflap --disable-libssp \
--disable-libstdcxx --disable-nls \
--target=mips-harvard-os161 \
--prefix=$HOME/os161/tools
cd ..

cd buildgcc
make -j8
make install
cd ..

LDFLAGS=-R/usr/pkg/lib
export LDFLAGS