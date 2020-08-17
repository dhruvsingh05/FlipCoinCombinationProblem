#!/bin/bash -x
h=0
t=1
declare -A coin
coin[T]=0
coin[H]=0
rn=$((RANDOM%2))
if [ $rn -eq $h ]
then
echo "head"
else
echo "tail"
fi

read -p "enter no. of times u want to flip" x

echo "SINGLE COIN FLIP"
for (( i=1; i<=$x; i++ ))
do
	rand=$(( RANDOM % 2 ))

   if [ $rand -eq $h ]
      then
         coin[H]=$(( "${coin[H]}" + 1 ))
      else
         coin[T]=$(( "${coin[T]}" + 1 ))
fi
done
c_h=`awk "BEGIN {print (${coin[H]}*100)/$x}"`
c_t=`awk "BEGIN {print (${coin[T]}*100)/$x}"`
echo "(H) head percentage" $c_h
echo "(T) Tail percentage" $c_t
