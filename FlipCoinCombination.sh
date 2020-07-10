#!/bin/bash

read -p "How many Times you want to Flip the Coin:" Limit
declare -A Triplet

for (( i=0; i<Limit; i++ ))
do
	num=$((RANDOM%8))
	if [[ $num -eq 0 ]]
        then
                Triplet[$i]=`echo HHH`
                ((count_HHH++))
        elif [[ $num -eq 1 ]]
        then
                Triplet[$i]=`echo HHT`
                ((count_HHT++))
        elif [[ $num -eq 2 ]]
        then
                Triplet[$i]=`echo HTH`
                ((count_HTH++))
        elif [[ $num -eq 3 ]]
        then
                Triplet[$i]=`echo THH`
                ((count_THH++))
        elif [[ $num -eq 4 ]]
        then
                Triplet[$i]=`echo HTT`
                ((count_HTT++))
        elif [[ $num -eq 5 ]]
        then
                Triplet[$i]=`echo THT`
                ((count_THT++))
        elif [[ $num -eq 6 ]]
        then
                Triplet[$i]=`echo TTH`
                ((count_TTH++))
        else
                Triplet[$i]=`echo TTT`
                ((count_TTT++))
        fi
done
echo "Triplet Directory : "${Triplet[@]}
echo "HHH have been faced $count_HHH times"
echo "HHT have been faced $count_HHT times"
echo "HTH have been faced $count_HTH times"
echo "THH have been faced $count_THH times"
echo "HTT have been faced $count_HTT times"
echo "THt have been faced $count_THT times"
echo "TTH have been faced $count_TTH times"
echo "TTT have been faced $count_TTT times"
echo "HHH Percent=" $(($count_HHH*100/$Limit))
echo "HHT Percent=" $(($count_HHT*100/$Limit))
echo "HTH Percent=" $(($count_HTH*100/$Limit))
echo "THH Percent=" $(($count_THH*100/$Limit))
echo "HTT Percent=" $(($count_HTT*100/$Limit))
echo "THT Percent=" $(($count_THT*100/$Limit))
echo "THH Percent=" $(($count_TTH*100/$Limit))
echo "TTT Percent=" $(($count_TTT*100/$Limit))
