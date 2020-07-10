#!/bin/bash

read -p "How many Times you want to Flip the Coin:" Limit
declare -A Doublet

for (( i=0; i<Limit; i++ ))
do
	num=$((RANDOM%4))
	if [[ $num -eq 0 ]]
     	then
		Doublet[$i]=`echo HH`
		((count_HH++))
     	elif [[ $num -eq 1 ]]
	then
        	Doublet[$i]=`echo TH`
		((count_TH++))
	elif [[ $num -eq 2 ]]
	then
		Doublet[$i]=`echo HT`
                ((count_HT++))
	 else
                Doublet[$i]=`echo TT`
                ((count_TT++))
	fi
done
echo "Doublet Directory : "${Doublet[@]}
echo "HH have been faced $count_HH times"
echo "HT have been faced $count_HT times"
echo "TH have been faced $count_TH times"
echo "TT have been faced $count_TT times"
echo "HH Percentage=" $(($count_HH*100/$Limit))
echo "TH Percentage=" $(($count_TH*100/$Limit))
echo "HT Percentage=" $(($count_HT*100/$Limit))
echo "TT Percentage=" $(($count_TT*100/$Limit))
