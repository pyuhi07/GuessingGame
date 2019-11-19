#!/usr/bin/env bash
echo "how many files are there in the directory?"
read resp

function isNumber {
if [[ $resp =~ [0-9] ]]
then
  flag=1
else 
  flag=0
fi
echo $flag
} 
 
echo $flag

while [[ $resp -ne $ans ]]
do
	ans=$(ls | wc -l)

	if [[ $(isNumber) -eq 1 ]]
	then

		#if [[ $resp -eq $ans ]]
		#then 
 	  	 #echo "Congartulations!! , correct guess"
		if [[ $resp -gt $ans ]]
		then
 	  	  echo "Too high a guess"
		else [[ $resp -lt $ans ]]
	  	  echo "Too low a guess"
		fi
  	echo "dont give up! keep guessing!"
	else
 	  echo "Invalid entry, enter a numberical value"
	fi

	echo " how many files are there in the directory?"
	read resp
done

echo "congratulatoions! , correct guess"
