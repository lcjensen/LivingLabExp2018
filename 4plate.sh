#!/bin/bash

###Plate
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
    echo "Now let’s get a plate. "
    echo "CONTROL: move robot in the direction of the plates" 
    break
fi
done

echo "1: User places plate on robot"
echo "2: User keeps plate"

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo "Thank you. "
    break

elif [ "$input" = "2" ]; then
	echo "If you like, I can carry it for you."
	echo " "
	echo "1: Continue"
	echo " "
fi
break	
done

	while true; do	
	read -rsn1 input
	if [ "$input" = "1" ]; then
    		echo "1: User places plate on robot"
		echo "2: User keeps plate"
		echo " "

		while true; do	
		read -rsn1 input
		if [ "$input" = "1" ];then
			echo "Thank you"
		else echo " "
		break
		fi
		break
		done
	fi	
    	break
	done
