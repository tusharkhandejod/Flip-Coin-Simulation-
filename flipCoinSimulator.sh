#!/bin/bash
echo "Welcome to the Flip Coun Simulation program"
headwincount=0
tailwincount=0
diff=0
while [[ $headwincount -le 20 && $tailwincount -le 20 ]]
do
x=$(($RANDOM%2))
if [[ $x -eq 0 ]]
then
echo "Head is winner"
headwincount=$(($headwincount+1))
elif [[ $x -eq 1 ]]
then
echo "Tail is winner"
tailwincount=$(($tailwincount+1))
fi
done
echo "Head win count=" $headwincount
echo "Tail win count=" $tailwincount

if [[ $headwincount -eq 21 ]]
then
diff=$(($headwincount-$tailwincount))
echo "Head wins by $diff count"
elif [[ $tailwincount -eq 21 ]]
then
diff=$(($tailwincount-$headwincount))
echo "Tail wins by $diff count"
elif [[ $headwincount -eq 21 && $tailwincount -eq 21 ]]
then
echo "It is a Tie"
fi
