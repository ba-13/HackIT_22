#! /bin/bash

count=1
read -r variableName < ../i_am_hiding_stuff.txt
while read -r variableName;
    do
    if [[ "$variableName" =~ .*[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9].* ]]
    then
        echo "Line $count"
        for ch in $variableName
        do
            if [[ "$ch" =~ .*[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9].* ]]
            then
                echo "$ch"
                break
            fi
        done
        break
    fi
    count=$((count+1))
done<../i_am_hiding_stuff.txt