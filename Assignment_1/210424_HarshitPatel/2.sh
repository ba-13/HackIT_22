#!/bin/bash  

i=1
while read line; do
for word in $line; do
    if [[ $word =~ [0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9] ]]; then
        echo "$word"
        echo "Line No. $i"
    fi
done
i=$((i+1))  
done < i_am_hiding_stuff.txt