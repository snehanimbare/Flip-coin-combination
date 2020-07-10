#!/bin/bash

read -p "How many Times you want to Flip the Coin:" Limit
declare -A Singlet

for (( i=0; i<Limit; i++ ))
do
	num=$((RANDOM%2))
	if [[ $num -eq 0 ]]
     	then
		Singlet[$i]=`echo H`
		((count_H++))
     	else
        	Singlet[$i]=`echo T`
		((count_T++))
	fi
done
echo "Singlet Directory : "${Singlet[@]}
echo "Head have been faced $count_H times"
echo "Tail have been faced $count_T times"
echo "Head Percentage=" $(($count_H*100/$Limit))
echo "Tail Percentage=" $(($count_T*100/$Limit))
