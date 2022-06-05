#!/bin/bash  
  
file='i_am_hiding_stuff.txt'  
  
i=1
substr="hackIT"
  
while read line; do  

string=$line

if [[ $string == *"$substr"* ]];
then
	
	echo "Line No. $i --> $line" 
	echo $string | cut -d "{" -f2 | cut -d "}" -f1
	
fi

i=$((i+1))  
done < $file 
