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
a[0]=${coin[H]}
a[1]=${coin[T]}

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
a[2]=${coin[HH]}
a[3]=${coin[TT]}
a[4]=${coin[HT]}
a[5]=${coin[TH]}

c_hh=`awk "BEGIN {print (${coin[HH]}*100)/$x}"`
c_tt=`awk "BEGIN {print (${coin[TT]}*100)/$x}"`
c_ht=`awk "BEGIN {print (${coin[HT]}*100)/$x}"`
c_th=`awk "BEGIN {print (${coin[TH]}*100)/$x}"`
echo "(HH)  percentage" $c_hh
echo "(TT)  percentage" $c_tt
echo "(HT)  percentage" $c_ht
echo "(TH)  percentage" $c_th


echo "Three coins "
coin[hhh]=0
coin[hht]=0
coin[hth]=0
coin[htt]=0
coin[thh]=0
coin[tht]=0
coin[tth]=0
coin[ttt]=0

hhh=0
hht=1
hth=2
htt=3
thh=4
tht=5
tth=6
ttt=7

for (( i=1; i<=$x; i++ ))
do
        rand2=$(( RANDOM % 8 ))

if [ $rand2 -eq $hhh ]
then
         coin[hhh]=$(( "${coin[hhh]}" + 1 ))
fi
if [ $rand2 -eq $hht ]
then
        coin[hht]=$(( "${coin[hht]}" + 1 ))
fi
if [ $rand2 -eq $hth ]
then
         coin[hth]=$(( "${coin[hth]}" + 1 ))
fi
if [ $rand2 -eq $htt ]
then
         coin[htt]=$(( "${coin[htt]}" + 1 ))
fi

if [ $rand2 -eq $thh ]
then
         coin[thh]=$(( "${coin[thh]}" + 1 ))
fi
if [ $rand2 -eq $tht ]
then
        coin[tht]=$(( "${coin[tht]}" + 1 ))
fi
if [ $rand2 -eq $tth ]
then
         coin[tth]=$(( "${coin[tth]}" + 1 ))
fi
if [ $rand2 -eq $ttt ]
then
         coin[ttt]=$(( "${coin[ttt]}" + 1 ))
fi
done
a[6]=${coin[hhh]}
a[7]=${coin[hht]}
a[8]=${coin[hth]}
a[9]=${coin[htt]}
a[10]=${coin[thh]}
a[11]=${coin[tht]}
a[12]=${coin[tth]}
a[13]=${coin[ttt]}


c_hhh=`awk "BEGIN {print (${coin[hhh]}*100)/$x}"`
c_hht=`awk "BEGIN {print (${coin[hht]}*100)/$x}"`
c_hth=`awk "BEGIN {print (${coin[hth]}*100)/$x}"`
c_htt=`awk "BEGIN {print (${coin[htt]}*100)/$x}"`
c_thh=`awk "BEGIN {print (${coin[thh]}*100)/$x}"`
c_tht=`awk "BEGIN {print (${coin[tht]}*100)/$x}"`
c_tth=`awk "BEGIN {print (${coin[tth]}*100)/$x}"`
c_ttt=`awk "BEGIN {print (${coin[ttt]}*100)/$x}"`
echo "(hhh)  percentage" $c_hhh
echo "(hht)  percentage" $c_hht
echo "(hth)  percentage" $c_hth
echo "(htt)  percentage" $c_htt
echo "(thh)  percentage" $c_thh
echo "(tht)  percentage" $c_tht
echo "(tth)  percentage" $c_tth
echo "(ttt)  percentage" $c_ttt

echo ${a[@]}
echo "sorting"
for (( m=0;m<13; m++))
do

    for(( j=($m+1);j<14;j++ ))
    do

        if [ ${a[m]} -gt ${a[j]} ]
        then
            # swap
            temp=${a[m]}
            a[$m]=${a[j]}
            a[$j]=$temp
        fi
    done
done

echo ${a[@]}


echo "winner"
if [ ${a[13]} -eq ${coin[hhh]} ]
then
         echo "HHH"
fi
if [ ${a[13]}  -eq ${coin[hht]}  ]
then
        echo "HHT"
fi
if [ ${a[13]}  -eq ${coin[hth]} ]
then
         echo "HTH"
fi
if [ ${a[13]} -eq ${coin[htt]}  ]
then
         echo "HTT"
fi

if [ ${a[13]}  -eq ${coin[thh]}  ]
then
         echo "THH"
fi
if [ ${a[13]}  -eq ${coin[tht]}  ]
then
        echo "THT"
fi
if [ ${a[13]}  -eq ${coin[tth]}  ]
then
         echo "TTH"
fi
if [ ${a[13]}  -eq ${coin[ttt]}  ]
then
         echo "TTT"
fi


if [ ${a[13]}  -eq ${coin[HH]} ]
then
         echo "HH"
fi
if [ ${a[13]} -eq ${coin[TT]}  ]
then
         echo "TT"
fi

if [ ${a[13]}  -eq ${coin[HT]}  ]
then
         echo "HT"
fi
if [ ${a[13]}  -eq ${coin[TH]}  ]
then
        echo "TH"
fi
if [ ${a[13]}  -eq ${coin[H]}  ]
then
         echo "H"
fi
if [ ${a[13]}  -eq ${coin[T]}  ]
then
         echo "T"
fi

