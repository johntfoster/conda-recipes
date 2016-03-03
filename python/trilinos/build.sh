#!/usr/bin/env bash

mkdir build
cd build

cmake -D CMAKE_INSTALL_PREFIX:PATH=$PREFIX \
  \
  -D MPI_BASE_DIR:PATH=$PREFIX \
  \
  -D CMAKE_BUILD_TYPE:STRING=Release \
  -D CMAKE_CXX_FLAGS:STRING="-Wno-unused -std=c++11" \
  -D CMAKE_OSX_DEPLOYMENT_TARGET:STRING='10.11' \
  -D BUILD_SHARED_LIBS:BOOL=ON \
  \
  -D Trilinos_ENABLE_ALL_PACKAGES:BOOL=OFF \
  -D Trilinos_ENABLE_ALL_OPTIONAL_PACKAGES:BOOL=ON \
  -D Trilinos_ENABLE_ALL_FORWARD_DEP_PACKAGES:BOOL=ON \
  -D Trilinos_ENABLE_Teuchos:BOOL=ON \
  -D Trilinos_ENABLE_Shards:BOOL=ON \
  -D Trilinos_ENABLE_Sacado:BOOL=ON \
  -D Trilinos_ENABLE_Epetra:BOOL=ON \
  -D Trilinos_ENABLE_EpetraExt:BOOL=ON \
  -D Trilinos_ENABLE_Ifpack:BOOL=ON \
  -D Trilinos_ENABLE_AztecOO:BOOL=ON \
  -D Trilinos_ENABLE_Belos:BOOL=ON \
  -D Trilinos_ENABLE_Phalanx:BOOL=ON \
  -D Phalanx_EXPLICIT_TEMPLATE_INSTANTIATION:BOOL=ON \
  -D Trilinos_ENABLE_Zoltan:BOOL=ON \
  -D Trilinos_ENABLE_STK:BOOL=OFF \
  -D Trilinos_ENABLE_SEACAS:BOOL=ON \
  -D Trilinos_ENABLE_SECONDARY_STABLE_CODE:BOOL=ON \
  -D Trilinos_ENABLE_NOX:BOOL=ON \
  -D Trilinos_ENABLE_Intrepid:BOOL=ON \
  -D Trilinos_ENABLE_Isorropia:BOOL=ON \
  -D Trilinos_ENABLE_MueLu:BOOL=ON \
  -D Trilinos_ENABLE_FEI:BOOL=OFF \
  -D Trilinos_ENABLE_Sundance:BOOL=OFF \
  -D Trilinos_ENABLE_Piro:BOOL=ON \
  -D Trilinos_ENABLE_Pamgen:BOOL=ON \
  -D Trilinos_ENABLE_PyTrilinos:BOOL=ON \
  -D PYTHON_EXECUTABLE:STRING="$PREFIX/bin/python" \
  \
  -D Trilinos_ENABLE_EXAMPLES:BOOL=OFF \
  -D Trilinos_ENABLE_TESTS:BOOL=OFF \
  \
  -D TPL_ENABLE_MATLAB:BOOL=OFF \
  -D TPL_ENABLE_Matio:BOOL=OFF \
  -D TPL_ENABLE_QT:BOOL=OFF \
  -D TPL_ENABLE_HDF5:BOOL=ON \
  -D HDF5_INCLUDE_DIRS:PATH=$PREFIX/include \
  -D TPL_HDF5_LIBRARIES:STRING="$PREFIX/lib/libhdf5_hl.dylib;$PREFIX/lib/libhdf5.dylib" \
  -D TPL_ENABLE_Netcdf:BOOL=ON \
  -D TPL_Netcdf_LIBRARIES:STRING="$PREFIX/lib/libnetcdf.dylib" \
  -D TPL_ENABLE_Zlib:BOOL=ON \
  -D TPL_ENABLE_MPI:BOOL=ON \
  -D TPL_ENABLE_BLAS:BOOL=ON \
  -D TPL_ENABLE_LAPACK:BOOL=ON \
  -D TPL_LAPACK_LIBRARIES:STRING=liblapack.dylib \
  -D TPL_ENABLE_Boost:BOOL=ON \
  -D TPL_Boost_INCLUDE_DIRS:PATH=$PREFIX/include/boost \
  \
  -D CMAKE_VERBOSE_MAKEFILE:BOOL=OFF \
  -D Trilinos_VERBOSE_CONFIGURE:BOOL=OFF \
  -D Trilinos_ASSERT_MISSING_PACKAGES=OFF \
  \
  ..

make -j8
make install

#-D Zlib_INCLUDE_DIRS:PATH=$PREFIX/include \
#-D TPL_Zlib_LIBRARIES:FILEPATH=$PREFIX/lib/libz.a \
#-D CMAKE_SHARED_LINKER_FLAGS:STRING="-lz" \
#-D Netcdf_INCLUDE_DIRS:PATH=$PREFIX/include \
#-D Netcdf_LIBRARY_DIRS:PATH=$PREFIX/lib \
