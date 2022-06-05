#! /bin/bash

line_count=0

while read p;
do
	#echo "$p"
	line_count=$((line_count+1))
	#echo $line_count
	for ch in $p;
	do
		#echo $ch
		if [[ $ch == *"HACK"* ]];
		then
		echo "Found \"Hack\" in the line : "
		echo $p
		echo "At the line number- "
		echo $line_count
		fi
	done
done < ../../i_am_hiding_stuff.txt


