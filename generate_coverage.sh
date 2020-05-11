#!/bin/sh

sudo gcc ../execute_MathLib.c ../libmath.so -o ../executable -fprofile-arcs -ftest-coverage

LD_LIBRARY_PATH=$(pwd)/
export LD_LIBRARY_PATH
./executable 

lcov -c -d ../ -o coverage.info

genhtml coverage.info -o coverage

echo "coverage generated successfully!!!"