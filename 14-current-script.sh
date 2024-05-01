#!/bin/bash

Course="Variable Value from the Current Script"

echo "Before calling the Other Script : $Course"
echo "Process ID Before calling other script : $$"

./15-other-script.sh

echo "After calling thhe other script : $Course"

