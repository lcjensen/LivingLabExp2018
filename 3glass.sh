#!/bin/bash

###A glass
echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
    espeak -v en "Our next step is to get a glass. You can find one on that little table over there."
    echo "move robot in direction of table"
    break
fi
done

echo "1: Continue"
while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
    espeak -v en "Just take one. If you like, I’ll carry it for you. "
    break
fi
done

echo "1: User places glass on robot"
echo "2: Confusion, non-compliance"

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    espeak -v en "Great"
    break
fi
if [ "$input" = "2" ]; then
    espeak -v en "There are more things to come, and you can’t carry it all by yourself. Just place them on me. "
    break
fi
done

