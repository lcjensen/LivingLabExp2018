#!/bin/bash


##exit
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    play LivingLabAudio/exit1.mp3
    echo " "
    echo "Please set the table with the things we have collected so that you have a decent place for your snack."
    break
fi
done

echo "1: Sits down"
echo "2: Stays up"

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
   play LivingLabAudio/exit2.mp3
    echo " "
    echo "Please help yourself with the water."
    break
elif [ "$input" = "2" ]; then
   play LivingLabAudio/exit3.mp3
    echo " "
    echo "Please have a seat."
	echo " "
	echo "1: Continue"
	while true; do
	read -rsn1 input
	if [ "$input" = "1" ]; then
  		play LivingLabAudio/exit2.mp3
   		echo " "
    		echo "Help yourself with the water"
    		break
	fi
	done
fi
done
    


echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    play LivingLabAudio/exit4.mp3
    echo " "
    echo "Can you also please fill out the questionnaire?" 
    echo play LivingLabAudio/exit4_1.mp3
    echo " "
    echo "it's on the ipad on the table"
    break
fi
done


echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    play LivingLabAudio/exit5.mp3
    echo " "
    echo "Thank you for participating. I enjoyed working with you."
    break
fi
done


