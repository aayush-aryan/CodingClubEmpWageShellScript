#!/bin/bash -x

WAGE_PER_HRS=20
IS_FULL_TIME=1
empCheck=$((RANDOM%2))
if [ $IS_FULL_TIME -eq $empCheck ]
then
       empHrs=8
else
       empHrs=0
fi
dailyWage=$(( $empHrs * $WAGE_PER_HRS ))
echo $dailyWage
