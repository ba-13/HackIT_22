while read line
do
    for (( i=0; i<${#line} ; i++));
    do
        if [[ ${line} =~ '8080' ]]
        then

            echo "$line"
            break
        fi
    done


done < "${1:-/dev/stdin}"
