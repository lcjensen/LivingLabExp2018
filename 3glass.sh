#!/bin/bash

###A glass
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
    echo "Our next step is to get a glass. You can find one on that little table over there."
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
    #aplay niceworking.wav
	echo "It’s important to drink enough water during the day"
	echo " "
    break
fi
done

echo "1: Continue"
echo " "


while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
	if [ "$perCond" = "1" ]; then
		if [ "$gender" = "male" ]; then
		echo "Most male participants drink 0,5l after this game"
		elif [ "$gender" = "female" ]; then
		echo "Most female participants drink 0,5l after this game"
		fi
	elif [ "$perCond" = "2" ]; then
		echo "Most participants drink 0,5l after this game."
	
	elif [ "$perCond" = "3" ]; then
		echo "Heidi Klum drinks around 3l every day"
	else echo "not found "
	fi
    echo ""
    break
fi
done

echo "1: Continue"
echo " "

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
	echo "Great"
	echo " "
    break
fi
done

