#!/bin/bash  
  
file='i_am_hiding_stuff.txt'  
  
i=1  
while read line; do  
  
string=$line
substr="HACK"


if [[ $string == *"$substr"* ]];
then
	echo "Line No. $i --> $string"  
fi

i=$((i+1))  
done < $file 
