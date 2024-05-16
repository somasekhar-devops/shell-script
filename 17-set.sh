!/biin/bash


USERID=$(id -u)

if  [ $USERID -ne 0 ]
then
    echo "You do't have the root aceess, Ask admin to give root access"
    exit 1 # exit from here if you are not a super user
else
    echo "You are a super user"
fi


dnf install mysql -y
dnf install git -y

echo "Is script running ? "



