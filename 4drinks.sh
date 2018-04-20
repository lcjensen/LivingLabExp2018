#!/bin/bash
###Drinks
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
    espeak -v en "Okay, now let’s get something to drink for you. On this shelf, you find several drinks, pick one."
    echo "move robot in direction of shelf"
    break
fi
done
###fix the logic

