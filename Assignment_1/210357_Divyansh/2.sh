while read line 
do 
        if[[ $line == *"0123456789 "* ]] 
        then
                echo "found at line = $line"
        fi
done < file1.txt