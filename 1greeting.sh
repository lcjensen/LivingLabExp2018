#!/bin/bash

###Greeting
echo "1: Start"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "Hello, how are you?"
    play LivingLabAudio/greeting1.mp3	
    echo " "
    break
fi
done

echo "1: Positive"
echo "2: Negative"
echo "3: None"
echo " "

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "I'm happy to hear that"
    play LivingLabAudio/greeting2_1.mp3
    echo " "
    break
elif [ "$input" = "2" ]; then
    echo " "
    echo "I'm sorry to hear that"
    play LivingLabAudio/greeting2_2.mp3
    break
else echo ""
break
fi
done

echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo " "
    echo "I’m a robot, and I can lead you through this game."	
    echo " "
    play LivingLabAudio/greeting3.mp3
    break
fi
done

. ./2placemat.sh
