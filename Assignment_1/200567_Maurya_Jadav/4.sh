#! /bin/bash
inputfile=$1
lcount=1
if [ -f $inputfile ]; then
    while IFS= read -r line; do
        for i in $line; do
            if [[ $i =~ "hackIT{" ]]; then
                echo -n "the string is: "
                echo "$i"
                echo -n "line number: "
                echo $lcount
                break
            fi
        done
        lcount=$((lcount + 1))
    done <$inputfile
else
    echo "file doesn't exist"
fi
