#!/bin/bash

###Plate
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    play LivingLabAudio/plate1.mp3
    echo " "
    echo "Now let’s get a plate. "
    echo " "
    echo "CONTROL: move robot in the direction of the plates" 
    break
fi
done

echo "1: User places plate on robot"
echo "2: User keeps plate"

while true; do
read -rsn1 input
if [ "$input" = "2" ]; then
	play LivingLabAudio/plate2.mp3
    	echo " "
	echo "If you like, I can carry it for you."
	echo " "
fi
break	
done
