#!/bin/bash

Timestamp=$(date +%F-%H-%M-%S)
Script_Name=$(echo $0 | cut -d "." -f1)
Logfile=/tmp/$Script_Name-$Timestamp.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USERROLE=$(id -u)

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
        echo -e "$2 $R Failure $N"
        exit 1
    else
        echo -e "$2 $G Success $N"
    fi
}

for i in $@
do
    echo "Package to Install $i"
    dnf list installed $i &>>$Logfile
    if [ $? -eq 0 ]
    then
        echo -e "$i already Installed .... $Y Skipping $N"
    else
        dnf install $i -y &>>$Logfile
        Validate $i "Installation of $i"
    fi
done

