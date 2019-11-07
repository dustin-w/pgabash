#!/usr/bin/env bash
# File: guessinggame.sh

# Wood Dustin | 06/11/19
# Peer graded assignment for the unix workbench, a coursera course

# Ask user to guess the number of files in the directory
# If the user is too high, tell them and request a new guess, etc.
# Congratulate upon a correct guess


## Count files in pwd and save to variable count
function count_files {
	ls -l | wc -l
}

count=$(( $(count_files) - 1 ))


## Request user input for the inital guess and save to variable guess
echo "Please enter a guess for the number of files in yout current directory: "
read guess

## Guide user to correct guess with higher/lower feedback
while [[ $guess -ne $count ]]
do
	if [[ $guess -le $count ]]
	then
		echo "There are more files in this directory. Guess again: "
		read guess
	elif [[ $guess -gt $count ]]
	then
		echo "There are fewer files in this directory. Guess again: "
		read guess
	else
		echo "Invalid input"
	fi
done

# Congratulate when user guess correctly
if [[ $guess -eq $count ]]
then
	echo "Congratulations! There are $guess files in this directory."
fi

