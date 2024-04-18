#!/bin/bash

echo "Please enter username"

read USERNAME    #read statement prompts to enter a value and here USERNAME ia a variable

echo "Please enter your password"

read -s PASSWORD    # -s is used to hide the characters while entering

echo "Your Usernae is : $USERNAME and Password is : $PASSWORD"
