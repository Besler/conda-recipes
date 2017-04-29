#!/bin/bash

mkdir build
cd build

cmake .. \
	-DCMAKE_BUILD_TYPE=Release \
	-DCMAKE_INSTALL_PREFIX="${PREFIX}" \
	-DCMAKE_INSTALL_RPATH:STRING="${PREFIX}/lib" \
	-DBUILD_SHARED_LIBS=ON \

make -j${CPU_COUNT}
make install
