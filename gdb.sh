#!/usr/bin/env bash

echo 'Building gdb ...'

cd gdb-7.8+os161-2.1
find . -name '*.info' | xargs touch
touch intl/plural.c
cd ..

cd gdb-7.8+os161-2.1
./configure --target=mips-harvard-os161 --prefix=$HOME/os161/tools
make -j8
make install
cd ..