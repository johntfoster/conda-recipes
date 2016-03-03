#!/usr/bin/env bash


cmake \
    -DCMAKE_BUILD_TYPE:STRING=Release \
    -DBUILD_SHARED_LIBS:BOOL=ON \
    -DCMAKE_OSX_DEPLOYMENT_TARGET:STRING='10.11' \
    -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX \
    -DCMAKE_C_COMPILER:PATH=$PREFIX/bin/mpicc \
    -DCMAKE_LINKER:PATH=$PREFIX/bin/mpicc \
    -DHDF5_LIBRARIES:STRING="$PREFIX/lib/hdf5.dylib;$PREFIX/lib/hdf5_hl.dylib" \
    -DHDF5_INCLUDE_DIRS=$PREFIX/include/ \
    -DENABLE_PARALLEL:BOOL=ON \
    .

make
make install
