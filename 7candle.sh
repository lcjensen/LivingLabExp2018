#!/bin/bash

control="0"
count="0"


###Candle
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo  "The last thing we need to pick up, before we go to the table, is a candle. "
    echo " " 
    echo "CONTROL: move robot in the direction of the candles" 
    play LivingLabAudio/candle1.mp3
    break
fi
done

echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "it should be in the top drawer "
    echo " " 
    echo "CONTROL: move robot in the direction of the candles" 
    play LivingLabAudio/candle2_3.mp3
    break
fi
done

while [ $control = "0" ]
do
	if [ "$incCond" = "inc" ]; then

	
		if [ "$count" = "0" ]; then
    		echo " "
		echo "1: More to the right"
		else 
		echo "1: a bit more"
		fi
		echo "2: Repeat"
		echo "3: Done"

		while true; do
		read -rsn1 input
	
		if [ "$input" = "1" ]; then
			if [ "$count" = "0" ]; then
    			echo " "
			echo "More to the right"
			play LivingLabAudio/candle2_1more.mp3
			count="1"
			else 
    			echo " "
			echo "a little bit more"
			play LivingLabAudio/candle2_2bit.mp3
			fi
		elif [ "$input" = "2" ]; then
    			echo " "
			echo "the candle is on the right side of the shelf"
			play LivingLabAudio/candle2_3more.mp3
		elif [ "$input" = "3" ]; then
    			echo " "
			echo "3: Yes, that’s right"
			play LivingLabAudio/candle2_4.mp3
			control="1"
		fi
		break
		done


	elif [ "$incCond" = "noinc" ]; then
	
		echo "1: Repeat"
		echo "2: Done"
	
		while true; do
		read -rsn1 input
	
		if [ "$input" = "1" ]; then
    			echo " "
			echo "the candle is on the right side in the top drawer"
			play LivingLabAudio/candle2_3.mp3
		elif [ "$input" = "2" ]; then
    			echo " "
			echo "Yes, that’s right"
			play LivingLabAudio/candle2_4.mp3
			control="1"
		fi
		break
		done
	fi
done

echo "1: User puts candle on robot"
echo "2: User keeps the candle"
echo " "
while true; do
read -rsn1 input
if [ "$input" = "1" ] && [ "$place" = "0" ]; then
    echo " "
    echo "You are welcome to put everything on my tray."
    let "place++"
    echo " "
    play LivingLabAudio/napkins6.mp3
    break
elif [ "$input" = "1" ] && [ "$place" > "0" ]; then
    echo " "
    echo "Great"
    echo " "
    play LivingLabAudio/great.mp3
    break
elif [ "$input" = "2" ]; then
	echo " "
else
break
fi
break
done
./8exit.sh
