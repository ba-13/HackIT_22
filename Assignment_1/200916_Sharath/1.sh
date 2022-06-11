#! /bin/bash

count=1
str="HACK"
read -r variableName < ../i_am_hiding_stuff.txt
while read -r variableName;
    do
    if [[ "$variableName" =~ .*"$str".* ]];
    then
        echo "Line $count"
        break
    fi
    count=$((count+1))
done<../i_am_hiding_stuff.txt