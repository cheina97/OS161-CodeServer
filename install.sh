#!/usr/bin/env bash

useradd -s /bin/bash -m os161user

PUID=1010
PGID=1010

groupmod -o -g "$PGID" os161user
usermod -o -u "$PUID" os161user

apt-get update
apt-get install -y wget gcc g++ make libncurses5-dev libmpc-dev python2.7 bmake


