#!/bin/bash

echo "Welcome to Flip Coin Simulation"

function flipCoin () {
	local numOfFlips=$1 choice=$2
        for ((i=1; i<=$numOfFlips; i++))
        do
	        headsOrTails=""
                for ((j=1; j<=$choice; j++ ))
                do
                        checkCoin=$((RANDOM%2))
                        if [ $checkCoin -eq 0 ]
                        then
                                headsOrTails+=H
                        else
                                headsOrTails+=T
                        fi
                done
	done
}


read -p "Dou you want to Flip (y/n)?: " input
if [[ $input == "y" || $input == "Y" ]]
then
	read -p "Enter Number of times you want to Flip a coin: " num_of_flips
	echo -e "Enter \n1.Singlet Combination"
	read choice
	flipCoin $num_of_flips $choice
fi
