#!/bin/bash

control="0"
control2="0"
echo $incCond

echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Then we need a napkin – you’ll need just one."
    echo " "
    play LivingLabAudio/napkins1.mp3
    break
fi
done

while [ $control = "0" ]
do

while true; do
if [ "$incCond" = "inc" ]; then
	echo "1: Higher"
	echo "2: Done"
	echo "3: Repeat instructions"
	echo " "
elif [ "$incCond" = "noinc" ]; then
	echo "1: Repeat instructions"
	echo "2: Done"
	echo " "
fi

read -rsn1 input
  	if [ "$input" = "1" ]; then
		if [ "$incCond" = "inc" ]; then
   		echo " "
   		echo "Higher"
		echo ""
		play LivingLabAudio/napkins2Higher.mp3
		elif [ "$incCond" = "noinc" ]; then
		echo "They are on the top shelf"
		echo " "
		play LivingLabAudio/napkins3.mp3
		fi 

  	elif [ "$input" = "2" ]; then
   		echo " "
   		echo "Yes, there in the box"
		echo ""
		play LivingLabAudio/napkins4.mp3
   		echo " "
		echo "Great, please take it with you"
		play LivingLabAudio/napkins5.mp3
		control="1"
		break

  	elif [ "$input" = "3" ]; then
   	echo " "
	echo "They are on the top shelf"
	echo " "
	play LivingLabAudio/napkins3.mp3
	fi
done
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
fi
break
done
./4glass.sh
