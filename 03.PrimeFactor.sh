#!/bin/bash -x

setValue=0
read -p "Enter a number:" X

for((i=2;i<=$X; ))
do
    if(( $X%$i == 0))
    then
        array[setValue++]=$i
        X=$(( $X/$i ))
    else
        ((i++))
    fi
done
echo "Prime Factors of a Entered Number is:"${array[@]}
