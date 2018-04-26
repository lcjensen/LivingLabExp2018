#!/bin/bash
echo "Gender"
echo "1: Male"
echo "2: Female"
echo " "

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
	gender="male"
    	break
elif [ "$input" = "2" ]; then
	gender="female"
    	break
fi
done

echo "Gender"
echo "1: 0"
echo "2: Gender"
echo "3: People"
echo " "

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
	perCond="1"
    	break
elif [ "$input" = "2" ]; then
	perCond="2"
    	break
elif [ "$input" = "0" ]; then
	perCond="0"
    	break
fi
done

echo "Gender"
echo "1: Incremental"
echo "2: Non-incremental"
echo " "

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
	incCond="inc"
    	break
elif [ "$input" = "2" ]; then
	incCond="noinc"
    	break
fi
done


export incCond
export perCond
export gender
