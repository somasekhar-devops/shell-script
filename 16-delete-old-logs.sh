#1/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[om"

Source_Directory=/tmp/app-logs

if [ -d $Source_Directory ]
then
    echo -e "$G Source Directory exists $N"
else
    echo "$R Given Source Directory not exists... Pls check $N"
fi