#! /bin/bash

correctanswers=0
quotenum=0
quotemax=30
quotesanswered=0

echo "Welcome to the Macbeth Key Quote Tester, BASH EDITION!!
Type the number of the act you would like to be tested on, or \"all\" for all acts.
If you want to quit, type \"quit\". 
--------------------------------------------------------------------------------"

while true; do

	read actchoice
	if [ $actchoice == "quit" -o $actchoice == "exit" ]; then
		echo "Bye!"
		exit 0 #normal exit code

	elif [ $actchoice == "all" ]; then
		echo "You have chosen all Acts."
		quotenum=0
		quotemax=30
		break

	elif [ $actchoice -gt 0 -a $actchoice -lt 6 2> /dev/null ]; then #"2> /dev/null" here is for putting error messages (from non-int responses) into the bin
		echo "You have chosen Act $actchoice."
		if [ $actchoice == 1 ]; then
			quotenum=0
			quotemax=7
		elif [ $actchoice == 2 ]; then
			quotenum=8
			quotemax=11
		elif [ $actchoice == 3 ]; then
			quotenum=12
			quotemax=16
		elif [ $actchoice == 4 ]; then
			quotenum=17
			quotemax=20
		elif [ $actchoice == 5 ]; then
			quotenum=21
			quotemax=30
		fi
		break

	else 
		echo "invalid input! try again!!"
	fi

done

echo "continue on here"

#! /bin/bash


correctanswers=0
quotenum=0
quotemax=30
quotesanswered=0

echo "Welcome to the Macbeth Key Quote Tester, BASH EDITION!!
Type the number of the act you would like to be tested on, or \"all\" for all acts.
If you want to quit, type \"quit\". 
--------------------------------------------------------------------------------"

while true; do

	read actchoice
	if [ $actchoice == "quit" -o $actchoice == "exit" ]; then
		echo "Bye!"
		exit 0 #normal exit code

	elif [ $actchoice == "all" ]; then
		echo "You have chosen all Acts."
		break


	elif [ $actchoice -gt 0 -a $actchoice -lt 6 2> /dev/null ]; then #"2> /dev/null" here is for putting error messages (from non-int responses) into the bin
		echo "You have chosen Act $actchoice."
		break

	else 
		echo "invalid input! try again!!"
	fi

done

echo "continue on here"

