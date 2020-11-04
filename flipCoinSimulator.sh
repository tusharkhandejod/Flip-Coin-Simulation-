#!/bin/bash
echo "Welcome to the Flip Coun Simulation program"
x=$(($RANDOM%2))
if [[ $x -eq 0 ]]
then
echo "Head is winner"
elif [[ $x -eq 1 ]]
then
echo "Tail is winner"
fi

