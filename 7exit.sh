#!/bin/bash


##exit
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
    echo "Please set the table with the things we have collected. After you have done this, please fill out the questionnaire, while enjoying your self-picked drink and your snack.Thank you for your participation."
    break
fi
done

echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
    echo "Thank you for your participation. I enjoyed working with you."
    break
fi
done


