#!/bin/bash

###Plate
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
    espeak -v en "Now let’s get a plate. "
    echo "move robot in the direction of the plates" 
    break
fi
done

echo "1: User places plate on robot"
echo "2: Confusion, non-compliance"

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    espeak -v en "Thank you. I will carry it for you."
    break
fi
if [ "$input" = "2" ]; then
    espeak -v en "If you like, I can carry it for you."
    break
fi
done

