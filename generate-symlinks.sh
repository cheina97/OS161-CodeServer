#!/usr/bin/env bash

cd ~/os161/tools
sh -c 'for i in mips-*; do ln -s $i os161-`echo $i | cut -d- -f4-`; done'
source ~/.bashrc
hash -r
