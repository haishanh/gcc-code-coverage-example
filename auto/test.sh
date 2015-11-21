#!/bin/bash

ORIG_LD_PATH=${LD_LIBRARY_PATH}
export LD_LIBRARY_PATH=${PWD}:${LD_LIBRARY_PATH}

# actual test begin
echo
echo -e "\t\t -- Coverage Test Begin --"
./say h
echo -e "\t\t -- Coverage Test End --"
echo

# reset
export LD_LIBRARY_PATH=${ORIG_LD_PATH}
