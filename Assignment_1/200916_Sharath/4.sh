#! /bin/bash

count=1
str="hackIT"
read -r variableName < ../i_am_hiding_stuff.txt
while read -r variableName;
    do
    if [[ "$variableName" =~ .*"$str".* ]]
    then
        echo "Line $count"
        for ch in $variableName
        do
            if [[ "$ch" =~ .*"$str".* ]]
            then
                echo "$ch"
                break
            fi
        done
        break
    fi
    count=$((count+1))
done<../i_am_hiding_stuff.txt