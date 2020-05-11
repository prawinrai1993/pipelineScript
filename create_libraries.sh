#!/bin/sh
gcc -c ./mathlib.c -o ./mathlib.o
gcc ./mathlib.o -shared -o ./libmath.so

echo "libraries generated successfully!!!"
