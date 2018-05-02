#!/bin/bash
control="0"

###Placemat task
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    play LivingLabAudio/placemat1.mp3
    echo " "
    echo "Our first task is to get a napkin and a placemat from this shelf over there"
    echo "CONTROL: turn robot around and move toward shelf" 
    echo " "
    break
fi
done

echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    play LivingLabAudio/placemat2.mp3
    echo " "
    echo "You can pick any placemat you like."
    echo " "
    break
fi
done


echo "1: Green placemat"
echo "2: Red placemat"

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    play LivingLabAudio/placemat3.mp3
    echo " "
    echo "Ah, the green one, that’s my favorite, too."
    echo " "
    break
elif [ "$input" = "2" ]; then
    play LivingLabAudio/placemat4.mp3
    echo " "
    echo "Ah, the red one, that’s my favorite, too."
    echo " "
    break
fi
done


