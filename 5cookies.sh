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
    echo "Here you find several snacks, some unhealthier than others. Did you know that research has found out that eating fruit can reduce the risk of a heart attack and regulate blood pressure? "
fi
break
done
