#!/bin/bash
control="0"

###A glass
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "CONTROL: move robot in direction of table"
    echo " "
    echo "Our next step is to get a glass. You can find one on that table over here."
    echo " "
    play LivingLabAudio/glass1.mp3
    break
fi
done

while [ "$control" = "0" ]
do
echo "1: User puts glass on robot"
echo "2: User keeps the glass"
echo "3: User does not pick up glass"
echo " "
while true; do
read -rsn1 input
if [ "$input" = "1" ] && [ "$place" = "0" ]; then
    echo " "
    echo "You are welcome to put everything on my tray."
    let "place++"
    echo " "
    play LivingLabAudio/napkins6.mp3
    control="1"
    break
elif [ "$input" = "1" ] && [ "$place" > "0" ]; then
    echo " "
    echo "Great"
    echo " "
    play LivingLabAudio/great.mp3
    control="1"
    break
elif [ "$input" = "2" ]; then
	echo " "
	control="1"
	break
elif [ "$input" = "3" ]; then
	echo "please pick up a glass"
        play LivingLabAudio/glass5.mp3
	break
fi
done
done

echo "1: Continue"
echo " "


while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
	if [ "$perCond" = "gender" ]; then
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
		play LivingLabAudio/glass3_2F.mp3
		fi
	elif [ "$perCond" = "people" ]; then
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
