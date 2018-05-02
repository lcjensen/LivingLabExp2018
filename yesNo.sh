while :
do

echo "1: Yes"
echo "2. No"

while true; do
read -rsn1 input
if [ "$input" = "1" ]; then
    play LivingLabAudio/yes.mp3
    echo " "
    echo "Yes"
    break
elif [ "$input" = "2" ]; then
    play LivingLabAudio/no.mp3
    echo " "
    echo "No"
    break
fi
done
done
