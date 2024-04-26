#!/biin/bash

#installtion of my sql and git

# if we need to install any software in linux we should have super user access
# now before we run the installation we need to check the root access for the current user

USERID=$(id -u)

if  [ $USERID -ne 0 ]
then
    echo "You do't have the root aceess, Ask admin to give root access"
else
    echo "You are a super user"
fi

# Installing mysql

dnf install mysql -y


