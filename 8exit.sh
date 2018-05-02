#!/bin/bash


##exit
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
    echo "Please set the table with the things we have collected so that you have a decent place for your snack."
    break
fi
done

echo "1: Sits down"
echo "2: Stays up"

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
    echo "Please help yourself with the water."
    break
elif [ "$input" = "2" ]; then
    #aplay niceworking.wav
    echo "Please have a seat."
	echo " "
	echo "1: Continue"
	while true; do
	read -rsn1 input
	if [ "$input" = "1" ]; then
    		#aplay niceworking.wav
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
    #aplay niceworking.wav
    echo "Can you also please fill out the questionnaire?" 
    echo "it's on the ipad on the table"
    break
fi
done


echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
    echo "Thank you for participating. I enjoyed working with you."
    break
fi
done


