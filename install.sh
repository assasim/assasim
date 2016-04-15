#!/bin/bash

cd precompilation/simulation_basis/libs/jeayeson
chmod +x configure
echo "Configuring the jeayeson library..."
./configure
make -j4 1>/dev/null 2>/dev/null

cd ../../..
mkdir build
cd build
echo "Compiling the precompilation executable..."
cmake ..
make -j4
