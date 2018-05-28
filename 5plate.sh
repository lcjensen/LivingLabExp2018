#!/bin/bash
control="0"

###Placemat
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Now let’s get a placemat. "
    echo " "
    echo "CONTROL: move robot in the direction of the placemats" 
    play LivingLabAudio/placematNew.mp3
    break
fi
done

echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "You can pick any placemat you like."
    echo " "
    play LivingLabAudio/placemat2.mp3
    break    
fi
done

while [ $control = "0" ]
do

echo "1. Continue"
echo "2. Repeat"
while true; do
read -rsn1 input
if [ "$input" = "2" ]; then
    echo " "
    echo "You can pick any placemat you like."
    echo " "
    play LivingLabAudio/placemat2.mp3
    break
elif [ "$input" = "1" ]; then
    echo " "
    control="1"
    break
fi
done
done

echo "1: Green placemat"
echo "2: Red placemat"

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Ah, the green one, that’s my favorite, too."
    echo " "
    play LivingLabAudio/placemat3.mp3
    break
elif [ "$input" = "2" ]; then
    echo " "
    echo "Ah, the red one, that’s my favorite, too."
    echo " "
    play LivingLabAudio/placemat4.mp3
    break
fi
done


while [ "$control" = "0" ]
do
echo "1: User places placemat on robot"
echo "2: User keeps placemat"


while true; do
read -rsn1 input
if [ "$input" = "2" ]; then
    	echo " "
	echo "If you like I can carry it for you"
	let place++
	echo " "
	play LivingLabAudio/plate3.mp3
	control="1"
	break
elif [ "$input" = "1" ]; then
	echo " "
	control="1"
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
