while :
do

echo "1: Yes"
echo "2. No"

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    #aplay niceworking.wav
    echo "Yes"
    break
elif [ "$input" = "2" ]; then
    #aplay niceworking.wav
    echo "No"
    break
fi
done
done
