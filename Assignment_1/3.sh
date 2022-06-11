#!/bin/bash  
  
file='i_am_hiding_stuff.txt'  
  
i=1  
while read line; do  
  
string=$line
substr="8080"



if [[ $string == *"$substr"* ]];
then
	
	echo "Line No. $i --> $line" 
	
	
fi

i=$((i+1))  
done < $file 
