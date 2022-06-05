#!/usr/bin/env bash
cd $HOME/os161/os161-base-2.0.3/
./configure --ostree=$HOME/os161/root
bmake
bmake install
#cd kern
#cd conf
#./config DUMBVM
#cd ../compile/DUMBVM/
#bmake depend
#bmake
#bmake install
cd $HOME/os161/root
if [ -f "LHD0.img" ]; then
    rm LHD0.img
fi
if [ -f "LHD1.img" ]; then
    rm LHD1.img
fi
$HOME/os161/tools/bin/disk161 create LHD0.img 5M
$HOME/os161/tools/bin/disk161 create LHD1.img 5M
cp $HOME/os161/tools/share/examples/sys161/sys161.conf.sample $HOME/os161/root/sys161.conf

