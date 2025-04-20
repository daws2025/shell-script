#!/bin/bash
NUMBER1=$1
NUMBER2=$2
if($*<2)
    echo "arguments provided must be two"
else
    SUM=($NUMBER1+$NUMBER2)