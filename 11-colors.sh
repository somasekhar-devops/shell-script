#!/bin/bash

USERROLE=$(id -u)

Timestamp=$(date +%F-%H-%M-%S)
Script_Name=$(echo $0 | cut -d "." -f1)
Logfile=/tmp/$Script_Name-$Timestamp.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo "Script Started executing at : $Timestamp"

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
        echo "$2 $R Failure $N"
        exit 1
    else
        echo "$2 $G Success $N"
    fi
}

dnf install mysql -y &>>$Logfile
Validate $? "Installing mysql"

dnf install git -y &>>$Logfile
Validate $? "Installing Git"

dnf install  dockerr -y &>>$Logfile
Validate $? "Installing Docker"

