#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "you do not have root access"
    exit 1
fi

dnf install mysql -y
if [ $? -ne 0 ]
then
    echo "installing mysql failure"
else
    echo "istalling success"
fi
dnf install git -y
if [ $? -ne 0 ]
then
    echo "installing git failure"
else
    echo "installing git success"
fi