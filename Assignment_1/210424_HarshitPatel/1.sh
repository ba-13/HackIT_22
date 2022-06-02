#!/bin/bash  

i=1 
SUB='HACK' 
while read line; do  
if [[ "$line" == *"$SUB"* ]]; then
  echo "HACK"
  echo "Line No. $i"
fi 
i=$((i+1))  
done < i_am_hiding_stuff.txt