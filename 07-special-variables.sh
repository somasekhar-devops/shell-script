#!/bin/bash

# Special  Variables in Shell scripting

# Interview Questions -V IMP

echo "Print all varaibles given at shell command: $@"
# $@ will hold the values of the varriables given in shell command line

echo "No. of Variables given : $#"
# $# Will give the count of variables given

echo "Current Working Directoery : $PWD"
# $PWD will give the current working directory

echo "Script Name : $0"
# $0 will give the script name

echo "Home directory of the CUrrent User : $HOME"
# $HOME will gives the home directory of the current user

echo "User who is running the script : $USER"
# $USER will gives the details of the user who is currently running the script

echo "Hostname : $HOSTNAME"
# $HOSTNAME will give the Hostname of the system

echo "Process ID of the current running script : $$"
# $$ will gives the process ID of the currently running script

sleep 60 &
# sleep 60 will sleep the script after this line for 60 sec 
# sleep 60 & will sleep in the background 

echo "Process ID of the last background command : $!"
# $! will gives the process id of the lats backround command
