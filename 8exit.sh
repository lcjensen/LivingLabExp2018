#!/bin/bash


##exit
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Please set the table with the things we have collected so that you have a decent place for your snack."
    play LivingLabAudio/exit1.mp3
    break
fi
done

echo "1: Sits down"
echo "2: Stays up"

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Please help yourself with the water."
   play LivingLabAudio/exit2.mp3
    break
elif [ "$input" = "2" ]; then
    echo " "
    echo "Please have a seat."
   play LivingLabAudio/exit3.mp3
	echo " "
	echo "1: Continue"
	while true; do
	read -rsn1 input
	if [ "$input" = "1" ]; then
   		echo " "
    		echo "Help yourself with the water"
  		play LivingLabAudio/exit2.mp3
    		break
	fi
	break
	done
fi
break
done
    


echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Can you also please fill out the questionnaire?" 
    play LivingLabAudio/exit4.mp3
    echo " "
    echo "it's on the ipad on the table"
    play LivingLabAudio/exit4_1.mp3
    break
fi
done


echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Thank you for participating. I enjoyed working with you."
    play LivingLabAudio/exit5.mp3
    break
fi
done


