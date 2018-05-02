#!/bin/bash


###Cookies or fruit
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
    echo "now we need to pick up a snack.  "
    echo "CONTROL: move robot in the direction of the snacks" 
    break
fi
done


echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
	echo "Here on this shelf you'll find several snacks"
    break
fi
done

echo "1: Cookie"
echo "2: Fruit"

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
    	echo "ah, okay, you picked a cookie! In this case, we probably don’t need to pick up a knife!"
	fruit="0
"elif [ "$input" = "2" ]; then
	echo "ah, okay, you picked a fruit! In this case, we should probably also pick up a knife!"	
	echo " there it is, on top of the drawer."
	fruit="1"
fi
break
done



