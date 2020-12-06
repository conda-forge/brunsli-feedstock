mkdir build_conda
cd build_conda

cmake ${CMAKE_ARGS} -LAH                            \
    -DCMAKE_BUILD_TYPE=Release        \
    -DCMAKE_INSTALL_PREFIX=$PREFIX    \
    -DCMAKE_INSTALL_LIBDIR=lib        \
    ..

make -j${CPU_COUNT}
make install
