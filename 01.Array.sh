#!/bin/bash -x

for ((i=0;i<10;i++ ))
do
randomCheck=$((RANDOM%1000))
array[i]=$(($randomCheck))
done
echo ${array[@]}

position=${#array[@]}
max1=${array[0]}
max2=${array[0]}
min1=${array[9]}
min2=${array[9]}

for (( j=9; j>=0; j-- ))
do
        if (( $min1 > ${array[j]} ))
        then
        min2=$min1
        min1=${array[j]}
        elif (( $min2 > ${array[j]} ))
        then
        min2=${array[j]}
        fi
done

for (( k=0; k<position; k++ ))
do
	if (( $max1 < ${array[k]} ))
	then
	max2=$max1
	max1=${array[k]}
	elif (( $max2 < ${array[k]} ))
	then
        max2=${array[k]}
	fi
done

echo ${array[@]}
echo "Second Maximum value is:"$max2
echo "Second Minimum value is:"$min2

