#!/bin/bash
control="0"

###Placemat task
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Our first task is to get a placemat from this shelf over there"
    echo "CONTROL: turn robot around and move toward shelf" 
    echo " "
    play LivingLabAudio/placemat1.mp3
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

echo "1: User places object on robot"
echo "2: User keeps objects"

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "You are welcome to put everything on my tray"
    let "place++"
    echo " "
    play LivingLabAudio/welcome.mp3
    break
elif [ "$input" = "2" ]; then
    break
fi
done

./3napkin.sh
