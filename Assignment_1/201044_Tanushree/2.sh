#!/bin/bash

# to_find="HACK"
read -r find_in < ../i_am_hiding_stuff.txt
i=1
while read -r find_in
    do 
    if [[ "$find_in" =~ .*[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9].* ]]
    then
        echo "Line $i"
        for k in $find_in
            do
            if [[ "$k" =~ .*[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9].* ]]
            then 
            echo $k
            fi
        done
        break
    fi
    ((i++))
done<../i_am_hiding_stuff.txt 