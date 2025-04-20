#!/bin/bash
USERID=$(id -u)
VALIDATE()
if [ $1 -ne 0 ]
then 
    echo "$2 is failure"
else
    echo "$2 is sucess"
fi
if [ $USERID -ne 0 ]
then 
    echo "you do not have sudo access"
    exit 1
fi

for package in $@
do
    dnf list installed $package
        if [ $? -ne 0 ]
        then
            dnf install $package -y
            VALIDATE $? "Installing $($package)"
        else
            echo "$package already installed"
        fi
done




