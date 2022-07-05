#!/bin/bash

to_find="HACK"
read -r find_in < ../i_am_hiding_stuff.txt
i=1
while read -r find_in
    do 
    if [[ "$find_in" == *"$to_find"* ]]
    then
        echo "Line $i"
        break
    fi
    ((i++))
done<../i_am_hiding_stuff.txt 