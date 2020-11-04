#!/bin/bash
echo "Welcome to the Flip Coun Simulation program"
read -p "Enter the no of times you wants coin to be flipped=" n
headwincount=0
tailwincount=0
for (( i=1; i<=n; i++ ))
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
