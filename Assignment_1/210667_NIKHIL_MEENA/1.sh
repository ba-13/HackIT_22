#! /bin/bash
arr='../i_am_hiding_stuff.txt'
while IFS= read -r line
do
	if [[ "$line" =~ 'HACK' ]]
	then
		echo 'string -'$line
		echo 'line - '$(( i+1 ))
	fi
	i=$((i+1))
done < $arr
