#!/bin/bash
NUMBER1=$1
NUMBER2=$2
if($*<2)
then
    echo "arguments provided must be two"
    exit 1
else
    SUM=($NUMBER1+$NUMBER2)
fi