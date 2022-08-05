#!/bin/bash
to_find="hackIT{"
read -r find_in < ../i_am_hiding_stuff.txt
i=1
while read -r find_in
    do 
    if [[ "$find_in" == *"$to_find"* ]]
    then
        echo "Line $i"
            for k in $find_in
            do
            if [[ "$k" == *"$to_find"* ]]
            then 
            echo $k
            fi
        done
        break
    fi
    ((i++))
done<../i_am_hiding_stuff.txt 