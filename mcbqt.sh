#! /bin/bash
# mcbqt, written by azazazazel

while true; do

	result=0
	quotenum=0
	quotemax=30
	quotesanswered=0

	quotestart=(
	"Fair is foul, "
	"The instruments of darkness "
	"Yet I do fear thy nature; It is too "
	"Come you spirits that tend "
	"Look like the "
	"That we but teach bloody instruction, "
	"I have no spur to "
	"False face must " # eoa1 / 7
	"Had he not resembled "
	"My hands are of "
	"A little water "
	"Most sacrilegious murder " # eoa2 / 11
	"Nought’s had, "
	"O, full of  "
	"Be innocent "
	"But now I am cabined, "
	"I am in blood stepped " # eoa3 / 16
	"Double, double, toil "
	"Macbeth: beware "
	"None of "
	"Macbeth shall never " # eoa4 / 20
	"Out, damned "
	"Here’s the smell of the blood still "
	"More needs she the "
	"Unnatural deeds "
	"And that which should accompany old age "
	"I’ll fight till from my "
	"I have supped "
	"Producing forth the cruel ministers of this dead "
	"Out, Out, brief candle, life’s but a walking shadow, a poor player ") # eoa5 / 29)

	quoteend=(
	"and foul is fair, hover through the fog and filthy air"
	"tell us truths, win us with honest trifles to betray 's in deepest consequence"
	"full o' the milk of human kindness to catch the nearest way"
	"on mortal thoughts, unsex me now, and fill me from crown to the toe top-full of direst cruelty"
	"innocent flower, but be the serpent under 't"
	"which, being taught, return to plague th’ inventor"
	"prick the sides of my intent, but only vaulting ambition"
	"hide what the false heart doth know"
	"my father as he slept, I had done 't"
	"your colour, but I shame to wear a heart so white"
	"clears us of this deed"
	"hath broke ope the Lord's anointed temple, and hence stole the life o'th' building"
	"all's spent, where our desire is got without content"
	"scorpions is my mind, dear wife"
	"of the knowledge, dearest chuck"
	"cribbed, confined, bound by saucy doubts and fears"
	"in so far, that should I wade no more, returning were as tedious as go o'er"
	"and trouble, fire burn and cauldron bubble"
	"Macduff, beware the Thane of Fife"
	"woman born shall harm Macbeth"
	"vanquished be, until Great Birnam wood to high Dunsinane hill shall come against him"
	"spot, out, I say"
	"All the perfumes of Arabia will not sweeten this little hand"
	"divine than the physician"
	"do breed unnatural troubles"
	"As honour, love, obedience, troops of friends, I must not look to have, but in their stead curses, not loud but deep, mouth-honour, breath. Which the poor heart would fain deny and dare not"
	"bones my flesh be hacked"
	"full with horrors"
	"butcher and his fiend-like queen"
	"that struts and frets his hour upon the stage and then is heard no more. It is a tale told by an idiot, full of sound and fury, signifying nothing"
	)

	echo "Welcome to the Macbeth Key Quote Tester, BASH EDITION!!
Type the number of the act you would like to be tested on, or \"all\" for all acts.
If you want to quit, type \"quit\". 
--------------------------------------------------------------------------------"

	while true; do

		read actchoice
		if [ $actchoice = "quit" -o $actchoice = "exit" ]; then
			echo "Bye!"
			exit 0 #normal exit code

		elif [ $actchoice = "milk" ]; then
			echo "lady macbeth milkies..."
			
		elif [ $actchoice = "all" ]; then
			echo "You have chosen all Acts."
			quotenum=0
			quotemax=30
			break

		elif [ $actchoice -gt 0 -a $actchoice -lt 6 2> /dev/null ]; then #"2> /dev/null" here is for putting error messages (from non-int responses) into the bin
			echo "You have chosen Act $actchoice."
			if [ $actchoice = 1 ]; then
				quotenum=0
				quotemax=7
			elif [ $actchoice = 2 ]; then
				quotenum=8
				quotemax=11
			elif [ $actchoice = 3 ]; then
				quotenum=12
				quotemax=16
			elif [ $actchoice = 4 ]; then
				quotenum=17
				quotemax=20
			elif [ $actchoice = 5 ]; then
				quotenum=21
				quotemax=30
			fi
			break

		else 
			echo "Please type a number between 1-5, \"all\" or \"quit.\""
		fi
	done

	while [ $quotenum -lt $quotemax ]; do
		quotesanswered=$((quotesanswered+1))
		read -p "#$quotesanswered: ${quotestart[$quotenum]}" answer
		lowercaseanswer=$(echo "$answer" | tr '[:upper:]' '[:lower:]')
		echo $lowercaseanswer
		echo $
		if [ "$lowercaseanswer" = "${quoteend[$quotenum]}" ]; then
			result=$((result+1))
		fi
		quotenum=$((quotenum+1))
	done

	if [ $result = $quotesanswered ]; then
		judgement="Perfect, Congratulations!"
	elif [ $result = 0 ]; then
		judgement="damnnn you suck lol"
	else
		judgement="Pretty good, but you can do better!!"
	fi

	read -p "Quote test finished. Results: $result/$quotesanswered. $judgement.
Try Again?
Yes/No" doyouwannaclose
	lowercasedywc=$(echo "$doyouwannaclose" | tr '[:upper:]' '[:lower:]')
	if [ $lowercasedywc != "yes" ]; then
		exit 0
	fi
done