#!/bin/bash
control="0"

###Placemat task
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
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
    #aplay niceworking.wav
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
    #aplay niceworking.wav
    echo "Ah, the green one, that’s my favorite, too."
    echo " "
    break
elif [ "$input" = "2" ]; then
    #aplay niceworking.wav
    echo "Ah, the red one, that’s my favorite, too."
    echo " "
    break
fi
done


