#!/bin/bash

export LOCAL_GRADESCOPE_TIMEOUT=30
export LOCAL_GRADESCOPE_VALGRIND_TIMEOUT=40
git submodule update --init --recursive --remote
g++ -DNDEBUG -std=c++11 -Wall -o test.out *.cpp
python3 ./MatamGenericTester/run_tests.py ./TechnionDataStructures/HW1/tests/custom_tests.json ./test.out