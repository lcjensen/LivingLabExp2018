#!/bin/bash

###A glass
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    play LivingLabAudio/glas1.mp3
    echo " "
    echo "Our next step is to get a glass. You can find one on that table over there."
    echo " "
    echo "CONTROL: move robot in direction of table"
    echo " "
    break
fi
done

echo "1: Continue"
echo " "


while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
	if [ "$perCond" = "1" ]; then
		play LivingLabAudio/glas2.mp3
    		echo " "
		echo "It’s important to drink enough water during the day"
		if [ "$gender" = "male" ]; then
		play LivingLabAudio/glas3_2M.mp3
    		echo " "
		echo "Most male participants drink 0,5l after this game"
		elif [ "$gender" = "female" ]; then
		play LivingLabAudio/glas3_2F.mp3
    		echo " "
		echo "Most female participants drink 0,5l after this game"
		fi
	elif [ "$perCond" = "2" ]; then
		play LivingLabAudio/glas2.mp3
    		echo " "
		echo "It’s important to drink enough water during the day"
		play LivingLabAudio/glas3_3.mp3
    		echo " "
		echo "Most participants drink 0,5l after this game."
	fi
    break
fi
done

echo "1: Continue"
echo " "

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
	play LivingLabAudio/glas4.mp3
    	echo " "
	echo "Great, okay. Next step."
	echo " "
    break
fi
done

