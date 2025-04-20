#!/bin/bash
USERID=$ (id -u)
VALIDATE()
if [ $1 -ne o ]
then
    echo "$2 is failure"
    exit 1
else
    echo "$2 is success"
if [ $USERID -ne 0 ]
then
    echo "you do not have root access"
    exit 1
fi
dnf list installed mysql
    if [ &? -ne 0 ]
    then
        dnf install mysql
        VALIDATE $? Installaing mysql
    else
        echo "mysql already installed"
    fi



