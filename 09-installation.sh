#!/biin/bash

#installtion of my sql and git

# if we need to install any software in linux we should have super user access
# now before we run the installation we need to check the root access for the current user

USERID=$(id -u)

if  [ $USERID -ne 0 ]
then
    echo "You do't have the root aceess, Ask admin to give root access"
    exit 1 # exit from here if you are not a super user
else
    echo "You are a super user"
fi

# Installing mysql

dnf install mysql -y

# $? is used to get the last commeand success or not. O is for Success

if  [ $? -ne 0]
then
    echo "Installation of mysql is Failure"
else
    echo "Istallation of mysql is Success"
fi

