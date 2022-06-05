#! /bin/bash

line_count=0

while read p;
do
	line_count=$((line_count+1))
	for ch in $p;
	do
		if [[ $ch =~ [0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9] ]]
		then
		echo "Found required number:"
		echo $ch
		echo "Line Number:"
		echo $line_count
		fi
	done
done <../../i_am_hiding_stuff.txt
