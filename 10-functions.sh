#!/bin/bash

USERROLE=$(id -u)

if [ $USERROLE -ne 0]
then
    echo "You are not a Super User. Get the Super access from admin."
    exit 1
else
    echo "You are a Super User.. Go ahead"
fi

Validate(){
    echo "Exit Status of the installation : $1"
    echo "Completed Task : $2"
}

dnf install mysql -y
Validate $? "Installing mysql"

