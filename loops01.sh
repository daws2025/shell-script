#!/bin/bash
USERID= $(id -u)
VALIDATE()
if [ $1 -ne 0 ]
then
    echo "$2 is failure"
else
    echo "$2 is success"
fi
if [ $USERID -ne 0 ]
then
    echo "you don't have root access"
    exit 1
fi
for pkg in $@
do
    dnf list installed $pkg
    if [ $? -ne 0 ]
    then   
        dnf install $pkg -y
        VALIDATE $? "Installing $pkg"
    else
        echo "$pkg already installed"
    fi
done