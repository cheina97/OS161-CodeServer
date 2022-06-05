#!/usr/bin/env bash

cd $HOME/os161/
wget http://www.os161.org/download/os161-base-2.0.3.tar.gz
tar -xvzf os161-base-2.0.3.tar.gz
rm os161-base-2.0.3.tar.gz

echo -e "PATH=\"$HOME/os161/tools/bin:"'$PATH'"\"" >>$HOME/.profile

