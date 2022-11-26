#! /bin/bash -x
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
c=1
declare -A Dice

while ((($count1<10 && $count2<10 && $count3<10 && $count4<10 && $count5<10 && $count6<10)))
do
	Dice=&((RANDOM%6+1))
	((c++))
	case $Dice in
		0)
		((count1++))
		;;
		1)
		((count2++))
		;;
		2)
		((count3++))
		;;
		3)
		((count4++))
		;;
		4)
		((count5++))
		;;
		*)
		((count6++))
		;;
	esac
done
echo "Dice"${Dice[@]}
echo "No. of times Dice rolled"${#Dice[@]}


if(($count1>$count2 && $count1>$count3 && $count1>$count4 && $count1>$count5 && $count1>$count6))
then
	echo "The number 1 is occurs at maximum:$count1 times"
elif(($count2>$count3 && $count2>$count4 && $count3>$count5 && $count3>$count6))
then
	echo "The numnber 2 is occurs at maximum:$count2 times"
elif(($count3>$count4 && $count3>$count5 && $count3>$count6))
then
	echo "The number 3 is occurs at maximum:$count3 times"
elif(($count4>$count5 && $count4>$count6))
then
	echo "The number 4 is occurs at maximum:$count4 times"
elif(($count5>$count6))
then
	echo "The number 5 is occurs at maximum:$count5 times"
else
	echo "The number 6 is occurs at maximum:$count6 times"
fi


if(($count1<$count2 && $count1<$count3 && $count1<$count4 && $count1<$count5 && $count1<$count6))
then
        echo "The number 1 is occurs at minimum:$count1 times"
elif(($count2<$count3 && $count2<$count4 && $count3<$count5 && $count3<$count6))
then
        echo "The numnber 2 is occurs at minimum:$count2 times"
elif(($count3<$count4 && $count3<$count5 && $count3<$count6))
then
        echo "The number 3 is occurs at minimum:$count3 times"
elif(($count4<$count5 && $count4<$count6))
then
        echo "The number 4 is occurs at minimum:$count4 times"
elif(($count5<$count6))
then
        echo "The number 5 is occurs at minimum:$count5 times"
else
        echo "The number 6 is occurs at minimum:$count6 times"
fi



