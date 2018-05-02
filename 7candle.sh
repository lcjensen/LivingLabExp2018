#!/bin/bash

control="0"
count="0"


###Candle
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    play LivingLabAudio/candle1.mp3
    echo " "
    echo  "The last thing we need to pick up, before we go to the table, is a candle. "
    echo " " 
    echo "CONTROL: move robot in the direction of the candles" 
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
		echo "1: a bit bit more"
		fi
		echo "2: Repeat"
		echo "3: Done"

		while true; do
		read -rsn1 input
	
		if [ "$input" = "1" ]; then
			if [ "$count" = "0" ]; then
			play LivingLabAudio/candle2_1more.mp3
    			echo " "
			echo "More to the right"
			count="1"
			else 
			play LivingLabAudio/candle2_2bit.mp3
    			echo " "
			echo "a little bit more"
			fi
		elif [ "$input" = "2" ]; then
			play LivingLabAudio/candle2_3more.mp3
    			echo " "
			echo "the candle is on the right side of the shelf"
		elif [ "$input" = "3" ]; then
			play LivingLabAudio/candle2_4.mp3
    			echo " "
			echo "3: Yes, that’s right"
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
			play LivingLabAudio/candle2_3.mp3
    			echo " "
			echo "the candle is on the right side of the shelf"
		elif [ "$input" = "2" ]; then
			play LivingLabAudio/candle2_4.mp3
    			echo " "
			echo "Yes, that’s right"
			control="1"
		fi
		break
		done
	fi
done
