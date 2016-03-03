#!/usr/bin/env bash


cmake \
    -DCMAKE_BUILD_TYPE:STRING=Release \
    -DCMAKE_OSX_DEPLOYMENT_TARGET:STRING='10.11' \
    -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX \
    .

make
make install
