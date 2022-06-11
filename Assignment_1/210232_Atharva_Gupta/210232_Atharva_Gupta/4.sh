#! /bin/bash

line_count=0;

while read line;
do
	line_count=$((line_count+1))
	for ch in $line;
	do
		if [[ $ch == *"hackIT{"* ]]
		then
		echo "Required sting is: $ch"
		echo "Present at line number: $line_count"
		fi
	done
done <../../i_am_hiding_stuff.txt

