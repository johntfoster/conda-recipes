#!/usr/bin/env bash

# On OSX, we need to ensure we're using conda's gcc/g++
if [[ `uname` == Darwin ]]; then
    export CC=gcc
    export LD=gcc
    export CXX=g++
fi

./configure --prefix=$PREFIX

make
make install

