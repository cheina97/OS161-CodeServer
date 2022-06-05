#!/usr/bin/env bash

echo 'Building binutils ...'

wget http://www.os161.org/download/binutils-2.24+os161-2.1.tar.gz
tar -xvzf binutils-2.24+os161-2.1.tar.gz
rm binutils-2.24+os161-2.1.tar.gz
cd binutils-2.24+os161-2.1
find . -name '*.info' | xargs touch
touch intl/plural.c
cd ..

cd binutils-2.24+os161-2.1
./configure --nfp --disable-werror --target=mips-harvard-os161 --prefix=$HOME/os161/tools
make -j 8
make install
cd ..
