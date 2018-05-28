#!/bin/bash
control="0"

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

while [ "$control" = "0" ]
do
echo "1: User places plate on robot"
echo "2: User keeps plate"
echo "3: User does not pick up plate"


while true; do
read -rsn1 input
if [ "$input" = "2" ]; then
    	echo " "
	echo "If you like I can carry it for you"
	echo " "
	play LivingLabAudio/plate3.mp3
	control="1"
	break
elif [ "$input" = "1" ]; then
	echo " "
	control="1"
	break
elif [ "$input" = "3" ];then
	echo "Please pick up a plate "
	play LivingLabAudio/plate3_1.mp3
	break
fi
done
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
