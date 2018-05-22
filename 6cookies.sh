#!/bin/bash


###Cookies or fruit
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "now we need to pick up a snack."
    echo " "
    echo "CONTROL: move robot in the direction of the snacks" 
    play LivingLabAudio/cookies1.mp3
    break
fi
done


echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    	echo " "
	echo "Here on this shelf you'll find several snacks"
    	play LivingLabAudio/cookies2.mp3
    break
fi
done

echo "1: Cookie"
echo "2: Fruit"

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    	echo " "
    	echo "ah, okay, you picked a cookie! In this case, we probably don’t need to pick up a knife!"
   	play LivingLabAudio/cookies3.mp3
	fruit="0"
	elif [ "$input" = "2" ]; then
    	echo " "
	echo "ah, okay, you picked a fruit! In this case, we should probably also pick up a knife!"
	play LivingLabAudio/cookies4_1.mp3
    	echo " "	
	echo " there it is, on top of the shelf."
	play LivingLabAudio/cookies4_2.mp3
	fruit="1"
fi
break
done

echo "1: User puts napkins on robot"
echo "2: User keeps the napkins"
echo " "
while true; do
read -rsn1 input
if [ "$input" = "1" ] && [ "$place" = "0" ]; then
    echo " "
    echo "You are welcome to put everything on my tray."
    let "place++"
    echo " "
    play LivingLabAudio/napkins6.mp3
    break
elif [ "$input" = "1" ] && [ "$place" > "0" ]; then
    echo " "
    echo "Great"
    echo " "
    play LivingLabAudio/great.mp3
    break
elif [ "$input" = "2" ]; then
	echo " "
else
break
fi
break
done



./7candle.sh

