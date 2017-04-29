#!/bin/bash

mkdir build
cd build

PY_LIB="libpython${PY_VER}.dylib"

cmake .. \
	-DCMAKE_BUILD_TYPE=Release \
	-DCMAKE_INSTALL_PREFIX="${PREFIX}" \
	-DCMAKE_INSTALL_RPATH:STRING="${PREFIX}/lib" \
	-DBUILD_SHARED_LIBS=ON \
	-DENABLE_TESTING=OFF \
	-DPYTHON_EXECUTABLE=${PYTHON} \
	-DPYTHON_INCLUDE_PATH=${PREFIX}/include/python${PY_VER} \
	-DPYTHON_LIBRARY=${PREFIX}/lib/${PY_LIB} \

make -j${CPU_COUNT}
make install
