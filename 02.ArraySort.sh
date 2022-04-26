#!/bin/bash -x

for ((i=0; i<10; i++ ))
do
randomCheck=$((RANDOM%1000))
array[i]=$(($randomCheck))
done
echo ${array[@]}

for ((i=0;i<10;i++))
do
    for((j=0;j<10;j++))
    do
	n=$(($j+1))
        if [[ ${array[j]} -gt ${array[$n]} ]]
        then
            setValue=${array[j]}
            array[$j]=${array[$n]}
            array[$n]=$setValue
        fi
    done
done
echo ${array[@]}
echo "Second Maximum Value in a Array is:"${array[9]}
echo "Second Minimun Value in a Array is:"${array[2]}
