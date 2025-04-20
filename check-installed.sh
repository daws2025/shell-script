#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "you don't have root access"
    exit 1
fi
dnf list available mysql
if [ $? -ne 0 ]
then
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "installing mysql failure"
        exit 1
    else
        echo "installing mysql success"
    fi 
else
    echo "mysql already installed"
fi
