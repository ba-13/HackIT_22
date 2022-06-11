#!/bin/bash
count=0
flag=0

while read line
do
    for (( i=0; i<${#line} ; i++));
    do

        if [[ ${line:$i:4} == "HACK" ]]
        then
            flag=$(( flag+1 ))
        fi

        if [[ $flag == 1 ]]
        then
            echo "$line"
            break
        fi
    done

    count=$(( count+1 ))

    if [[ $flag == 1 ]]
    then
        break
    fi

done < "${1:-/dev/stdin}"

echo $count
