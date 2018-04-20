#!/bin/bash


###Candle
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
    espeak -v en "the last thing we need to pick up, before we go to the table, is a candle."
    echo "move robot in the direction of the candles" 
    break
fi
done

echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
    espeak -v en "Here, please pick one. "
    break
fi
done

echo "move robot in the direction of the table"
