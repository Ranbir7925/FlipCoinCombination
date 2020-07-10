#!/bin/bash 

echo "Welcome to Flip Coin Simulation"

checkCoin=$((RANDOM%2))
if [ $checkCoin -eq 0 ]
then
	headsOrTails+=H
else
	headsOrTails+=T
fi
echo $headOrTails
