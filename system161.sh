#!/usr/bin/env bash

cd sys161-2.0.8
./configure --prefix=$HOME/os161/tools mipseb
make -j8
make install
cd ..

