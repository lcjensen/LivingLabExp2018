#!/bin/bash

##create global variables
#gender - male / female
gender="male"
export gender

#persuasion condition - 1 / 2 / 3
perCond="2"
export perCond

#Incremental condition - inc / noinc
incCond="noinc"
export incCond

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
echo " "

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    echo "I'm happy to hear that"
    break
fi
if [ "$input" = "2" ]; then
    echo "I'm sorry to hear that"
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
