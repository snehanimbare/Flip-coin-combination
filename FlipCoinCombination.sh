#!/bin/bash

read -p "How many Times you want to Flip the Coin:" Limit

function One
{
declare -A Singlet
declare -A Singlet_Percent

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
Singlet_Percent[H]=$(($count_H*100/$Limit))
Singlet_Percent[T]=$(($count_T*100/$Limit))
echo ${!Singlet_Percent[@]}
echo ${Singlet_Percent[@]}
array=($(echo ${Singlet_Percent[@]} | tr " " "\n" | sort -nr))
echo "Sorted : ${array[@]}"

}

function Three
{
declare -A Triplet
declare -A Triplet_Percent

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
Triplet_Percent[HHH]=$(($count_HHH*100/$Limit))
Triplet_Percent[HHT]=$(($count_HHT*100/$Limit))
Triplet_Percent[HTH]=$(($count_HTH*100/$Limit))
Triplet_Percent[THH]=$(($count_THH*100/$Limit))
Triplet_Percent[HTT]=$(($count_HTT*100/$Limit))
Triplet_Percent[THT]=$(($count_THT*100/$Limit))
Triplet_Percent[TTH]=$(($count_TTH*100/$Limit))
Triplet_Percent[TTT]=$(($count_TTT*100/$Limit))
echo ${!Triplet_Percent[@]}
echo ${Triplet_Percent[@]}
array=($(echo ${Triplet_Percent[@]} | tr " " "\n" | sort -nr))
echo "Sorted : ${array[@]}"

}

function Two
{
declare -A Doublet
declare -A Doublet_Percent

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
Doublet_Percent[HH]=$(($count_HH*100/$Limit))
Doublet_Percent[TH]=$(($count_TH*100/$Limit))
Doublet_Percent[HT]=$(($count_HT*100/$Limit))
Doublet_Percent[TT]=$(($count_TT*100/$Limit))
echo ${!Doublet_Percent[@]}
echo ${Doublet_Percent[@]}
array=($(echo ${Doublet_Percent[@]} | tr " " "\n" | sort -nr))
echo "Sorted : ${array[@]}"
}

One
Two
Three

