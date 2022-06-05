count=0
flag=0

while read line
do
    for (( i=0; i<${#line} ; i++));
    do
        if [[ ${line} =~ [[:digit:]]{10} ]]
        then

            echo "$line"
            break
        fi
    done


done < "${1:-/dev/stdin}"
