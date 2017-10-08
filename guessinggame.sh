#!/usr/bin/sh
#
# guessinggame.sh - guess the number of files in current directory 
#

# 8-Oct-2017	Marc Weisenberg


guess=-1
numfiles=0

function GetFileCount()
{
   numfiles=$(ls -1 | wc -l)
}

echo "guessinggame.sh - Guess the number of files in the current directory"

GetFileCount

### Play game
while [ $guess -ne $numfiles ]; do

	echo "Enter your guess: "
	read guess
	if [ $guess -lt $numfiles ]; then
		echo "Your guess is low - try higher..."
	elif [ $guess -gt $numfiles ]; then
		echo "Your guess is high - try lower..."
	fi
done

echo "Congratulations! The number of files in the current directory is $numfiles."

