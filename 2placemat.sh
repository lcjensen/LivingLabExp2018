#!/bin/bash
control="0"

###Placemat task
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Our first task is to get a plate from this shelf over there"
    echo "CONTROL: turn robot around and move toward shelf" 
    echo " "
    play LivingLabAudio/plateNew.mp3
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
	control="1"
	break
elif [ "$input" = "1" ]; then
   	echo " "
    	echo "You are welcome to put everything on my tray"
    	let "place++"
    	echo " "
    	play LivingLabAudio/welcome.mp3
	control="1"
	break
elif [ "$input" = "3" ];then
	echo "Please pick up a plate "
	play LivingLabAudio/plate3_1.mp3
	break
fi
done
done

./3napkin.sh
