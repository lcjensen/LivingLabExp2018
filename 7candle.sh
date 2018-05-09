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
    echo "it should be in the top shelf "
    echo " " 
    echo "CONTROL: move robot in the direction of the candles" 
    play LivingLabAudio/candle1_1.mp3
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
			echo "the candle is on the right side of the shelf"
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
./8exit.sh
