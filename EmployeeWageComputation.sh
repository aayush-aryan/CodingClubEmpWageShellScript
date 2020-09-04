#!/bin/bash -x

WAGE_PER_HRS=20
IS_FULL_TIME=1
IS_PART_TIME=2
empCheck=$((RANDOM%3))
if [ $IS_FULL_TIME -eq $empCheck ]
then
       empHrs=8
elif [ $IS_PART_TIME -eq $empCheck ]
then
       empHrs=4
else
		 empHrs=0
fi
dailyWage=$(( $empHrs * $WAGE_PER_HRS ))
echo $dailyWage

