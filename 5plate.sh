#!/bin/bash

###Plate
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Now let’s get a plate. "
    echo " "
    echo "CONTROL: move robot in the direction of the plates" 
    play LivingLabAudio/plate1.mp3
    break
fi
done

echo "1: User places plate on robot"
echo "2: User keeps plate"

while true; do
read -rsn1 input
if [ "$input" = "2" ]; then
    	echo " "
	echo "If you like I can carry it for you"
	echo " "
	play LivingLabAudio/plate3.mp3
elif [ "$input" = "1" ]; then
	echo " "
fi
break	
done

echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Very good "
    echo " "
    play LivingLabAudio/plate2.mp3
    break
fi
done
./6cookies.sh
