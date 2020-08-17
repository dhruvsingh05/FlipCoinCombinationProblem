#!/bin/bash -x
h=0
t=1
rn=$((RANDOM%2))
if [ $rn -eq $h ]
then
echo "head"
else
echo "tail"
fi
