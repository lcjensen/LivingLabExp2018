#!/bin/bash

###A glass
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Our next step is to get a glass. You can find one on that table over there."
    echo " "
    echo "CONTROL: move robot in direction of table"
    echo " "
    play LivingLabAudio/glass1.mp3
    break
fi
done

echo "1: Continue"
echo " "


while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
	if [ "$perCond" = "1" ]; then
    		echo " "
		echo "It’s important to drink enough water during the day"
		play LivingLabAudio/glass2.mp3
		if [ "$gender" = "male" ]; then
    		echo " "
		echo "Most male participants drink 0,5l after this game"
		play LivingLabAudio/glass3_2M.mp3
		elif [ "$gender" = "female" ]; then
    		echo " "
		echo "Most female participants drink 0,5l after this game"
		play LivingLabAudio/glas3_2F.mp3
		fi
	elif [ "$perCond" = "2" ]; then
    		echo " "
		echo "It’s important to drink enough water during the day"
		play LivingLabAudio/glass2.mp3
    		echo " "
		echo "Most participants drink 0,5l after this game."
		play LivingLabAudio/glass3_3.mp3
	fi
    break
fi
done

echo "1: Continue"
echo " "

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    	echo " "
	echo "Great, okay. Next step."
	echo " "
	play LivingLabAudio/glass4.mp3
    break
fi
done
./5plate.sh
