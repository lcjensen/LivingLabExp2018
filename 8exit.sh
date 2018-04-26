#!/bin/bash


##exit
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
    echo "Please set the table with the things we have collected so that you have a decent place for your snack. Please help yourself with the water."
    break
fi
done

echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
    echo "Could you please fill out the questionnaire?"
    break
fi
done


echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
    echo "Thank you for participating. I enjoyed working with you."
    break
fi
done


