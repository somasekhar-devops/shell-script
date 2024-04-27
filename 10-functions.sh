#!/bin/bash

USERROLE=$(id -u)

Timestamp=$(date +%F-%H-%M-%S)
Script_Name=$(echo $0 | cut -d "." -f1)
Logfile=/tmp/$Script_Name-$Timestamp.log

if [ $USERROLE -ne 0 ]
then
    echo "You are not a Super User. Get the Super access from admin."
    exit 1
else
    echo "You are a Super User.. Go ahead"
fi

Validate(){
    if [ $1 -ne 0 ]
    then
        echo "$2 Failure"
        exit 1
    else
        echo "$2 Success"
    fi
}

dnf install mysql -y &>>$Logfile
Validate $? "Installing mysql"

dnf install git -y &>>$Logfile
Validate $? "Installing Git"

