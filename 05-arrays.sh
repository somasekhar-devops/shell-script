#!/bin/bash

NAMES=("Sekhar" "Soma" ""Lucky)    # Array Declaration

#Arrays index starts with 0
#Ex : Above Names array contains 3 values and their index are 0,1,2

echo "Name is ${NAMES[0]}"          # gives index 0th value
echo "Second Name is ${NAMES[1]}"   # gives index 1st value
echo "Third Name is ${NAMES[2]}"    # gives index 2nd Value

echo "Print all Names. Names are ${NAMES[@]}"   # @ gives all the values in the array