#! /bin/bash

line_count=0

while read line;
do
	line_count=$((line_count+1))
	#echo $line_count
	for str in $line;
	do
		if [[ $str == *"8080"* ]]
		then
		echo "Link is: $str "
		echo "Line Number: $line_count"
		fi
	done
done < ../i_am_hiding_stuff.txt

