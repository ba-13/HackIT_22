#!/bin/bash  

i=1
SUB='hackIT'
while read line; do
for word in $line; do
    if [[ "$word" == *"$SUB"* ]]; then
        echo "$word"
        echo "Line No. $i"
    fi
done
i=$((i+1))  
done < i_am_hiding_stuff.txt