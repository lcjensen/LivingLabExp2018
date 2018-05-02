#!/bin/bash

control="0"

echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    play LivingLabAudio/napkins1.mp3
    echo " "
    echo "The napkins are on top of the shelf – you’ll need just one."
    echo " "
    break
fi
done


if [ "$incCond" = "inc" ]; then
	echo "1: Higher"
	echo "2: Repeat instructions"
	echo "2: Done"
	echo " "
elif [ "$incCond" = "noinc" ]; then
	echo "1: Repeat instructions"
	echo "2: Done"
	echo " "
fi

while true; do
read -rsn1 input
	while [ $control = "0" ]
	do
  	if [ "$input" = "1" ]; then
		if [ "$incCond" = "inc" ]; then
		play LivingLabAudio/napkins2Higher.mp3
   		echo " "
   		echo "Higher"
		echo ""
		fi 

  	elif [ "$input" = "2" ];
  	then
	play LivingLabAudio/napkins3.mp3
   	echo " "
	echo "Take the napkins on the top shelf"
	echo ""

  	elif [ "$input" = "3" ];
  	then
	play LivingLabAudio/napkins4.mp3
   	echo " "
	echo "Yes, there in the box"
	play LivingLabAudio/napkins5.mp3
   	echo " "
	echo "Great, please take them with you"
	control="1"
	break
	fi

	if [ "$incCond" = "inc" ]; then
		echo " "
		play LivingLabAudio/napkins2Higher.mp3
   		echo " "
		echo "1: Higher"
	fi
	echo "2: Repeat the instructions"
	echo "3: Done"
	echo " "

	
	read -rsn1 input


	done
	break
done

echo "1: User puts napkins on robot"
echo "2: User keeps the napkins"
echo " "
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    play LivingLabAudio/napkins6.mp3
    echo " "
    echo "You are welcome to put everything on my tray."
    echo " "
    break
fi
break
done
