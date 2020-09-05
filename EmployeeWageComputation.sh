#!/bin/bash -x
WORKING_DAY_PER_MONTH=20
TOTAL_WORKING_HRS=100
WAGE_PER_HRS=20
IS_FULL_TIME=1
IS_PART_TIME=2
totalWorkingDays=0;
totalEmployeeHrs=0;
function getWorkHrs(){
   empCheck=$1
   case $empCheck in
         $IS_FULL_TIME)  empHrs=8;
                         ;;
         $IS_PART_TIME)  empHrs=4;
                         ;;
                     *)
                         empHrs=0
                         ;;
   esac
   echo $empHrs
}
while (( totalEmployeeHrs<$TOTAL_WORKING_HRS && totalWorkingDays<$WORKING_DAY_PER_MONTH ))
do
	empCheck=$((RANDOM%3))
   empHrs="$( getWorkHrs $empCheck )"
   totalEmployeeHrs=$(( $totalEmployeeHrs + $empHrs ))
   dailyWage[totalWorkingDays]=$(( $empHrs * $WAGE_PER_HRS ))
   ((totalWorkingDays++))
done
totalSalary=$(( $totalEmployeeHrs * $WAGE_PER_HRS ))
dailyWage[totalWorkingDays]=$totalSalary
echo daily wages along with total wages : ${dailyWage[@]}
