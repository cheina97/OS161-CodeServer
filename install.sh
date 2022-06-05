#!/usr/bin/env bash

useradd -s /bin/bash -m crownlabs

PUID=1010
PGID=1010

groupmod -o -g "$PGID" crownlabs
usermod -o -u "$PUID" crownlabs

apt-get update
apt-get install -y wget gcc g++ make libncurses5-dev libmpc-dev python2.7 bmake


