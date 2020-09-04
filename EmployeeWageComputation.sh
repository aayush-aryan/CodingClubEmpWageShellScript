#!/bin/bash -x
# employee wages computation using switch case 
WAGE_PER_HRS=20
IS_FULL_TIME=1
IS_PART_TIME=2
empCheck=$((RANDOM%3))
case $empCheck in
	$IS_FULL_TIME)
                  empHrs=8;
                  ;;
	$IS_PART_TIME)
                  empHrs=4;
                  ;;
    				*)
					   empHrs=0;
                  ;;
esac
dailyWage=$(( $empHrs * $WAGE_PER_HRS ))
echo $dailyWage
