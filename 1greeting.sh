#!/bin/bash

###Greeting
echo "1: Start"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
    echo "Hello, how are you?"	
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
    echo "I'm happy to hear that"
    break
elif [ "$input" = "2" ]; then
    echo "I'm sorry to hear that"
    break
else echo ""
break
fi
done

echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
    echo "I’m a robot, and I can lead you through this game."	
    echo " "
    break
fi
done
