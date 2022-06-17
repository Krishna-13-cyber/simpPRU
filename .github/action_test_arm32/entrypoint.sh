#!/usr/bin/env bash

uname -a

echo "Making build directory"
mkdir build

echo "Going into build directory"
cd build

apt-get update && apt-get -y install cmake && apt-get -y install make

echo "Generating cmake files"
cmake ..

echo "Running make"
make -j 8

echo "Running make install"
make install

echo "Running make package"
make package