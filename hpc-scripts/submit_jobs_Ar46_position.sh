#!/bin/bash
#This Bash script calls the PBS job scripts - up to 15 jobs at a time

for value in {120..130} #the numbers indicate the run numbers one wishes to fit
do
  RUN_NUM=$value
  export RUN_NUM
  qsub -v RUN_NUM monte_carlo_Ar46_position.sh
done
