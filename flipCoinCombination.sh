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

echo "Double coin "
coin[HH]=0
coin[TT]=0
coin[HT]=0
coin[TH]=0
hh=0
tt=1
ht=2
th=3
for (( i=1; i<=$x; i++ ))
do
        rand1=$(( RANDOM % 4 ))

if [ $rand1 -eq $hh ]
then
         coin[HH]=$(( "${coin[HH]}" + 1 ))
fi 
if [ $rand1 -eq $tt ]
then        
        coin[TT]=$(( "${coin[TT]}" + 1 ))
fi      
if [ $rand1 -eq $ht ]
then
	 coin[HT]=$(( "${coin[HT]}" + 1 ))
fi
if [ $rand1 -eq $th ]
then
	 coin[TH]=$(( "${coin[TH]}" + 1 ))
fi
done

c_hh=`awk "BEGIN {print (${coin[HH]}*100)/$x}"`
c_tt=`awk "BEGIN {print (${coin[TT]}*100)/$x}"`
c_ht=`awk "BEGIN {print (${coin[HT]}*100)/$x}"`
c_th=`awk "BEGIN {print (${coin[TH]}*100)/$x}"`
echo "(HH)  percentage" $c_hh
echo "(TT)  percentage" $c_tt
echo "(HT)  percentage" $c_ht
echo "(TH)  percentage" $c_th
