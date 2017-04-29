@echo off

mkdir build
cd build

cmake ..
    -Wno-dev ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^
    -DCMAKE_INSTALL_RPATH:STRING=%LIBRARY_LIB% ^
    -DCMAKE_INSTALL_NAME_DIR=%LIBRARY_LIB% ^
    -DBUILD_SHARED_LIBS=ON ^

cmake --build . --target INSTALL --config Release
if errorlevel 1 exit 1
